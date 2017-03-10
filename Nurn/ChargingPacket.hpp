#pragma once

#include <iostream>
namespace Packet
{
	union ChargingPacket
	{
		struct ChargingPacketStruct
		{
			uint16_t chosenSpell;
			bool activateCombineRay;

		}data;

		ChargingPacket()
		{
		}

		ChargingPacket(const uint16_t &chosenSpell, const bool& activateCombineRay)
		{
			data.chosenSpell = chosenSpell;
			data.activateCombineRay = activateCombineRay;
		}

		unsigned char bytes[sizeof(ChargingPacketStruct)];
	};
}