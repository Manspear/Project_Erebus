#pragma once

#include <iostream>

union ChargingPacket
{
	struct ChargingPacketStruct
	{
		uint16_t ID;
		float damage;

	}data;

	ChargingPacket()
	{
	}

	ChargingPacket(const uint16_t &ID, const uint16_t &damage)
	{
		data.ID = ID;
		data.damage = damage;
	}

	unsigned char bytes[sizeof(ChargingPacketStruct)];
};