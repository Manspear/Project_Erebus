#include "Packager.hpp"

Packager::Packager()
{
	this->transformQueue = new PacketQueue<TransformPacket>(20);
	this->animationQueue = new PacketQueue<AnimationPacket>(40);
	this->aiQueue = new PacketQueue<AIPacket>(10);
	this->spellQueue = new PacketQueue<SpellPacket>(10);
	this->aiTransformQueue = new PacketQueue<TransformPacket>(40);
}

Packager::~Packager()
{
	if (this->transformQueue)
	{
		delete this->transformQueue;
		this->transformQueue = 0;
	}
	if (this->animationQueue)
	{
		delete this->animationQueue;
		this->animationQueue = 0;
	}
	if (this->aiQueue)
	{
		delete this->aiQueue;
		this->aiQueue = 0;
	}
	if (this->spellQueue)
	{
		delete this->spellQueue;
		this->spellQueue = 0;
	}
	if (this->aiTransformQueue)
	{
		delete this->aiTransformQueue;
		this->aiTransformQueue = 0;
	}
}

unsigned char * Packager::getPacketPointer()
{
	return (unsigned char*)this->memory;
}

uint16_t Packager::getCurrentNetPacketSize() const
{
	return this->currentNetPacketSize;
}

void Packager::buildNetPacket()
{
	bool fullPackage = false;
	this->currentNetPacketSize = sizeof(uint16_t);

	this->addTransformPackets(this->currentNetPacketSize, fullPackage);
	this->addAnimationPackets(this->currentNetPacketSize, fullPackage);
	this->addAIPackets(this->currentNetPacketSize, fullPackage);
	this->addSpellPackets(this->currentNetPacketSize, fullPackage);
	this->addAITransformPackets(this->currentNetPacketSize, fullPackage);
	
	//this->addPacketGroup(TRANSFORM_PACKET, (void*)TransformPacket pack, this->transformQueue, this->currentNetPacketSize);

	// Add the size of the netpacket at the start
	memcpy(this->memory, &this->currentNetPacketSize, sizeof(uint16_t));
}

void Packager::buildTransformPacket(const uint16_t& id, const float& pos_x, const float& pos_y, const float& pos_z, const float& lookAt_x, const float& lookAt_y, const float& lookAt_z, const float& rotation_x, const float& rotation_y, const float& rotation_z)
{
	this->transformQueue->push(TransformPacket(id, pos_x, pos_y, pos_z, lookAt_x, lookAt_y, lookAt_z, rotation_x, rotation_y, rotation_z));
}

void Packager::buildAnimationPacket(const uint16_t& id, const uint16_t& animationState, const float& dt, const uint16_t& animationSegmentID)
{
	this->animationQueue->push(AnimationPacket(id, animationState, dt, animationSegmentID));
}

void Packager::buildAIPacket(const uint16_t& id, const uint16_t& aiState)
{
	this->aiQueue->push(AIPacket(id, aiState));
}

void Packager::buildSpellPacket(const uint16_t& ID, const uint16_t& currentSpell)
{
	this->spellQueue->push(SpellPacket(ID, currentSpell));
}

void Packager::buildAITransformPacket(const uint16_t& id, const float& pos_x, const float& pos_y, const float& pos_z, const float& lookAt_x, const float& lookAt_y, const float& lookAt_z, const float& rotation_x, const float& rotation_y, const float& rotation_z)
{
	this->aiTransformQueue->push(TransformPacket(id, pos_x, pos_y, pos_z, lookAt_x, lookAt_y, lookAt_z, rotation_x, rotation_y, rotation_z));
}

void Packager::addTransformPackets(uint16_t &netPacketSize, bool& fullPackage)
{
	TransformPacket transformPacket;
	uint16_t sizeOfTransformPackets = 0;

	while (this->transformQueue->pop(transformPacket) && fullPackage == false)
	{
		// Only add a packet if there's enough space for another TransformPacket in the buffer
		if ((packetSize - (netPacketSize + sizeof(MetaDataPacket) + sizeOfTransformPackets)) > sizeof(TransformPacket))
		{
			// Add TransformPacket to the memory ( ...[MetaData][Transform][Transform]... )
			memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket) + sizeOfTransformPackets, &transformPacket, sizeof(TransformPacket));
			sizeOfTransformPackets += sizeof(TransformPacket);
		}
		else		
		{
			fullPackage = true;
		}
	}

	this->addMetaDataPacket(TRANSFORM_PACKET, netPacketSize, sizeOfTransformPackets);

	netPacketSize += sizeOfTransformPackets; // Should now point at the location of the next MetaDataPacket
}

void Packager::addAnimationPackets(uint16_t& netPacketSize, bool& fullPackage)
{
	AnimationPacket animationPacket;
	uint16_t sizeOfAnimationPackets = 0;

	while (this->animationQueue->pop(animationPacket) && fullPackage == false)
	{
		// Only add a packet if there's enough space for another AnimationPacket in the buffer
		if ((packetSize - (netPacketSize + sizeof(MetaDataPacket) + sizeOfAnimationPackets)) > sizeof(AnimationPacket))
		{
			// Add AnimationPacket to the memory ( ...[MetaData][Animation][Animation]... )
			memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket) + sizeOfAnimationPackets, &animationPacket, sizeof(AnimationPacket));
			sizeOfAnimationPackets += sizeof(AnimationPacket);
		}
		else
		{
			fullPackage = true;
		}
	}

	this->addMetaDataPacket(ANIMATION_PACKET, netPacketSize, sizeOfAnimationPackets);

	netPacketSize += sizeOfAnimationPackets; // Should now point at the location of the next MetaDataPacket
}

void Packager::addAIPackets(uint16_t& netPacketSize, bool& fullPackage)
{
	AIPacket aiPacket;
	uint16_t sizeOfAIPackets = 0;

	while (this->aiQueue->pop(aiPacket) && fullPackage == false)
	{
		// Only add a packet if there's enough space for another AIPacket in the buffer
		if ((packetSize - (netPacketSize + sizeof(MetaDataPacket) + sizeOfAIPackets)) > sizeof(AIPacket))
		{
			// Add AIPacket to the memory ( ...[MetaData][AI][AI]... )
			memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket) + sizeOfAIPackets, &aiPacket, sizeof(AIPacket));
			sizeOfAIPackets += sizeof(AIPacket);
		}
		else
		{
			fullPackage = true;
		}
	}

	this->addMetaDataPacket(AI_PACKET, netPacketSize, sizeOfAIPackets);

	netPacketSize += sizeOfAIPackets; // Should now point at the location of the next MetaDataPacket
}

void Packager::addSpellPackets(uint16_t& netPacketSize, bool& fullPackage)
{
	SpellPacket spellPacket;
	uint16_t sizeOfSpellPackets = 0;

	while (this->spellQueue->pop(spellPacket) && fullPackage == false)
	{
		// Only add a packet if there's enough space for another AIPacket in the buffer
		if ((packetSize - (netPacketSize + sizeof(MetaDataPacket) + sizeOfSpellPackets)) > sizeof(SpellPacket))
		{
			// Add AIPacket to the memory ( ...[MetaData][Spell][Spell]... )
			memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket) + sizeOfSpellPackets, &spellPacket, sizeof(SpellPacket));
			sizeOfSpellPackets += sizeof(SpellPacket);
		}
		else
		{
			fullPackage = true;
		}
	}

	this->addMetaDataPacket(SPELL_PACKET, netPacketSize, sizeOfSpellPackets);

	netPacketSize += sizeOfSpellPackets; // Should now point at the location of the next MetaDataPacket
}

void Packager::addAITransformPackets(uint16_t& netPacketSize, bool& fullPackage)
{
	TransformPacket aiTransformPacket;
	uint16_t sizeOfAITransformPackets = 0;

	while (this->aiTransformQueue->pop(aiTransformPacket) && fullPackage == false)
	{
		// Only add a packet if there's enough space for another TransformPacket in the buffer
		if ((packetSize - (netPacketSize + sizeof(MetaDataPacket) + sizeOfAITransformPackets)) > sizeof(TransformPacket))
		{
			// Add TransformPacket to the memory ( ...[MetaData][AI_Transform][AI_Transform]... )
			memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket) + sizeOfAITransformPackets, &aiTransformPacket, sizeof(TransformPacket));
			sizeOfAITransformPackets += sizeof(TransformPacket);
		}
		else
		{
			fullPackage = true;
		}
	}

	this->addMetaDataPacket(AI_TRANSFORM_PACKET, netPacketSize, sizeOfAITransformPackets);

	netPacketSize += sizeOfAITransformPackets; // Should now point at the location of the next MetaDataPacket
}

void Packager::addMetaDataPacket(const uint16_t& type, uint16_t& netPacketSize, const uint16_t& sizeInBytes)
{
	memcpy(this->memory + netPacketSize, &MetaDataPacket(type, sizeInBytes), sizeof(MetaDataPacket));

	netPacketSize += sizeof(MetaDataPacket);
}
