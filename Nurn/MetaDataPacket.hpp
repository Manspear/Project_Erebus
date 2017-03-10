#pragma once
namespace Packet
{
	union MetaDataPacket
	{
		struct MetaDataPacketStruct
		{
			uint16_t packetType; // What kind of packets are included in the group
			uint16_t sizeInBytes; // The size of the packet group
		} metaData;

		MetaDataPacket()
		{
			//Used in combination with memcpy
		}

		MetaDataPacket(const uint16_t& packetType, const uint16_t& sizeInBytes)
		{
			metaData.packetType = packetType;
			metaData.sizeInBytes = sizeInBytes;
		}

		unsigned char bytes[sizeof(MetaDataPacketStruct)];
	};
}