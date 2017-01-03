#include "Packager.hpp"

Packager::Packager()
{
	this->memoryPointer = this->memory;
}

Packager::~Packager()
{

}

unsigned char* Packager::getPacketPointer()
{
	return this->memoryPointer;
}

void Packager::buildPacket()
{
	// Optimera detta så att vi inte behöver kopiera värderna
	uint8_t test = 7;
	MetaDataPacket m(PACKET_TYPE::TRANSFORM);
	m.metaData.sizeInBytes = 70;
	TransformPacket t;
	t.data.ID = 13;

	uint8_t size = sizeof(m);

	memcpy(this->memory, &test, sizeof(test)); //uint8_t
	memcpy(this->memory + sizeof(test), &m, sizeof(m)); //Metadata
	memcpy(this->memory + sizeof(test) + sizeof(m), &t, sizeof(t)); //Transform


	uint8_t result;
	TransformPacket p_result;
	MetaDataPacket m_result;
	memcpy(&p_result, this->memory + sizeof(result) + sizeof(m_result), sizeof(p_result)); //Grab TransformPacket
	memcpy(&m_result, this->memory + sizeof(result), sizeof(m_result)); //Grab MetaData
	memcpy(&result, &this->memory, sizeof(result)); //Grab uint8_t

	printf("%d, %d, %d\n", result, m_result.metaData.sizeInBytes, p_result.data.ID);

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