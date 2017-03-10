#pragma once

#include <iostream>
namespace Packet
{
	union AnimationPacket
	{
		struct AnimationPacketStruct
		{
			uint8_t animationState1;
			uint8_t animationState2;
		}data;

		AnimationPacket()
		{
		}

		AnimationPacket(const uint8_t& animationState1, const uint8_t& animationState2)
		{
			data.animationState1 = animationState1;
			data.animationState2 = animationState2;
		}

		unsigned char bytes[sizeof(AnimationPacketStruct)];
	};
}