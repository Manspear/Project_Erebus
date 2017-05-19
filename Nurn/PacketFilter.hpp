#pragma once

#include "NetworkDefines.hpp"

#include "PacketQueueInterface.hpp"
#include "PacketQueue.hpp"
#include "PacketEnums.hpp"
#include "AIStatePacket.hpp"
#include "TransformPacket.hpp"
#include "AnimationPacket.hpp"
#include "MetaDataPacket.hpp"
#include "SpellPacket.hpp"
#include "ChargingPacket.hpp"
#include "QuickBlendPacket.hpp"
#include "DamagePacket.hpp"
#include "ChangeSpellsPacket.hpp"
#include "EventPacket.hpp"
#include "HealthPacket.hpp"
#include "DashPacket.hpp"

#ifdef DEBUGGING_NETWORK
#include "PingPacket.hpp"
#include "DebugNetwork.hpp"
#endif

#include <vector>
#include <memory>
#include <chrono>
#include <fstream>

class PacketFilter
{
public:
#ifdef DEBUGGING_NETWORK
	PacketFilter(DebugNetwork *debugNetowrk_ptr);
#else
	PacketFilter();
#endif

	virtual ~PacketFilter();
	void shutdown();

	void openNetPacket(const unsigned char * const memoryPointer);
	
	std::shared_ptr<PacketQueueInterface> getQueue(const uint8_t& packetEnum);

	void pushPacketsToQueue(const unsigned char * const memoryPointer, uint16_t bytesRead, Packet::MetaDataPacket * metaDataPacket);
	//void pushPacketsToQueue();


	template<class packetType>
	void addNewQueue(const int& size);
	
private:
	std::vector<std::shared_ptr<PacketQueueInterface>> queueList;
	std::vector<uint32_t> packingqueue;

#ifdef DEBUGGING_NETWORK
	DebugNetwork * debugNetwork_ptr;
#endif
};