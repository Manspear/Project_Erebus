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
	// Optimera detta så att vi inte behöver kopiera värderna
	MetaDataPacket m(PACKET_TYPE::TRANSFORM);
	TransformPacket t;
	t.data.ID = 13;

	m.metaData.sizeInBytes = sizeof(t);

	uint16_t size = sizeof(m) + sizeof(t) + sizeof(uint16_t);

	memcpy(this->memory, &size, sizeof(size)); //uint16_t
	memcpy(this->memory + sizeof(size) + sizeof(m), &t, sizeof(t)); //Transform
	memcpy(this->memory + sizeof(size), &m, sizeof(m)); //Metadata


	

	// Lägg till uint16_t på den första 2 bytsen.
	// Skicka packet

}

void Packager::addDataPacket()
{

}

void Packager::addMetaDataPacket()
{

}

void Packager::addSizePacket()
{

}