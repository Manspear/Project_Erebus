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
	void buildTransformPacket(const uint16_t& id, const float& pos_x, const float& pos_y, const float& pos_z, const float& lookAt_x, const float& lookAt_y, const float& lookAt_z, const float& rotation_x, const float& rotation_y, const float& rotation_z);
	void buildAnimationPacket(const uint16_t& id, const uint16_t& animationState, const float& dt, const uint16_t& animationSegmentID);
	void buildAIPacket(const uint16_t& id, const uint16_t& aiState);
	void buildSpellPacket(const uint16_t& ID, const uint16_t& currentSpell);
	void buildAITransformPacket(const uint16_t& id, const float& pos_x, const float& pos_y, const float& pos_z, const float& lookAt_x, const float& lookAt_y, const float& lookAt_z, const float& rotation_x, const float& rotation_y, const float& rotation_z);

private:
	unsigned char * memory;

	PacketQueue<TransformPacket> * transformQueue;
	PacketQueue<AnimationPacket> * animationQueue;
	PacketQueue<AIPacket> * aiQueue;
	PacketQueue<SpellPacket> * spellQueue;
	PacketQueue<TransformPacket> * aiTransformQueue;
	uint16_t currentNetPacketSize;

	//void addPacketGroup(uint16_t packetType, void * packet, void * queue, uint16_t &netPacketSize);

	void addTransformPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addAnimationPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addAIPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addSpellPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addAITransformPackets(uint16_t& netPacketSize, bool& fullPackage);
	void addMetaDataPacket(const uint16_t& type, uint16_t& netPacketSize, const uint16_t& sizeInBytes); // After a group of packets have been added the MetaData is added.

};