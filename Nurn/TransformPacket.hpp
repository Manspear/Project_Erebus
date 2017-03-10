#pragma once

#include <iostream>
namespace Packet
{
	union TransformPacket
	{
		struct TransformPacketStruct
		{
			uint16_t id;
			float pos_x;
			float pos_y;
			float pos_z;
			float lookAt_x;
			float lookAt_y;
			float lookAt_z;
			float rotation_x;
			float rotation_y;
			float rotation_z;
		}data;

		TransformPacket()
		{
		}

		TransformPacket(const uint16_t& id, const float& pos_x, const float& pos_y, const float& pos_z, const float& lookAt_x, const float& lookAt_y, const float& lookAt_z, const float& rotation_x, const float& rotation_y, const float& rotation_z)
		{
			data.id = id;
			data.pos_x = pos_x;
			data.pos_y = pos_y;
			data.pos_z = pos_z;
			data.lookAt_x = lookAt_x;
			data.lookAt_y = lookAt_y;
			data.lookAt_z = lookAt_z;
			data.rotation_x = rotation_x;
			data.rotation_y = rotation_y;
			data.rotation_z = rotation_z;
		}

		unsigned char bytes[sizeof(TransformPacketStruct)];
	};
}