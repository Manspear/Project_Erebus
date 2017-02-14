#pragma once

#include "NetworkDefines.hpp"

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

#ifdef DEBUGGING_NETWORK
#include "PingPacket.hpp"
#include "DebugNetwork.hpp"
#endif

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
	PacketQueue<TransformPacket> * getTransformQueue();
	PacketQueue<AnimationPacket> * getAnimationQueue();
	PacketQueue<AIStatePacket> * getAIStateQueue();
	PacketQueue<SpellPacket> * getSpellQueue();
	PacketQueue<TransformPacket> * getAITransformQueue();
	PacketQueue<ChargingPacket> * getChargingQueue();
	PacketQueue<QuickBlendPacket> * getQuickBlendQueue();
	PacketQueue<DamagePacket> * getDamageQueue();
	PacketQueue<ChangeSpellsPacket> * getChangeSpellsQueue();
	PacketQueue<EventPacket> * getPlayerEventQueue();

private:
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

#ifdef DEBUGGING_NETWORK
	DebugNetwork * debugNetwork_ptr;
#endif
};