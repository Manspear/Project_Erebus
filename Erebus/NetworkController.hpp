#pragma once

#include "Nurn.hpp"
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
	void startCommunicationThreads();

private:
	void startNetworkSending();
	void startNetworkReceiving();
	Nurn::NurnEngine network;
	std::thread sendingThread;
	std::thread receiveThread;
	bool running;
};