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
	void shutdown();

	void openNetPacket(const unsigned char * const memoryPointer);
	
	std::shared_ptr<PacketQueueInterface> getQueue(const uint8_t& packetEnum);

	template<class packetType>
	void addNewQueue(const int& size);
	
private:
	std::vector<std::shared_ptr<PacketQueueInterface>> queueList;

#ifdef DEBUGGING_NETWORK
	DebugNetwork * debugNetwork_ptr;
#endif
};

extern template void PacketFilter::addNewQueue<Packet::AIStatePacket>(const int& size);
extern template void PacketFilter::addNewQueue<Packet::AnimationPacket>(const int& size);
extern template void PacketFilter::addNewQueue<Packet::ChangeSpellsPacket>(const int& size);
extern template void PacketFilter::addNewQueue<Packet::ChargingPacket>(const int& size);
extern template void PacketFilter::addNewQueue<Packet::DamagePacket>(const int& size);
extern template void PacketFilter::addNewQueue<Packet::DashPacket>(const int& size);
extern template void PacketFilter::addNewQueue<Packet::EventPacket>(const int& size);
extern template void PacketFilter::addNewQueue<Packet::HealthPacket>(const int& size);
extern template void PacketFilter::addNewQueue<Packet::QuickBlendPacket>(const int& size);
extern template void PacketFilter::addNewQueue<Packet::SpellPacket>(const int& size);
extern template void PacketFilter::addNewQueue<Packet::TransformPacket>(const int& size);