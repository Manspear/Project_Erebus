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

	while(bytesRead != bytesLeft)
	{
		// for each metaDataPacket, do... (Not an actual for loop)		

		memcpy(&m_result, memoryPointer + bytesRead, sizeof(MetaDataPacket)); //Grab MetaData
		bytesRead += sizeof(MetaDataPacket);

		switch (m_result.metaData.type)
		{
			case PACKET_TYPE::TRANSFORM:
				memcpy(&p_result, memoryPointer + bytesRead, sizeof(TransformPacket)); //Grab TransformPacket
				// push data packet to the correct queue
				break;
			default:
				printf("What the fuck is this?!\n");
		}

		bytesRead += m_result.metaData.sizeInBytes;

		//printf("Bytes read: %d\n", bytesRead);
	}

	printf("%d, %d, %d\n\n", sizeof(bytesLeft), m_result.metaData.sizeInBytes, p_result.data.ID);
}