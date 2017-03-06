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

	void sendDamagePacket(const DamagePacket& packet);
	bool fetchDamagePacket(DamagePacket& packet);

	void sendChangeSpellsPacket(const ChangeSpellsPacket& packet);
	bool fetchChangeSpellsPacket(ChangeSpellsPacket& packet);

	void sendPlayerEventPacket(const EventPacket& packet);
	bool fetchPlayerEventPacket(EventPacket& packet);

	void sendAIHealthPacket(const HealthPacket& packet);
	bool fetchAIHealthPacket(HealthPacket& packet);

	void sendDashPacket(const DashPacket& packet);
	bool fetchDashPacket(DashPacket& packet);

	void sendEndEventPacket(const EventPacket& packet);
	bool fetchEndEventPacket(EventPacket& packet);

	void sendPlayerHealthPacket(const HealthPacket& packet);
	bool fetchPlayerHealthPacket(HealthPacket& packet);

	void sendRessurectionPacket(const HealthPacket& packet);
	bool fetchRessurectionPacket(HealthPacket& packet);

	void sendAIDamageTextPacket(const DamagePacket& packet);
	bool fetchAIDamageTextPacket(DamagePacket& packet);

	void sendBossDamageTextPacket(const DamagePacket& packet);
	bool fetchBossDamageTextPacket(DamagePacket& packet);

	void sendBossHealthPacket(const HealthPacket& packet);
	bool fetchBossHealthPacket(HealthPacket& packet);


#ifdef DEBUGGING_NETWORK
	float getPing();
#endif


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