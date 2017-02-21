#pragma once

#include "NetworkDefines.hpp"

#include "PacketEnums.hpp"
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
#include "AIHealthPacket.hpp"
#include "DashPacket.hpp"

#ifdef DEBUGGING_NETWORK
#include "PingPacket.hpp"
#include "DebugNetwork.hpp"
#endif

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

	unsigned char * getPacketPointer();
	uint16_t getCurrentNetPacketSize() const;

	void buildNetPacket(); 
	void pushTransformPacket(const TransformPacket& packet);
	void pushAnimationPacket(const AnimationPacket& packet);
	void pushAIStatePacket(const AIStatePacket& packet);
	void pushSpellPacket(const SpellPacket& packet);
	void pushAITransformPacket(const TransformPacket& packet);
	void pushChargingPacket(const ChargingPacket& packet);
	void pushQuickBlendPacket(const QuickBlendPacket& packet);
	void pushDamagePacket(const DamagePacket& packet);
	void pushChangeSpellsPacket(const ChangeSpellsPacket& packet);
	void pushPlayerEventPacket(const EventPacket& packet);
	void pushAIHealthPacket(const AIHealthPacket& packet);
	void pushDashPacket(const DashPacket& packet);
	void pushEndEventPacket(const EventPacket& packet);

private:
	unsigned char * memory;

	PacketQueue<TransformPacket> * transformQueue;
	PacketQueue<AnimationPacket> * animationQueue;
	PacketQueue<AIStatePacket> * aiStateQueue;
	PacketQueue<SpellPacket> * spellQueue;
	PacketQueue<TransformPacket> * aiTransformQueue;
	PacketQueue<ChargingPacket> * chargingQueue;
	PacketQueue<QuickBlendPacket> * quickBlendQueue;
	PacketQueue<DamagePacket> * damageQueue;
	PacketQueue<ChangeSpellsPacket> * changeSpellsQueue;
	PacketQueue<EventPacket> * playerEventQueue;
	PacketQueue<AIHealthPacket> * aiHealthQueue;
	PacketQueue<DashPacket> * dashQueue;
	PacketQueue<EventPacket> * endEventQueue;
	uint16_t currentNetPacketSize;

#ifdef DEBUGGING_NETWORK
	DebugNetwork *debugNetwork_ptr;
#endif

	template<class packetType>
	void addNewPackets(uint16_t &netPacketSize, bool& fullPackage, PacketQueue<packetType> * const packetQueue, const uint8_t& packetEnum);
	void addMetaDataPacket(const uint16_t& type, uint16_t& netPacketSize, const uint16_t& sizeInBytes); // After a group of packets have been added the MetaData is added.

#ifdef DEBUGGING_NETWORK
	void addPingPacket(uint16_t& netPacketSize, bool& fullPackage); // Only added when debugging
#endif
};