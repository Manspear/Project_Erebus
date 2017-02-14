#pragma once

#include <iostream>

class DebugNetwork
{

public:
	// The functions will probably be rewritten soon ;)

	DebugNetwork();
	~DebugNetwork();

	uint8_t getPing() const;
	void getMaxSizeOfQueue();

	// Queue as parameter? Uneccessary to have a "getQueue()"?
	void getDropRateOfPackets();	
	void getNumberOfDroppedPackets();

	void getNumberOfPacketsSent();
	void getNumberOfPacketsReceived();

	void writePacketInfoToFile();

private:
	uint8_t ping;


};