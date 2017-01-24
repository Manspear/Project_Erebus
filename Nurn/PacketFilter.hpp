#pragma once

#include "PacketQueue.hpp"
#include "PacketEnums.hpp"
#include "TransformPacket.hpp"
#include "AnimationPacket.hpp"
#include "MetaDataPacket.hpp"

class PacketFilter
{
public:
	PacketFilter();
	virtual ~PacketFilter();

	void openNetPacket(unsigned char * memoryPointer);
	PacketQueue<TransformPacket> * getTransformQueue();
	PacketQueue<AnimationPacket> * getAnimationQueue();

private:
	PacketQueue<TransformPacket> * transformQueue;
	PacketQueue<AnimationPacket> * animationQueue;
};