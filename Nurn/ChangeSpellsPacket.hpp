#pragma once

#include <iostream>
namespace Packet
{
	union ChangeSpellsPacket
	{
		struct ChangeSpellsPacketStruct
		{
			uint8_t spellSlot1;
			uint8_t spellSlot2;
			uint8_t spellSlot3;

		}data;

		ChangeSpellsPacket()
		{
		}

		ChangeSpellsPacket(const uint8_t &spellSlot1, const uint8_t &spellSlot2, const uint8_t &spellSlot3)
		{
			data.spellSlot1 = spellSlot1;
			data.spellSlot2 = spellSlot2;
			data.spellSlot3 = spellSlot3;
		}

		unsigned char bytes[sizeof(ChangeSpellsPacketStruct)];
	};
}