#pragma once

//#include "PacketQueue.hpp"
#include "TransformPacket.hpp"
#include "MetaDataPacket.hpp"
#include "NetworkDefines.hpp"

#define packetSize 1400

class NURN_API Packager
{
private:
	unsigned char memory[packetSize];
	uint16_t actualSize;

	void addTransformPackets();
	void addMetaDataPacket(PACKET_TYPE type, uint16_t locationOfMetaData, uint16_t sizeInBytes); // After a group of packets have been added the MetaData is added.

public:
	Packager();
	~Packager();

	unsigned char * getPacketPointer();
	uint16_t getActualSize() const;

	void buildPacket();


};