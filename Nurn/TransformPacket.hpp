#pragma once

#include <iostream>

union TransformPacket
{
	struct TransformPacketStruct
	{
		int16_t ID;
	}data;

	TransformPacket()
	{

	}

	unsigned char bytes[sizeof(TransformPacketStruct)];
};