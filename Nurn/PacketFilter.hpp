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
#include "HealthPacket.hpp"
#include "DashPacket.hpp"

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
	PacketQueue<HealthPacket> * getAIHealthQueue();
	PacketQueue<DashPacket> * getDashQueue();
	PacketQueue<EventPacket> * getEndEventQueue();
	PacketQueue<HealthPacket> * getPlayerHealthQueue();
	PacketQueue<HealthPacket> * getRessurectionQueue();
	PacketQueue<DamagePacket> * getAIDamageTextQueue();
	PacketQueue<DamagePacket> * getBossDamageTextQueue();

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
	PacketQueue<HealthPacket> * aiHealthQueue;
	PacketQueue<DashPacket> * dashQueue;
	PacketQueue<EventPacket> * endEventQueue;
	PacketQueue<HealthPacket> * playerHealthQueue;
	PacketQueue<HealthPacket> * ressurectionQueue;
	PacketQueue<DamagePacket> * aiDamageTextQueue;
	PacketQueue<DamagePacket> * bossDamageTextQueue;


#ifdef DEBUGGING_NETWORK
	DebugNetwork * debugNetwork_ptr;
#endif
};