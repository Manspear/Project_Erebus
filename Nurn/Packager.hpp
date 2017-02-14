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
	uint16_t currentNetPacketSize;

#ifdef DEBUGGING_NETWORK
	DebugNetwork *debugNetwork_ptr;
#endif

	//void addPacketGroup(uint16_t packetType, void * packet, void * queue, uint16_t &netPacketSize);

	void addTransformPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addAnimationPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addAIPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addSpellPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addAITransformPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addChargingPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addQuickBlendPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addDamagePackets(uint16_t& netPacketSize, bool& fullPackage);
	void addChangeSpellsPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addPlayerEventPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addMetaDataPacket(const uint16_t& type, uint16_t& netPacketSize, const uint16_t& sizeInBytes); // After a group of packets have been added the MetaData is added.

#ifdef DEBUGGING_NETWORK
	void addPingPacket(uint16_t& netPacketSize, bool& fullPackage); // Only added when debugging
#endif
};