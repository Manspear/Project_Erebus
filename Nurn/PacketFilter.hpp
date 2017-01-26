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

	void openNetPacket(const unsigned char const * memoryPointer);
	PacketQueue<TransformPacket> * getTransformQueue();
	PacketQueue<AnimationPacket> * getAnimationQueue();
	PacketQueue<AIPacket> * getAIQueue();
	PacketQueue<SpellPacket> * getSpellQueue();
	PacketQueue<TransformPacket> * getAITransformQueue();

private:
	PacketQueue<TransformPacket> * transformQueue;
	PacketQueue<AnimationPacket> * animationQueue;
	PacketQueue<AIPacket> * aiQueue;
	PacketQueue<SpellPacket> * spellQueue;
	PacketQueue<TransformPacket> * aiTransformQueue;
};