#pragma once

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

#define packetSize 1400

class Packager
{
public:
	Packager();
	virtual ~Packager();

	unsigned char * getPacketPointer();
	uint16_t getCurrentNetPacketSize() const;

	void buildNetPacket(); // Call in 
	void pushTransformPacket(const TransformPacket& packet);
	void pushAnimationPacket(const AnimationPacket& packet);
	void pushAIStatePacket(const AIStatePacket& packet);
	void pushSpellPacket(const SpellPacket& packet);
	void pushAITransformPacket(const TransformPacket& packet);
	void pushChargingPacket(const ChargingPacket& packet);
	void pushQuickBlendPacket(const QuickBlendPacket& packet);
	void pushDamagePacket(const DamagePacket& packet);

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
	uint16_t currentNetPacketSize;

	//void addPacketGroup(uint16_t packetType, void * packet, void * queue, uint16_t &netPacketSize);

	void addTransformPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addAnimationPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addAIPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addSpellPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addAITransformPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addChargingPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addQuickBlendPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addDamagePackets(uint16_t& netPacketSize, bool& fullPackage);
	void addMetaDataPacket(const uint16_t& type, uint16_t& netPacketSize, const uint16_t& sizeInBytes); // After a group of packets have been added the MetaData is added.

};