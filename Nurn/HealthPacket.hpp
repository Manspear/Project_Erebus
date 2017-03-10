#pragma once

#include <iostream>
namespace Packet
{
	union HealthPacket
	{
		struct HealthPacketStruct
		{
			uint16_t transformID;
			uint16_t health;
		}data;

		HealthPacket()
		{
		}

		HealthPacket(const uint16_t& transformID, const uint16_t& health)
		{
			data.transformID = transformID;
			data.health = health;
		}

		unsigned char bytes[sizeof(HealthPacketStruct)];
	};
}