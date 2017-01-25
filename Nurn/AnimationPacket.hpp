#pragma once

#include <iostream>

union AnimationPacket
{
	struct AnimationPacketStruct
	{
		uint16_t id;
		uint16_t animationState;
		float dt;
		uint16_t animationSegmentID;
	}data;

	AnimationPacket()
	{
	}

	AnimationPacket(const uint16_t& id, const uint16_t& animationState, const float& dt, const uint16_t& animationSegmentID)
	{
		data.id = id;
		data.animationState = animationState;
		data.dt = dt;
		data.animationSegmentID = animationSegmentID;
	}

	unsigned char bytes[sizeof(AnimationPacketStruct)];
};