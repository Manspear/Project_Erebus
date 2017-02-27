#pragma once

#include <iostream>

union DashPacket
{
	struct DashPacketStruct
	{
		bool isDashing;
	}data;

	DashPacket()
	{
	}

	DashPacket(const bool& isDashing)
	{
		data.isDashing = isDashing;
	}

	unsigned char bytes[sizeof(DashPacketStruct)];
};