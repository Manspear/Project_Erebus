#include "Packager.hpp"

Packager::Packager()
{
	this->transformQueue = new PacketQueue<TransformPacket>(10);
	this->animationQueue = new PacketQueue<AnimationPacket>(10);
	this->aiStateQueue = new PacketQueue<AIStatePacket>(10);
	this->spellQueue = new PacketQueue<SpellPacket>(10);
	this->aiTransformQueue = new PacketQueue<TransformPacket>(20);
	this->chargingQueue = new PacketQueue<ChargingPacket>(10);
	this->quickBlendQueue = new PacketQueue<QuickBlendPacket>(40);
	this->damageQueue = new PacketQueue<DamagePacket>(20);
	this->changeSpellsQueue = new PacketQueue<ChangeSpellsPacket>(10);
	this->playerEventQueue = new PacketQueue<EventPacket>(10);
	this->memory = new unsigned char[packetSize];
	this->currentNetPacketSize = 0;
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
	if (this->aiStateQueue)
	{
		delete this->aiStateQueue;
		this->aiStateQueue = 0;
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
	if (this->chargingQueue)
	{
		delete this->chargingQueue;
		this->chargingQueue = 0;
	}
	if (this->quickBlendQueue)
	{
		delete this->quickBlendQueue;
		this->quickBlendQueue = 0;
	}
	if (this->damageQueue)
	{
		delete this->damageQueue;
		this->damageQueue = 0;
	}
	if (this->changeSpellsQueue)
	{
		delete this->changeSpellsQueue;
		this->changeSpellsQueue = 0;
	}
	if (this->playerEventQueue)
	{
		delete this->playerEventQueue;
		this->playerEventQueue = 0;
	}
	if (this->memory)
	{
		delete [] this->memory;
		this->memory = 0;
	}

}

unsigned char * Packager::getPacketPointer()
{
	return this->memory;
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
	this->addChargingPackets(this->currentNetPacketSize, fullPackage);
	this->addQuickBlendPackets(this->currentNetPacketSize, fullPackage);
	this->addDamagePackets(this->currentNetPacketSize, fullPackage);
	this->addChangeSpellsPackets(this->currentNetPacketSize, fullPackage);
	this->addPlayerEventPackets(this->currentNetPacketSize, fullPackage);
	
	//this->addPacketGroup(TRANSFORM_PACKET, (void*)TransformPacket pack, this->transformQueue, this->currentNetPacketSize);

	// Add the size of the netpacket at the start
	memcpy(this->memory, &this->currentNetPacketSize, sizeof(uint16_t));
}

void Packager::pushTransformPacket(const TransformPacket& packet)
{
	this->transformQueue->push(packet);
}

void Packager::pushAnimationPacket(const AnimationPacket& packet)
{
	this->animationQueue->push(packet);
}

void Packager::pushAIStatePacket(const AIStatePacket& packet)
{
	this->aiStateQueue->push(packet);
}

void Packager::pushSpellPacket(const SpellPacket& packet)
{
	this->spellQueue->push(packet);
}

void Packager::pushAITransformPacket(const TransformPacket& packet)
{
	this->aiTransformQueue->push(packet);
}

void Packager::pushChargingPacket(const ChargingPacket& packet)
{
	this->chargingQueue->push(packet);
}

void Packager::pushQuickBlendPacket(const QuickBlendPacket& packet)
{
	this->quickBlendQueue->push(packet);
}

void Packager::pushDamagePacket(const DamagePacket& packet)
{
	this->damageQueue->push(packet);
}

void Packager::pushChangeSpellsPacket(const ChangeSpellsPacket& packet)
{
	this->changeSpellsQueue->push(packet);
}

void Packager::pushPlayerEventPacket(const EventPacket& packet)
{
	this->playerEventQueue->push(packet);
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

	if (sizeOfTransformPackets > 0)
	{
		this->addMetaDataPacket(TRANSFORM_PACKET, netPacketSize, sizeOfTransformPackets);

		netPacketSize += sizeOfTransformPackets; // Should now point at the location of the next MetaDataPacket
	}
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

	if (sizeOfAnimationPackets > 0)
	{
		this->addMetaDataPacket(ANIMATION_PACKET, netPacketSize, sizeOfAnimationPackets);

		netPacketSize += sizeOfAnimationPackets; // Should now point at the location of the next MetaDataPacket
	}
}

void Packager::addAIPackets(uint16_t& netPacketSize, bool& fullPackage)
{
	AIStatePacket aiPacket;
	uint16_t sizeOfAIPackets = 0;

	while (this->aiStateQueue->pop(aiPacket) && fullPackage == false)
	{
		// Only add a packet if there's enough space for another AIPacket in the buffer
		if ((packetSize - (netPacketSize + sizeof(MetaDataPacket) + sizeOfAIPackets)) > sizeof(AIStatePacket))
		{
			// Add AIPacket to the memory ( ...[MetaData][AI][AI]... )
			memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket) + sizeOfAIPackets, &aiPacket, sizeof(AIStatePacket));
			sizeOfAIPackets += sizeof(AIStatePacket);
		}
		else
		{
			fullPackage = true;
		}
	}

	if (sizeOfAIPackets > 0)
	{
		this->addMetaDataPacket(AI_STATE_PACKET, netPacketSize, sizeOfAIPackets);

		netPacketSize += sizeOfAIPackets; // Should now point at the location of the next MetaDataPacket
	}
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

	if (sizeOfSpellPackets > 0)
	{
		this->addMetaDataPacket(SPELL_PACKET, netPacketSize, sizeOfSpellPackets);

		netPacketSize += sizeOfSpellPackets; // Should now point at the location of the next MetaDataPacket
	}
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

	if (sizeOfAITransformPackets > 0)
	{
		this->addMetaDataPacket(AI_TRANSFORM_PACKET, netPacketSize, sizeOfAITransformPackets);

		netPacketSize += sizeOfAITransformPackets; // Should now point at the location of the next MetaDataPacket
	}
}

void Packager::addChargingPackets(uint16_t& netPacketSize, bool& fullPackage)
{
	ChargingPacket chargingPacket;
	uint16_t sizeOfChargingPackets = 0;

	while (this->chargingQueue->pop(chargingPacket) && fullPackage == false)
	{
		// Only add a packet if there's enough space for another ChargingPacket in the buffer
		if ((packetSize - (netPacketSize + sizeof(MetaDataPacket) + sizeOfChargingPackets)) > sizeof(ChargingPacket))
		{
			// Add ChargingPacket to the memory ( ...[MetaData][Charging][Charging]... )
			memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket) + sizeOfChargingPackets, &chargingPacket, sizeof(ChargingPacket));
			sizeOfChargingPackets += sizeof(ChargingPacket);
		}
		else
		{
			fullPackage = true;
		}
	}

	if (sizeOfChargingPackets > 0)
	{
		this->addMetaDataPacket(CHARGING_PACKET, netPacketSize, sizeOfChargingPackets);

		netPacketSize += sizeOfChargingPackets; // Should now point at the location of the next MetaDataPacket
	}
}

void Packager::addQuickBlendPackets(uint16_t& netPacketSize, bool& fullPackage)
{
	QuickBlendPacket quickBlendPacket;
	uint16_t sizeOfQuickBlendPackets = 0;

	while (this->quickBlendQueue->pop(quickBlendPacket) && fullPackage == false)
	{
		// Only add a packet if there's enough space for another QuickBlendPacket in the buffer
		if ((packetSize - (netPacketSize + sizeof(MetaDataPacket) + sizeOfQuickBlendPackets)) > sizeof(QuickBlendPacket))
		{
			// Add QuickBlendPacket to the memory ( ...[MetaData][QuickBlend][QuickBlend]... )
			memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket) + sizeOfQuickBlendPackets, &quickBlendPacket, sizeof(QuickBlendPacket));
			sizeOfQuickBlendPackets += sizeof(QuickBlendPacket);
		}
		else
		{
			fullPackage = true;
		}
	}

	if (sizeOfQuickBlendPackets > 0)
	{
		this->addMetaDataPacket(QUICKBLEND_PACKET, netPacketSize, sizeOfQuickBlendPackets);

		netPacketSize += sizeOfQuickBlendPackets; // Should now point at the location of the next MetaDataPacket
	}
}

void Packager::addDamagePackets(uint16_t& netPacketSize, bool& fullPackage)
{
	DamagePacket damagePacket;
	uint16_t sizeOfDamagePackets = 0;

	while (this->damageQueue->pop(damagePacket) && fullPackage == false)
	{
		// Only add a packet if there's enough space for another QuickBlendPacket in the buffer
		if ((packetSize - (netPacketSize + sizeof(MetaDataPacket) + sizeOfDamagePackets)) > sizeof(DamagePacket))
		{
			// Add DamagePacket to the memory ( ...[MetaData][Damage][Damage]... )
			memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket) + sizeOfDamagePackets, &damagePacket, sizeof(DamagePacket));
			sizeOfDamagePackets += sizeof(DamagePacket);
		}
		else
		{
			fullPackage = true;
		}
	}

	if (sizeOfDamagePackets > 0)
	{
		this->addMetaDataPacket(DAMAGE_PACKET, netPacketSize, sizeOfDamagePackets);

		netPacketSize += sizeOfDamagePackets; // Should now point at the location of the next MetaDataPacket
	}
}

void Packager::addChangeSpellsPackets(uint16_t& netPacketSize, bool& fullPackage)
{
	ChangeSpellsPacket changeSpellsPacket;
	uint16_t sizeOfChangeSpellsPackets = 0;

	while (this->changeSpellsQueue->pop(changeSpellsPacket) && fullPackage == false)
	{
		// Only add a packet if there's enough space for another ChangeSpellsPacket in the buffer
		if ((packetSize - (netPacketSize + sizeof(MetaDataPacket) + sizeOfChangeSpellsPackets)) > sizeof(ChangeSpellsPacket))
		{
			// Add ChangeSpellsPacket to the memory ( ...[MetaData][ChangeSpells][ChangeSpells]... )
			memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket) + sizeOfChangeSpellsPackets, &changeSpellsPacket, sizeof(ChangeSpellsPacket));
			sizeOfChangeSpellsPackets += sizeof(ChangeSpellsPacket);
		}
		else
		{
			fullPackage = true;
		}
	}

	if (sizeOfChangeSpellsPackets > 0)
	{
		this->addMetaDataPacket(CHANGESPELLS_PACKET, netPacketSize, sizeOfChangeSpellsPackets);

		netPacketSize += sizeOfChangeSpellsPackets; // Should now point at the location of the next MetaDataPacket
	}
}

void Packager::addPlayerEventPackets(uint16_t& netPacketSize, bool& fullPackage)
{
	EventPacket eventPacketPacket;
	uint16_t sizeOfEventPacketPackets = 0;

	while (this->playerEventQueue->pop(eventPacketPacket) && fullPackage == false)
	{
		// Only add a packet if there's enough space for another EventPacket in the buffer
		if ((packetSize - (netPacketSize + sizeof(MetaDataPacket) + sizeOfEventPacketPackets)) > sizeof(EventPacket))
		{
			// Add EventPacket to the memory ( ...[MetaData][Event][Event]... )
			memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket) + sizeOfEventPacketPackets, &eventPacketPacket, sizeof(EventPacket));
			sizeOfEventPacketPackets += sizeof(EventPacket);
		}
		else
		{
			fullPackage = true;
		}
	}

	if (sizeOfEventPacketPackets > 0)
	{
		this->addMetaDataPacket(PLAYER_EVENT_PACKET, netPacketSize, sizeOfEventPacketPackets);

		netPacketSize += sizeOfEventPacketPackets; // Should now point at the location of the next MetaDataPacket
	}
}

void Packager::addMetaDataPacket(const uint16_t& type, uint16_t& netPacketSize, const uint16_t& sizeInBytes)
{
	memcpy(this->memory + netPacketSize, &MetaDataPacket(type, sizeInBytes), sizeof(MetaDataPacket));

	netPacketSize += sizeof(MetaDataPacket);
}
