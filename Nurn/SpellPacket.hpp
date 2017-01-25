#pragma once

#include <iostream>

union SpellPacket
{
	struct SpellPacketStruct
	{
		uint16_t ID;
		uint16_t currentSpell;

	}data;

	SpellPacket()
	{
	}

	SpellPacket(const uint16_t &ID, const uint16_t &currentSpell)
	{
		data.ID = ID;
		data.currentSpell = currentSpell;
	}

	unsigned char bytes[sizeof(SpellPacketStruct)];
};