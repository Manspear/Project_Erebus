#pragma once

#include "NetworkDefines.hpp"

#include "PacketEnums.hpp"
#include "PacketQueueInterface.hpp"
#include "PacketQueue.hpp"
#include "AIStatePacket.hpp"
#include "AnimationPacket.hpp"
#include "TransformPacket.hpp"
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

#define packetSize 1400

class Packager
{
public:
#ifdef DEBUGGING_NETWORK
	Packager(DebugNetwork * debugNetwork_ptr);
#else
	Packager();
#endif
	virtual ~Packager();
	void shutdown();

	unsigned char * getPacketPointer();
	uint16_t getCurrentNetPacketSize() const;

	void buildNetPacket(); 
	std::shared_ptr<PacketQueueInterface> getQueue(const uint8_t& packetEnum);

	template<class packetType>
	void addNewQueue(const int& size);

private:
	unsigned char * memory;

	std::vector<std::shared_ptr<PacketQueueInterface>> queueList;

	uint16_t currentNetPacketSize;

#ifdef DEBUGGING_NETWORK
	DebugNetwork *debugNetwork_ptr;
#endif

	void addNewPackets(uint16_t &netPacketSize, bool& fullPackage, const uint8_t& packetEnum);
	void addMetaDataPacket(const uint16_t& type, uint16_t& netPacketSize, const uint16_t& sizeInBytes); // After a group of packets have been added the MetaData is added.

#ifdef DEBUGGING_NETWORK
	void addPingPacket(uint16_t& netPacketSize, bool& fullPackage); // Only added when debugging
#endif
};

extern template void Packager::addNewQueue<Packet::AIStatePacket>(const int& size);
extern template void Packager::addNewQueue<Packet::AnimationPacket>(const int& size);
extern template void Packager::addNewQueue<Packet::ChangeSpellsPacket>(const int& size);
extern template void Packager::addNewQueue<Packet::ChargingPacket>(const int& size);
extern template void Packager::addNewQueue<Packet::DamagePacket>(const int& size);
extern template void Packager::addNewQueue<Packet::DashPacket>(const int& size);
extern template void Packager::addNewQueue<Packet::EventPacket>(const int& size);
extern template void Packager::addNewQueue<Packet::HealthPacket>(const int& size);
extern template void Packager::addNewQueue<Packet::QuickBlendPacket>(const int& size);
extern template void Packager::addNewQueue<Packet::SpellPacket>(const int& size);
extern template void Packager::addNewQueue<Packet::TransformPacket>(const int& size);