#pragma once

union MetaDataPacket
{
	struct MetaDataPacketStruct
	{
		uint16_t packetType;
		uint16_t sizeInBytes;
	} metaData;

	MetaDataPacket()
	{
		//Used in combination with memcpy
	}

	MetaDataPacket(uint16_t packetType)
	{
		metaData.packetType = packetType;
	}

	MetaDataPacket(uint16_t packetType, uint16_t sizeInBytes)
	{
		metaData.packetType = packetType;
		metaData.sizeInBytes = sizeInBytes;
	}

	unsigned char bytes[sizeof(MetaDataPacketStruct)];
};