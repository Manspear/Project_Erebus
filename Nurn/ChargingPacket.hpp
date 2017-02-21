#pragma once

#include <iostream>

union ChargingPacket
{
	struct ChargingPacketStruct
	{
		uint16_t ID;
		uint16_t damage;
		uint16_t spellListIndex;

	}data;

	ChargingPacket()
	{
	}

	ChargingPacket(const uint16_t &ID, const uint16_t &damage, const uint16_t &spellListIndex)
	{
		data.ID = ID;
		data.damage = damage;
		data.spellListIndex = spellListIndex;
	}

	unsigned char bytes[sizeof(ChargingPacketStruct)];
};