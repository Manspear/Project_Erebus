#pragma once

#include <iostream>

union AnimationPacket
{
	struct AnimationPacketStruct
	{
		uint16_t ID;
	}data;

	AnimationPacket()
	{
	}

	AnimationPacket(const uint16_t &ID)
	{
		data.ID = ID;
	}

	unsigned char bytes[sizeof(AnimationPacketStruct)];
};