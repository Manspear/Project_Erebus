#pragma once

#include <iostream>

union SpellPacket
{
	struct SpellPacketStruct
	{
		uint16_t ID;
		uint16_t currentSpell;
		bool chargeSpell;
		bool cast;
	}data;

	SpellPacket()
	{
	}

	SpellPacket(const uint16_t &ID, const uint16_t &currentSpell, const bool &chargeSpell, const bool &cast)
	{
		data.ID = ID;
		data.currentSpell = currentSpell;
		data.chargeSpell = chargeSpell;
		data.cast = cast;
	}

	unsigned char bytes[sizeof(SpellPacketStruct)];
};