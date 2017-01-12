#include "PacketFilter.hpp"

PacketFilter::PacketFilter()
{

}

PacketFilter::~PacketFilter()
{

}

void PacketFilter::openPacket(unsigned char * memoryPointer)
{
	uint16_t bytesRead = sizeof(uint16_t); // Start reading right after where the value of bytesLeft were located in the packet.
	uint16_t sizeOfEntirePacket =  memoryPointer[0] | memoryPointer[1] << 8; // Size of the content. The first 2 bytes are read immideately.

	uint16_t sizeInBytes;

	uint16_t ID;

	while(bytesRead < sizeOfEntirePacket)
	{
		// For each metaDataPacket, do...
		
		// Get the PacketType data from MetaDataPacket
		switch ((uint16_t)(memoryPointer[bytesRead] | memoryPointer[bytesRead + 1] << 8))
		{
			case TRANSFORM_PACKET:
				sizeInBytes = (uint16_t)(memoryPointer[bytesRead + 2] | memoryPointer[bytesRead + 3] << 8);
				bytesRead += sizeof(MetaDataPacket);

				// bytesRead bytes to bytesRead+sizeInBytes bytes are supposed to put in the correct queue
				
				ID = (uint16_t)(memoryPointer[bytesRead] | memoryPointer[bytesRead + 1] << 8);
				// Add x bytes of TransformPacket data to the correct queue
				break;
			default:
				printf("What the fuck is this?!\n");
		}

		bytesRead += sizeInBytes;
	}

	printf("%d, %d, %d\n\n", sizeOfEntirePacket, sizeInBytes, ID);
}