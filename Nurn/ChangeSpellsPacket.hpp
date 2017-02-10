#pragma once

#include <iostream>

union ChangeSpellPacket
{
	struct ChangeSpellPacketStruct
	{
		uint8_t spellSlot1;
		uint8_t spellSlot2;
		uint8_t spellSlot3;

	}data;

	ChangeSpellPacket()
	{
	}

	ChangeSpellPacket(const uint16_t &spellSlot1, const uint16_t &spellSlot2, const uint16_t &spellSlot3)
	{
		data.spellSlot1 = spellSlot1;
		data.spellSlot2 = spellSlot2;
		data.spellSlot3 = spellSlot3;
	}

	unsigned char bytes[sizeof(ChangeSpellPacketStruct)];
};