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

	void setNetWorkHost(const bool& networkHost);
	bool getNetWorkHost();

	void sendTransformPacket(const uint32_t& id, const float& x, const float& y, const float& z);
	bool fetchTransformPacket(TransformPacket &packet);
	
private:
	void startNetworkSending();
	void startNetworkReceiving();
	Nurn::NurnEngine network;
	std::thread sendingThread;
	std::thread receiveThread;
	bool running;
	bool networkHost;
};