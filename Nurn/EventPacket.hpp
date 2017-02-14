#pragma once

#include <iostream>

union EventPacket
{
	struct EventPacketStruct
	{
		//Empty
	}data;

	EventPacket()
	{
	}

	EventPacket()
	{
	}

	unsigned char bytes[sizeof(EventPacketStruct)];
};