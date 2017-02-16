#pragma once

#include <iostream>

union DashPacket
{
	struct DashPacketStruct
	{
		uint8_t setScaleValue;
		bool invulnerable;
	}data;

	DashPacket()
	{
	}

	DashPacket(const uint8_t& setScaleValue, const bool& invulnerable)
	{
		data.setScaleValue = setScaleValue;
		data.invulnerable = invulnerable;
	}

	unsigned char bytes[sizeof(DashPacketStruct)];
};