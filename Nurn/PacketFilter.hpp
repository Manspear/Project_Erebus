#pragma once

#include "PacketQueue.hpp"
#include "PacketEnums.hpp"
#include "TransformPacket.hpp"
#include "MetaDataPacket.hpp"

class PacketFilter
{
private:
	PacketQueue<TransformPacket> *transformQueue;

public:
	PacketFilter();
	virtual ~PacketFilter();

	void openNetPacket(unsigned char * memoryPointer);
	PacketQueue<TransformPacket>* getTransformQueue();
};