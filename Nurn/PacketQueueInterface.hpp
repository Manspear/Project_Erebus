#pragma once

#include <iostream>

class PacketQueueInterface
{
public:
	PacketQueueInterface() {};
	virtual ~PacketQueueInterface() {};

	virtual bool pop(void * packet) = 0;
	virtual bool push(const void * packet) = 0;
	virtual bool batchPush(const unsigned char * const memoryPointer, const uint16_t& startPoint, const uint16_t& sizeToCopy) = 0; // Push x bytes of packets to queue
	virtual size_t getPacketSize() = 0;
};