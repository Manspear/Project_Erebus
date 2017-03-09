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

class PacketFilter
{
public:
#ifdef DEBUGGING_NETWORK
	PacketFilter(DebugNetwork *debugNetowrk_ptr);
#else
	PacketFilter();
#endif

	virtual ~PacketFilter();

	void openNetPacket(const unsigned char * const memoryPointer);
	
	PacketQueueInterface * getQueue(const uint8_t& packetEnum);

private:
	std::vector<PacketQueueInterface*> queueList;

#ifdef DEBUGGING_NETWORK
	DebugNetwork * debugNetwork_ptr;
#endif
};