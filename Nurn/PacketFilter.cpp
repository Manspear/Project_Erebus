#include "PacketFilter.hpp"

PacketFilter::PacketFilter()
{

}

PacketFilter::~PacketFilter()
{

}

void PacketFilter::openPacket(unsigned char * memoryPointer)
{
	//Open packet
	TransformPacket p_result;
	MetaDataPacket m_result;

	uint16_t bytesLeft;
	uint16_t bytesRead = sizeof(uint16_t); // The first 2 bytes are read immideately.
	memcpy(&bytesLeft, memoryPointer, sizeof(bytesLeft)); // The number of bytes to read.

	while(bytesRead < bytesLeft)
	{
		// For each metaDataPacket, do...		
		memcpy(&m_result, memoryPointer + bytesRead, sizeof(MetaDataPacket)); //Grab MetaData
		bytesRead += sizeof(MetaDataPacket);

		switch (m_result.metaData.type)
		{
			case PACKET_TYPE::TRANSFORM:
				// Create an array with the size m_result.medaData.sizeInBytes or 
				// run a couple of tests and see how much size is needed at most and hard code the array.
				memcpy(&p_result, memoryPointer + bytesRead, m_result.metaData.sizeInBytes); //Grab TransformPackets
				// Push data packet to the correct queue
				break;
			default:
				printf("What the fuck is this?!\n");
		}

		bytesRead += m_result.metaData.sizeInBytes;

		//printf("Bytes read: %d\n", bytesRead);
	}

	printf("%d, %d, %d\n\n", sizeof(bytesLeft), m_result.metaData.sizeInBytes, p_result.data.ID);
}