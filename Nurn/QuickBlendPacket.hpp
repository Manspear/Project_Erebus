#pragma once

#include <iostream>
namespace Packet
{
	union QuickBlendPacket
	{
		struct QuickBlendPacketStruct
		{
			uint16_t quickBlendFrom;
			uint16_t quickBlendTo;
			uint16_t damagedMaxTime;
			uint16_t quickBlendSegment;
		} data;

		QuickBlendPacket()
		{
			//Used in combination with memcpy
		}

		QuickBlendPacket(const uint16_t& quickBlendFrom, const uint16_t& quickBlendTo, const uint16_t& damagedMaxTime, const uint16_t& quickBlendSegment)
		{
			data.quickBlendFrom = quickBlendFrom;
			data.quickBlendTo = quickBlendTo;
			data.damagedMaxTime = damagedMaxTime;
			data.quickBlendSegment = quickBlendSegment;
		}

		unsigned char bytes[sizeof(QuickBlendPacketStruct)];
	};
}