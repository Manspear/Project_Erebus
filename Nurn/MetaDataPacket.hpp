#pragma once

#include "PacketEnums.hpp"

union MetaDataPacket
{
	struct MetaDataPacketStruct
	{
		PACKET_TYPE type;
		uint16_t sizeInBytes;
	}metaData;

	MetaDataPacket()
	{
		//Used in combination with memcpy
	}

	MetaDataPacket(PACKET_TYPE type)
	{
		metaData.type = type;
	}

	MetaDataPacket(PACKET_TYPE type, uint16_t sizeInBytes)
	{
		metaData.type = type;
		metaData.sizeInBytes = sizeInBytes;
	}

	unsigned char bytes[sizeof(MetaDataPacketStruct)];
};