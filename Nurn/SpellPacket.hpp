#pragma once

#include <iostream>
namespace Packet
{
	union SpellPacket
	{
		struct SpellPacketStruct
		{
			uint16_t ID;
			uint16_t currentSpell;
			bool chargeSpell;
			bool cast;
			float dirX;
			float dirY;
			float dirZ;
		}data;

		SpellPacket()
		{
		}

		SpellPacket(const uint16_t &ID, const uint16_t &currentSpell, const bool &chargeSpell, const bool &cast, const float &dirX, const float &dirY, const float &dirZ)
		{
			data.ID = ID;
			data.currentSpell = currentSpell;
			data.chargeSpell = chargeSpell;
			data.cast = cast;
			data.dirX = dirX;
			data.dirY = dirY;
			data.dirZ = dirZ;
		}

		unsigned char bytes[sizeof(SpellPacketStruct)];
	};
}