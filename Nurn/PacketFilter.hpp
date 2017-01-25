#pragma once

#include "PacketQueue.hpp"
#include "PacketEnums.hpp"
#include "AIPacket.hpp"
#include "TransformPacket.hpp"
#include "AnimationPacket.hpp"
#include "MetaDataPacket.hpp"
#include "SpellPacket.hpp"

class PacketFilter
{
public:
	PacketFilter();
	virtual ~PacketFilter();

	void openNetPacket(unsigned char * memoryPointer);
	PacketQueue<TransformPacket> * getTransformQueue();
	PacketQueue<AnimationPacket> * getAnimationQueue();
	PacketQueue<AIPacket> * getAIQueue();
	PacketQueue<SpellPacket> * getSpellQueue();

private:
	PacketQueue<TransformPacket> * transformQueue;
	PacketQueue<AnimationPacket> * animationQueue;
	PacketQueue<AIPacket> * aiQueue;
	PacketQueue<SpellPacket> * spellQueue;
};