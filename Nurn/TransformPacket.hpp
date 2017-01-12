#pragma once

#include <iostream>

union TransformPacket
{
	struct TransformPacketStruct
	{
		int16_t ID;
		float x;
		float y;
		float z;
	}data;

	TransformPacket()
	{

	}

	unsigned char bytes[sizeof(TransformPacketStruct)];
};