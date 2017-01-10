#include "Packager.hpp"

Packager::Packager()
{
}

Packager::~Packager()
{
}

unsigned char* Packager::getPacketPointer()
{
	return (unsigned char*)this->memory;
}

void Packager::buildPacket()
{
	/*MetaDataPacket m(PACKET_TYPE::TRANSFORM);
	TransformPacket t;
	t.data.ID = 13;

	m.metaData.sizeInBytes = sizeof(t);

	this->actualSize = sizeof(m) + sizeof(t) + sizeof(uint16_t);

	memcpy(this->memory, &this->actualSize, sizeof(this->actualSize)); //uint16_t
	memcpy(this->memory + sizeof(this->actualSize) + sizeof(m), &t, sizeof(t)); //Transform
	memcpy(this->memory + sizeof(this->actualSize), &m, sizeof(m)); //Metadata*/

	this->actualSize = sizeof(uint16_t);
	uint8_t maximumNumberOfPackets = 2;
	uint8_t numberOfPacketsInThePacket = 0;

	// this->actualSize < packetSize
	while (numberOfPacketsInThePacket < maximumNumberOfPackets)
	{
		this->actualSize += sizeof(MetaDataPacket); // Jump forward to where the datapackets, which the MetaData describes, are located.
		
		// Add handling for stop adding packets if the allowed size is overridden.
		// Add all the packets of a certain type and keep track of how many bytes are added.

		this->addTransformPackets();
		numberOfPacketsInThePacket += 2;

		// this->actualSize should now point at where next MetaDataPacket is to be added.
		// Add the rest of the packets here
	}

	memcpy(this->memory, &this->actualSize, sizeof(uint16_t));
}

void Packager::addTransformPackets()
{
	//Grab and add all the transformpackets in a loop before adding the MetaDataPacket
	uint16_t sizeInBytes = 0;
	uint16_t locationOfMetaData = this->actualSize - sizeof(MetaDataPacket);

	TransformPacket t;
	t.data.ID = 13; //Var hämtas alla ID:n?

	memcpy(this->memory + this->actualSize + sizeInBytes, &t, sizeof(TransformPacket));
	sizeInBytes += sizeof(TransformPacket);

	this->addMetaDataPacket(PACKET_TYPE::TRANSFORM, locationOfMetaData, sizeInBytes);

	this->actualSize += sizeInBytes; // Should now point at the location of the next MetaDataPacket
}

void Packager::addMetaDataPacket(PACKET_TYPE type, uint16_t locationOfMetaData, uint16_t sizeInBytes)
{
	MetaDataPacket m(type);
	m.metaData.sizeInBytes = sizeInBytes;

	memcpy(this->memory + locationOfMetaData, &m, sizeof(MetaDataPacket));
}

uint16_t Packager::getActualSize() const
{
	return this->actualSize;
}