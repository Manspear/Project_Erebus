#pragma once

#include <iostream>
#include <atomic>

#include "PingPacket.hpp"

class DebugNetwork
{

public:
	// The functions will probably be rewritten soon ;)

	DebugNetwork();
	virtual ~DebugNetwork();

	void initializeDebugNetwork(uint8_t loopNumber, bool timeToSendPingPacket);

	PingPacket& getPingPacket();
	void setTimeToSendPingPacket(bool timeToSendPingPacket);
	bool getTimeToSendPingPacket() const;


	void getMaxSizeOfQueue();

	// Queue as parameter? Uneccessary to have a "getQueue()"?
	void getDropRateOfPackets();	
	void getNumberOfDroppedPackets();

	void getNumberOfPacketsSent();
	void getNumberOfPacketsReceived();

	void writePacketInfoToFile();

private:
	PingPacket pingPacket;
	std::atomic<bool> timeToSendPingPacket;
};