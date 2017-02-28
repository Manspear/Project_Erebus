#pragma once

#include <iostream>

union ChargingPacket
{
	struct ChargingPacketStruct
	{
		uint16_t ID;
		uint16_t damage;
		uint16_t spellListIndex;
		bool activateCombineRay;

	}data;

	ChargingPacket()
	{
	}

	ChargingPacket(const uint16_t &ID, const uint16_t &damage, const uint16_t &spellListIndex, const bool& activateCombineRay)
	{
		data.ID = ID;
		data.damage = damage;
		data.spellListIndex = spellListIndex;
		data.activateCombineRay = activateCombineRay;
	}

	unsigned char bytes[sizeof(ChargingPacketStruct)];
};