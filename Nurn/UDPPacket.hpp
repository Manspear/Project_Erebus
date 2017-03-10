#pragma once

#include <iostream>
namespace Packet
{
	union UDPPacket
	{
		struct UDPPacketStruct
		{
			int16_t sequenceNumber;
			int16_t ACK;
		}data;

		UDPPacket()
		{

		}

		unsigned char bytes[sizeof(UDPPacketStruct)];
	};
}