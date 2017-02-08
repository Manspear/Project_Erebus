#pragma once

#include <iostream>

union DamagePacket
{
	struct DamagePacketStruct
	{
		uint16_t transformID;
		uint16_t damage;

	}data;

	DamagePacket()
	{
	}

	DamagePacket(const uint16_t &transformID, const uint16_t &damage)
	{
		data.transformID = transformID;
		data.damage = damage;
	}

	unsigned char bytes[sizeof(DamagePacketStruct)];
};