#pragma once

#include <iostream>

union AIPacket
{
	struct AIPacketStruct
	{
		uint16_t transformID;
		uint16_t aiState;
	}data;

	AIPacket()
	{
	}

	AIPacket(const uint16_t& transformID, const uint16_t& aiState)
	{
		data.transformID = transformID;
		data.aiState = aiState;
	}

	unsigned char bytes[sizeof(AIPacketStruct)];
};