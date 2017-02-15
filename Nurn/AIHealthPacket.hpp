#pragma once

#include <iostream>

union AIHealthPacket
{
	struct AIHealthPacketStruct
	{
		uint16_t transformID;
		uint16_t health;
	}data;

	AIHealthPacket()
	{
	}

	AIHealthPacket(const uint16_t& transformID, const uint16_t& health)
	{
		data.transformID = transformID;
		data.health = health;
	}

	unsigned char bytes[sizeof(AIHealthPacketStruct)];
};