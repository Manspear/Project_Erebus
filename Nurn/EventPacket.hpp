#pragma once

#include <iostream>

union EventPacket
{
	struct EventPacketStruct
	{
		uint16_t eventID;
	}data;

	EventPacket()
	{
	}

	EventPacket(const uint16_t& eventID)
	{
		data.eventID = eventID;
	}

	unsigned char bytes[sizeof(EventPacketStruct)];
};