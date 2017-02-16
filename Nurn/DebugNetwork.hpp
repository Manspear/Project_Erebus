#pragma once

#include <iostream>
#include <atomic>
#include <chrono>

#include "PingPacket.hpp"

class DebugNetwork
{

public:
	// The functions will probably be rewritten soon ;)

	DebugNetwork();
	virtual ~DebugNetwork();

	void initializeDebugNetwork(uint8_t loopNumber, bool sendPingPacket);

	PingPacket& getPingPacket();
	void setSendPingPacket(bool sendPingPacket);
	bool getSendPingPacket() const;
	float getPing();


	void getMaxSizeOfQueue();

	// Queue as parameter? Uneccessary to have a "getQueue()"?
	void getDropRateOfPackets();	
	void getNumberOfDroppedPackets();

	void getNumberOfPacketsSent();
	void getNumberOfPacketsReceived();

	void writePacketInfoToFile();

	std::chrono::time_point<std::chrono::system_clock> start_time;
	std::chrono::time_point<std::chrono::system_clock> end_time;

private:
	PingPacket pingPacket;
	std::atomic<bool> sendPingPacket;
};