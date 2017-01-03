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
	unsigned char * memoryPointer;

public:
	Packager();
	~Packager();

	// Get the pointers to the queues
	unsigned char * getPacketPointer();

	void buildPacket(); // Build and full the packet with data.
	void addDataPacket(); // Adds all the Transformpackets etc to the packet array. 
	void addMetaDataPacket(); // After a group of, for instance, TransformPackets have been added the MetaData is added.
	void addSizePacket(); // Shows the size of all the data packets combined. Add only once and after the entire packet is complete. 

};