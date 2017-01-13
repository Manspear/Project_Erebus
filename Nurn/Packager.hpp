#pragma once

#include "PacketQueue.hpp"
#include "TransformPacket.hpp"
#include "MetaDataPacket.hpp"

#define packetSize 14000

class Packager
{
private:
	unsigned char memory[packetSize];

	PacketQueue<TransformPacket> *transformQueue;
	uint16_t currentNetPacketSize;

	void addTransformPackets(uint16_t &netPacketSize);
	void addMetaDataPacket(uint16_t type, uint16_t &netPacketSize, uint16_t sizeInBytes); // After a group of packets have been added the MetaData is added.

public:
	Packager();
	virtual ~Packager();

	unsigned char * getPacketPointer();
	uint16_t getCurrentNetPacketSize() const;

	void buildNetPacket();
	void buildTransformPacket(const uint16_t &ID, const float &x, const float &y, const float &z);

};