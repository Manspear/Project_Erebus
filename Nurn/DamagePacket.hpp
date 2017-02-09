#pragma once

#include <iostream>

union DamagePacket
{
	struct DamagePacketStruct
	{
		uint16_t transformID;
		float damage;

	}data;

	DamagePacket()
	{
	}

	DamagePacket(const uint16_t &transformID, const float &damage)
	{
		data.transformID = transformID;
		data.damage = damage;
	}

	unsigned char bytes[sizeof(DamagePacketStruct)];
};