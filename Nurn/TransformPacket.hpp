#pragma once

#include <iostream>

union TransformPacket
{
	struct TransformPacketStruct
	{
		uint16_t ID;
		float x;
		float y;
		float z;
	}data;

	TransformPacket()
	{
		data.x = 0;
		data.y = 0;
		data.z = 0;

	}

	TransformPacket(const uint16_t &ID, const float &x, const float &y, const float &z)
	{
		data.ID = ID;
		data.x = x;
		data.y = y;
		data.z = z;
	}

	unsigned char bytes[sizeof(TransformPacketStruct)];
};