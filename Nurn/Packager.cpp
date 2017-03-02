#include "Packager.hpp"

#ifdef DEBUGGING_NETWORK
Packager::Packager(DebugNetwork * debugNetwork_ptr)
{
	this->debugNetwork_ptr = debugNetwork_ptr;
#else
Packager::Packager()
{
#endif
	this->transformQueue = new PacketQueue<TransformPacket>(5);
	this->animationQueue = new PacketQueue<AnimationPacket>(5);
	this->aiStateQueue = new PacketQueue<AIStatePacket>(100);
	this->spellQueue = new PacketQueue<SpellPacket>(20);
	this->aiTransformQueue = new PacketQueue<TransformPacket>(100);
	this->chargingQueue = new PacketQueue<ChargingPacket>(20);
	this->quickBlendQueue = new PacketQueue<QuickBlendPacket>(20);
	this->damageQueue = new PacketQueue<DamagePacket>(40);
	this->changeSpellsQueue = new PacketQueue<ChangeSpellsPacket>(10);
	this->playerEventQueue = new PacketQueue<EventPacket>(10);
	this->aiHealthQueue = new PacketQueue<HealthPacket>(100);
	this->dashQueue = new PacketQueue<DashPacket>(5);
	this->endEventQueue = new PacketQueue<EventPacket>(10);
	this->playerHealthQueue = new PacketQueue<HealthPacket>(10);
	this->ressurectionQueue = new PacketQueue<HealthPacket>(2);

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
	if (this->aiHealthQueue)
	{
		delete this->aiHealthQueue;
		this->aiHealthQueue = 0;
	}
	if (this->dashQueue)
	{
		delete this->dashQueue;
		this->dashQueue = 0;
	}
	if (this->endEventQueue)
	{
		delete this->endEventQueue;
		this->endEventQueue = 0;
	}
	if (this->playerHealthQueue)
	{
		delete this->playerHealthQueue;
		this->playerHealthQueue = 0;
	}
	if (this->ressurectionQueue)
	{
		delete this->ressurectionQueue;
		this->ressurectionQueue = 0;
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

#ifdef DEBUGGING_NETWORK
	if(this->debugNetwork_ptr->getSendPingPacket())
	{
		//printf("Sending ping\n");
		this->addPingPacket(this->currentNetPacketSize, fullPackage);
		this->debugNetwork_ptr->setSendPingPacket(false);
	}
#endif

	this->addNewPackets<TransformPacket>(this->currentNetPacketSize, fullPackage, this->transformQueue, TRANSFORM_PACKET);
	this->addNewPackets<AnimationPacket>(this->currentNetPacketSize, fullPackage, this->animationQueue, ANIMATION_PACKET);
	this->addNewPackets<AIStatePacket>(this->currentNetPacketSize, fullPackage, this->aiStateQueue, AI_STATE_PACKET);
	this->addNewPackets<SpellPacket>(this->currentNetPacketSize, fullPackage, this->spellQueue, SPELL_PACKET);
	this->addNewPackets<TransformPacket>(this->currentNetPacketSize, fullPackage, this->aiTransformQueue, AI_TRANSFORM_PACKET);
	this->addNewPackets<ChargingPacket>(this->currentNetPacketSize, fullPackage, this->chargingQueue, CHARGING_PACKET);
	this->addNewPackets<QuickBlendPacket>(this->currentNetPacketSize, fullPackage, this->quickBlendQueue, QUICKBLEND_PACKET);
	this->addNewPackets<DamagePacket>(this->currentNetPacketSize, fullPackage, this->damageQueue, DAMAGE_PACKET);
	this->addNewPackets<ChangeSpellsPacket>(this->currentNetPacketSize, fullPackage, this->changeSpellsQueue, CHANGESPELLS_PACKET);
	this->addNewPackets<EventPacket>(this->currentNetPacketSize, fullPackage, this->playerEventQueue, PLAYER_EVENT_PACKET);
	this->addNewPackets<HealthPacket>(this->currentNetPacketSize, fullPackage, this->aiHealthQueue, AI_HEALTH_PACKET);
	this->addNewPackets<DashPacket>(this->currentNetPacketSize, fullPackage, this->dashQueue, DASH_PACKET);
	this->addNewPackets<EventPacket>(this->currentNetPacketSize, fullPackage, this->endEventQueue, END_EVENT_PACKET);
	this->addNewPackets<HealthPacket>(this->currentNetPacketSize, fullPackage, this->playerHealthQueue, PLAYER_HEALTH_PACKET);
	this->addNewPackets<HealthPacket>(this->currentNetPacketSize, fullPackage, this->ressurectionQueue, RESSURECTION_PACKET);
	
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

void Packager::pushAIHealthPacket(const HealthPacket& packet)
{
	this->aiHealthQueue->push(packet);
}

void Packager::pushDashPacket(const DashPacket& packet)
{
	this->dashQueue->push(packet);
}

void Packager::pushEndEventPacket(const EventPacket& packet)
{
	this->endEventQueue->push(packet);
}

void Packager::pushPlayerHealthPacket(const HealthPacket& packet)
{
	this->playerHealthQueue->push(packet);
}

void Packager::pushRessurectionPacket(const HealthPacket& packet)
{
	this->ressurectionQueue->push(packet);
}

template<class packetType>
void Packager::addNewPackets(uint16_t &netPacketSize, bool& fullPackage, PacketQueue<packetType> * const packetQueue, const uint8_t& packetEnum)
{
	packetType newPacket;
	std::size_t sizeOfPacketType = sizeof(packetType);
	uint16_t sizeOfnewPackets = 0;
	
	if ((packetSize - (netPacketSize + sizeof(MetaDataPacket) + sizeOfnewPackets)) < sizeOfPacketType)
	{
		fullPackage = true;
	}

	while (fullPackage == false && packetQueue->pop(newPacket))
	{
		// Add Packet to the memory ( ...[MetaData][packet][packet]... )
		memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket) + sizeOfnewPackets, &newPacket, sizeOfPacketType);
		sizeOfnewPackets += sizeOfPacketType;
		// Only add a packet if there's enough space in the buffer
		if ((packetSize - (netPacketSize + sizeof(MetaDataPacket) + sizeOfnewPackets)) < sizeOfPacketType)
		{
			fullPackage = true;
		}
	}

	if (sizeOfnewPackets > 0)
	{
		this->addMetaDataPacket(packetEnum, netPacketSize, sizeOfnewPackets);

		netPacketSize += sizeOfnewPackets; // Should now point at the location of the next MetaDataPacket
	}
}

void Packager::addMetaDataPacket(const uint16_t& type, uint16_t& netPacketSize, const uint16_t& sizeInBytes)
{
	memcpy(this->memory + netPacketSize, &MetaDataPacket(type, sizeInBytes), sizeof(MetaDataPacket));

	netPacketSize += sizeof(MetaDataPacket);
}

#ifdef DEBUGGING_NETWORK
void Packager::addPingPacket(uint16_t& netPacketSize, bool& fullPackage)
{
	this->debugNetwork_ptr->ping_start_time = std::chrono::system_clock::now();

	uint16_t sizeOfPingPackets = sizeof(PingPacket);
	memcpy(this->memory + netPacketSize + sizeof(MetaDataPacket), &PingPacket(this->debugNetwork_ptr->getPingPacket().data.loopNumber), sizeof(PingPacket));

	this->addMetaDataPacket(PING_PACKET, netPacketSize, sizeOfPingPackets);

	netPacketSize += sizeOfPingPackets; // Should now point at the location of the next MetaDataPacket
}
#endif
