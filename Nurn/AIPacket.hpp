#pragma once

#include <iostream>

union AIPacket
{
	struct AIPacketStruct
	{
		uint16_t ID;
	}data;

	AIPacket()
	{
	}

	AIPacket(const uint16_t &ID)
	{
		data.ID = ID;
	}

	unsigned char bytes[sizeof(AIPacketStruct)];
};