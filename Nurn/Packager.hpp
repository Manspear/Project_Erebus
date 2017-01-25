#pragma once

#include "PacketEnums.hpp"
#include "PacketQueue.hpp"
#include "AIPacket.hpp"
#include "AnimationPacket.hpp"
#include "TransformPacket.hpp"
#include "MetaDataPacket.hpp"
#include "SpellPacket.hpp"

#define packetSize 1400

class Packager
{
public:
	Packager();
	virtual ~Packager();

	unsigned char * getPacketPointer();
	uint16_t getCurrentNetPacketSize() const;

	void buildNetPacket(); // Call in 
	void buildTransformPacket(const uint16_t& ID, const float& pos_x, const float& pos_y, const float& pos_z, const float& lookAt_x, const float& lookAt_y, const float& lookAt_z, const float& rotation_x, const float& rotation_y, const float& rotation_z);
	void buildAnimationPacket(const uint16_t& ID);
	void buildAIPacket(const uint16_t& ID);
	void buildSpellPacket(const uint16_t& ID, const uint16_t& currentSpell);

private:
	unsigned char memory[packetSize];

	PacketQueue<TransformPacket> * transformQueue;
	PacketQueue<AnimationPacket> * animationQueue;
	PacketQueue<AIPacket> * aiQueue;
	PacketQueue<SpellPacket> * spellQueue;
	uint16_t currentNetPacketSize;

	//void addPacketGroup(uint16_t packetType, void * packet, void * queue, uint16_t &netPacketSize);

	void addTransformPackets(uint16_t& netPacketSize);
	void addAnimationPackets(uint16_t& netPacketSize);
	void addAIPackets(uint16_t& netPacketSize);
	void addSpellPackets(uint16_t& netPacketSize);
	void addMetaDataPacket(uint16_t type, uint16_t &netPacketSize, uint16_t sizeInBytes); // After a group of packets have been added the MetaData is added.

};