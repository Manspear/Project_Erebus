#include "Packager.hpp"

Packager::Packager()
{
	this->transformQueue = new PacketQueue<TransformPacket>(20);
}

Packager::~Packager()
{
	if (this->transformQueue)
	{
		delete this->transformQueue;
		transformQueue = 0;
	}
}

unsigned char * Packager::getPacketPointer()
{
	return (unsigned char*)this->memory;
}

uint16_t Packager::getCurrentNetPacketSize() const
{
	return this->currentNetPacketSize;
}

void Packager::buildNetPacket()
{
	this->currentNetPacketSize = sizeof(uint16_t);

	this->addTransformPackets(this->currentNetPacketSize);
	
	//this->addPacketGroup(TRANSFORM_PACKET, TransformPacket(), packetQueue, this->currentNetPacketSize);

	// this->currentNetPacketSize should now point at where next MetaDataPacket is to be added.
	// Add the rest of the packets here


	// Add the size of the netpacket at the start
	memcpy(this->memory, &this->currentNetPacketSize, sizeof(uint16_t));
}

void Packager::buildTransformPacket(const uint16_t &ID, const float &x, const float &y, const float &z)
{
	this->transformQueue->push(TransformPacket(ID, x, y, z));
}

/*void Packager::addPacketGroup(uint16_t packetType, void * packet, void * queue, uint16_t &netPacketSize)
{
	//Grab and add all the transformpackets in a loop before adding the MetaDataPacket
	TransformPacket transformPacket;
	uint16_t sizeOfPacketGroup= 0;
	bool breakLoop = false;
	
	while (this->transformQueue->pop(transformPacket) || breakLoop == false)
	{
		// Only add a packet if there's enough space for another Packet in the buffer
		
		if ((netPacketSize + sizeof(MetaDataPacket) + sizeOfPacketGroup - sizeof(packet)) <= packetSize)
		{
			// Add TransformPacket to the memory ( ...[MetaData][Transform][Transform]... )
			memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket) + sizeOfPacketGroup, &transformPacket, sizeof(packet));
			sizeOfPacketGroup += sizeof(packet);
		}
		else
		{
			breakLoop = true;
		}
	}

	this->addMetaDataPacket(packetType, netPacketSize, sizeOfPacketGroup);

	netPacketSize += sizeOfPacketGroup; // Should now point at the location of the next MetaDataPacket
}*/

void Packager::addTransformPackets(uint16_t &netPacketSize)
{
	//Grab and add all the transformpackets in a loop before adding the MetaDataPacket
	TransformPacket transformPacket;
	uint16_t sizeOfTransformPackets = 0;
	bool breakLoop = false;

	while (this->transformQueue->pop(transformPacket) && breakLoop == false)
	{
		// Only add a packet if there's enough space for another TransformPacket in the buffer
		if ((packetSize - (netPacketSize + sizeof(MetaDataPacket) + sizeOfTransformPackets)) >= sizeof(TransformPacket))
		{
			// Add TransformPacket to the memory ( ...[MetaData][Transform][Transform]... )
			memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket) + sizeOfTransformPackets, &transformPacket, sizeof(TransformPacket));
			sizeOfTransformPackets += sizeof(TransformPacket);
		}
		else
		{
			breakLoop = true;
		}
	}

	this->addMetaDataPacket(TRANSFORM_PACKET, netPacketSize, sizeOfTransformPackets);

	netPacketSize += sizeOfTransformPackets; // Should now point at the location of the next MetaDataPacket
}

void Packager::addMetaDataPacket(uint16_t type, uint16_t &netPacketSize, uint16_t sizeInBytes)
{
	memcpy(this->memory + netPacketSize, &MetaDataPacket(type, sizeInBytes), sizeof(MetaDataPacket));

	netPacketSize += sizeof(MetaDataPacket);
}
