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

	// Add handling for stop adding packets if the allowed size is overridden.
	// Add all the packets of a certain type and keep track of how many bytes are added.

	this->addTransformPackets(this->currentNetPacketSize);

	// this->actualSize should now point at where next MetaDataPacket is to be added.
	// Add the rest of the packets here

	memcpy(this->memory, &this->currentNetPacketSize, sizeof(uint16_t));
}

void Packager::addTransformPackets(uint16_t &netPacketSize)
{
	//Grab and add all the transformpackets in a loop before adding the MetaDataPacket

	TransformPacket transformPacket;
	uint16_t sizeOfTransformPackets = 0;

	while(this->transformQueue->pop(transformPacket))
	{
		memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket) + sizeOfTransformPackets, &transformPacket, sizeof(TransformPacket));
		sizeOfTransformPackets += sizeof(TransformPacket);
	}

	this->addMetaDataPacket(TRANSFORM_PACKET, netPacketSize, sizeOfTransformPackets);

	netPacketSize += sizeOfTransformPackets; // Should now point at the location of the next MetaDataPacket
}

void Packager::addMetaDataPacket(uint16_t type, uint16_t &netPacketSize, uint16_t sizeInBytes)
{
	memcpy(this->memory + netPacketSize, &MetaDataPacket(type, sizeInBytes), sizeof(MetaDataPacket));

	netPacketSize += sizeof(MetaDataPacket);
}

void Packager::buildTransformPacket(const uint16_t &ID, const float &x, const float &y, const float &z)
{
	this->transformQueue->push(TransformPacket(ID, x, y, z));
}
