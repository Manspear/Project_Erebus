#pragma once

#include <iostream>
namespace Packet
{
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
}