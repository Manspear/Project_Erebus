#pragma once

#include <iostream>
namespace Packet
{
	union DamagePacket
	{
		struct DamagePacketStruct
		{
			uint16_t transformID;
			float damage;
			uint8_t element;
		}data;

		DamagePacket()
		{
		}

		DamagePacket(const uint16_t &transformID, const float &damage, const uint8_t &element)
		{
			data.transformID = transformID;
			data.damage = damage;
			data.element = element;
		}

		unsigned char bytes[sizeof(DamagePacketStruct)];
	};
}