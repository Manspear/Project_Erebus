#pragma once

#include "PacketEnums.hpp"
#include "PacketQueue.hpp"
#include "TransformPacket.hpp"
#include "MetaDataPacket.hpp"

#define packetSize 1400

class Packager
{
public:
	Packager();
	virtual ~Packager();

	unsigned char * getPacketPointer();
	uint16_t getCurrentNetPacketSize() const;

	void buildNetPacket(); // Call in 
	void buildTransformPacket(const uint16_t &ID, const float& pos_x, const float& pos_y, const float& pos_z, const float& lookAt_x, const float& lookAt_y, const float& lookAt_z, const float& rotation_x, const float& rotation_y, const float& rotation_z);

private:
	unsigned char memory[packetSize];

	PacketQueue<TransformPacket> * transformQueue;
	uint16_t currentNetPacketSize;

	//void addPacketGroup(uint16_t packetType, void * packet, void * queue, uint16_t &netPacketSize);

	void addTransformPackets(uint16_t &netPacketSize);
	void addMetaDataPacket(uint16_t type, uint16_t &netPacketSize, uint16_t sizeInBytes); // After a group of packets have been added the MetaData is added.

};