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
	void acceptNetworkCommunication();
	void startCommunicationThreads(PerformanceCounter& counter);

	void setNetworkHost(const bool& networkHost);
	bool getNetworkHost();

	double timeSinceLastTransformPacket();
	double timeSinceLastAnimationPacket();
	double timeSinceLastAITransformPacket();
	
	void sendTransformPacket(const uint32_t& id, const float& pos_x, const float& pos_y, const float& pos_z, const float& lookAt_x, const float& lookAt_y, const float& lookAt_z, const float& rotation_x, const float& rotation_y, const float& rotation_z);
	bool fetchTransformPacket(TransformPacket &packet);

	void sendAnimationPacket(const uint16_t& id, const uint16_t& animationState, const float& dt, const uint16_t& animationSegmentID);
	bool fetchAnimationPacket(AnimationPacket& packet);
	
	void sendAIPacket(const uint16_t& id, const uint16_t& aiState);
	bool fetchAIPacket(AIPacket& packet);

	void sendSpellPacket(const uint16_t& id, const uint16_t& currentSpell);
	bool fetchSpellPacket(SpellPacket& packet);

	void sendAITransformPacket(const uint32_t& id, const float& pos_x, const float& pos_y, const float& pos_z, const float& lookAt_x, const float& lookAt_y, const float& lookAt_z, const float& rotation_x, const float& rotation_y, const float& rotation_z);
	bool fetchAITransformPacket(TransformPacket &packet);


private:
	void startNetworkSending();
	void startNetworkReceiving();
	Nurn::NurnEngine network;
	std::thread sendingThread;
	std::thread receiveThread;
	bool running;
	bool networkHost;
	PerformanceCounter counter;
	const double sendFrequency = 0.0167; // Time between packages
	const double recFrequency = 0.0167; // Time between packages
	double transformpackTime;
	double animationpackTime;
	double aiTransformpackTime;
};