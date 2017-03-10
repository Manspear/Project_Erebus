#pragma once

#include <iostream>
namespace Packet
{
	union AIStatePacket
	{
		struct AIStatePacketStruct
		{
			uint16_t transformID;
			uint16_t aiState;
		}data;

		AIStatePacket()
		{
		}

		AIStatePacket(const uint16_t& transformID, const uint16_t& aiState)
		{
			data.transformID = transformID;
			data.aiState = aiState;
		}

		unsigned char bytes[sizeof(AIStatePacketStruct)];
	};
}