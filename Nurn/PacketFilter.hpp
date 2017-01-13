#pragma once

#include "Packager.hpp"

class NURN_API PacketFilter
{
private:

public:
	PacketFilter();
	~PacketFilter();

	void openPacket(unsigned char * memoryPointer);
};