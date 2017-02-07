#pragma once

#include "Nurn.hpp"
#include "PerformanceCounter.h"
#include <thread>
#include <chrono>

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
	bool acceptNetworkCommunication();
	void startCommunicationThreads(PerformanceCounter& counter);

	void setNetworkHost(const bool& networkHost);
	bool getNetworkHost();

	double timeSinceLastTransformPacket();
	double timeSinceLastAnimationPacket();
	double timeSinceLastAITransformPacket();
	
	void sendTransformPacket(const TransformPacket& packet);
	bool fetchTransformPacket(TransformPacket &packet);

	void sendAnimationPacket(const AnimationPacket& packet);
	bool fetchAnimationPacket(AnimationPacket& packet);
	
	void sendAIStatePacket(const AIStatePacket& packet);
	bool fetchAIStatePacket(AIStatePacket& packet);

	void sendSpellPacket(const SpellPacket& packet);
	bool fetchSpellPacket(SpellPacket& packet);

	void sendAITransformPacket(const TransformPacket& packet);
	bool fetchAITransformPacket(TransformPacket &packet);

	void sendChargingPacket(const ChargingPacket& packet);
	bool fetchChargingPacket(ChargingPacket &packet);

	void sendQuickBlendPacket(const QuickBlendPacket& packet);
	bool fetchQuickBlendPacket(QuickBlendPacket& packet);


private:
	void startNetworkSending();
	void startNetworkReceiving();
	Nurn::NurnEngine network;
	std::thread sendingThread;
	std::thread receiveThread;
	bool initalized;
	bool running;
	bool networkHost;
	PerformanceCounter counter;
	const double sendFrequency = 0.0167; // Time between packages
	const double recFrequency = 0.0167; // Time between packages
	double transformpackTime;
	double animationpackTime;
	double aiTransformpackTime;
};