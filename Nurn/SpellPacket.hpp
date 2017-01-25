#pragma once

#include <iostream>

union SpellPacket
{
	struct SpellPacketStruct
	{
		uint16_t ID;
	}data;

	SpellPacket()
	{
	}

	SpellPacket(const uint16_t &ID)
	{
		data.ID = ID;
	}

	unsigned char bytes[sizeof(SpellPacketStruct)];
};