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

	uint16_t bytesRead = sizeof(uint16_t); // Start reading right after where the value of bytesLeft were located in the packet.
	uint16_t sizeOfEntirePacket =  memoryPointer[0] | memoryPointer[1] << 8; // Size of the content. The first 2 bytes are read immideately.

	while(bytesRead < sizeOfEntirePacket)
	{
		// For each metaDataPacket, do...
		PACKET_TYPE packetType;
		uint16_t sizeOfPacketTypes;

		//printf("%d, %d, %d, %d\n", sizeof(MetaDataPacket), sizeof(PACKET_TYPE), sizeof(uint16_t), sizeof(m_result.metaData));

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

	printf("%d, %d, %d\n\n", sizeOfEntirePacket, m_result.metaData.sizeInBytes, p_result.data.ID);
}