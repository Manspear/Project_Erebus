#pragma once

#include <iostream>

union PingPacket
{
	struct PingPacketStruct
	{
		uint8_t loopNumber;
	}data;

	PingPacket()
	{
	}

	PingPacket(const uint8_t& loopNumber)
	{
		data.loopNumber = loopNumber;
	}

	unsigned char bytes[sizeof(PingPacketStruct)];
};