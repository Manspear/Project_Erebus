#pragma once

#include <iostream>

union ChargingPacket
{
	struct ChargingPacketStruct
	{
		uint16_t ID;
		uint16_t currentSpell;
		bool charging;

	}data;

	ChargingPacket()
	{
	}

	ChargingPacket(const uint16_t &ID, const uint16_t &currentSpell, const bool &charging)
	{
		data.ID = ID;
		data.currentSpell = currentSpell;
		data.charging = charging;
	}

	unsigned char bytes[sizeof(ChargingPacketStruct)];
};