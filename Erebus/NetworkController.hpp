#pragma once

#include "Nurn.hpp"
#include "PerformanceCounter.h"
#include <thread>

class NetworkController
{
public:
	NetworkController();
	virtual ~NetworkController();
	// Returns true on success, false for failure to initialize
	bool initNetworkAsHost();
	// Returns true on success, false for failure to initialize
	bool initNetworkAsClient(uint8_t ip1, uint8_t ip2, uint8_t ip3, uint8_t ip4);
	void shutdown();
	void acceptNetworkCommunication();
	void startCommunicationThreads(PerformanceCounter * counter);

	void setNetworkHost(const bool& networkHost);
	bool getNetworkHost();

	void sendTransformPacket(const uint32_t& id, const float& pos_x, const float& pos_y, const float& pos_z, const float& dir_x, const float& dir_y, const float& dir_z, const float& rotation_x, const float& rotation_y, const float& rotation_z);
	bool fetchTransformPacket(TransformPacket &packet);
	
private:
	void startNetworkSending();
	void startNetworkReceiving();
	Nurn::NurnEngine network;
	std::thread sendingThread;
	std::thread receiveThread;
	bool running;
	bool networkHost;
	PerformanceCounter * counter;
	double sendFrequency; // Time between packages
	double recFrequency; // Time between packages
};