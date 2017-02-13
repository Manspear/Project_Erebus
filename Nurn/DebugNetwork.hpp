#pragma once

class DebugNetwork
{

public:
	// The functions will probably be rewritten soon ;)

	DebugNetwork();
	~DebugNetwork();

	void getPing();
	void getMaxSizeOfQueue();

	// Queue as parameter? Uneccessary to have a "getQueue()"?
	void getDropRateOfPackets();	
	void getNumberOfDroppedPackets();

	void getNumberOfPacketsSent();
	void getNumberOfPacketsReceived();

	void writePacketInfoToFile();

private:

};