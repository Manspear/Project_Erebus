#include "PacketFilter.hpp"

PacketFilter::PacketFilter()
{
	this->transformQueue = new PacketQueue<TransformPacket>(20);
	this->animationQueue = new PacketQueue<AnimationPacket>(40);
	this->aiQueue = new PacketQueue<AIPacket>(10);
}

PacketFilter::~PacketFilter()
{
	if (this->transformQueue)
	{
		delete this->transformQueue;
		this->transformQueue = 0;
	}

	if (this->animationQueue)
	{
		delete this->animationQueue;
		this->animationQueue = 0;
	}
	if (this->aiQueue)
	{
		delete this->aiQueue;
		this->aiQueue = 0;
	}
}

void PacketFilter::openNetPacket(unsigned char * memoryPointer)
{
	uint16_t bytesRead = sizeof(uint16_t); // Start reading right after where the value of bytesLeft were located in the packet.
	uint16_t sizeOfNetPacket =  memoryPointer[0] | memoryPointer[1] << 8; // Size of the content. The first 2 bytes are read immideately.

	while(bytesRead < sizeOfNetPacket)
	{
		uint16_t sizeInBytes = 0;

		// For each metaDataPacket, do...
		
		// Get the PacketType data from MetaDataPacket
		switch ((uint16_t)(memoryPointer[bytesRead] | memoryPointer[bytesRead + 1] << 8))
		{
			case TRANSFORM_PACKET:
				sizeInBytes = (uint16_t)(memoryPointer[bytesRead + 2] | memoryPointer[bytesRead + 3] << 8);
				bytesRead += sizeof(MetaDataPacket);
				
				this->transformQueue->batchPush(memoryPointer, bytesRead, sizeInBytes); // Add x bytes of TransformPacket data to the correct queue
				break;
			case ANIMATION_PACKET:
				sizeInBytes = (uint16_t)(memoryPointer[bytesRead + 2] | memoryPointer[bytesRead + 3] << 8);
				bytesRead += sizeof(MetaDataPacket);

				this->animationQueue->batchPush(memoryPointer, bytesRead, sizeInBytes); // Add x bytes of AnimationPacket data to the correct queue
				break;

			case AI_PACKET:
				sizeInBytes = (uint16_t)(memoryPointer[bytesRead + 2] | memoryPointer[bytesRead + 3] << 8);
				bytesRead += sizeof(MetaDataPacket);

				this->aiQueue->batchPush(memoryPointer, bytesRead, sizeInBytes); // Add x bytes of AIPacket data to the correct queue
				break;
			default:
				printf("KERNEL PANIC!!\n");
		}

		bytesRead += sizeInBytes;
	}
}

PacketQueue<TransformPacket> * PacketFilter::getTransformQueue()
{
	return this->transformQueue;
}

PacketQueue<AnimationPacket> * PacketFilter::getAnimationQueue()
{
	return this->animationQueue;
}

PacketQueue<AIPacket> * PacketFilter::getAIQueue()
{
	return this->aiQueue;
}