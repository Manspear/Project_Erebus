#include "PacketFilter.hpp"

PacketFilter::PacketFilter()
{
	this->transformQueue = new PacketQueue<TransformPacket>(20);
	this->animationQueue = new PacketQueue<AnimationPacket>(40);
	this->aiQueue = new PacketQueue<AIPacket>(10);
	this->spellQueue = new PacketQueue<SpellPacket>(10);
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
	if (this->spellQueue)
	{
		delete this->spellQueue;
		this->spellQueue = 0;
	}
}

void PacketFilter::openNetPacket(const unsigned char const * memoryPointer)
{
	uint16_t bytesRead = sizeof(uint16_t); // Start reading right after where the value of bytesLeft were located in the packet.
	uint16_t sizeOfNetPacket =  memoryPointer[0] | memoryPointer[1] << 8; // Size of the content. The first 2 bytes are read immideately.
	MetaDataPacket metaDataPacket;

	while (bytesRead < sizeOfNetPacket)
	{
		memcpy(metaDataPacket.bytes, memoryPointer + bytesRead, sizeof(MetaDataPacket));
		bytesRead += sizeof(MetaDataPacket);

		// For each metaDataPacket, do...

		if (metaDataPacket.metaData.sizeInBytes > 0)
		{
			// Get the PacketType data from MetaDataPacket
			switch (metaDataPacket.metaData.packetType)
			{
				case TRANSFORM_PACKET:
					this->transformQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of TransformPacket data to the correct queue
					break;
				case ANIMATION_PACKET:
					this->animationQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of AnimationPacket data to the correct queue
					break;
				case AI_PACKET:
					this->aiQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of AIPacket data to the correct queue
					break;
				case SPELL_PACKET:
					this->spellQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of SpellPacket data to the correct queue
					break;
				default:
					printf("KERNEL PANIC!!\n");
			}
			bytesRead += metaDataPacket.metaData.sizeInBytes;
		}
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

PacketQueue<SpellPacket> * PacketFilter::getSpellQueue()
{
	return this->spellQueue;
}