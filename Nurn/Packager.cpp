#include "Packager.hpp"

#ifdef DEBUGGING_NETWORK
Packager::Packager(DebugNetwork * debugNetwork_ptr)
{
	this->debugNetwork_ptr = debugNetwork_ptr;
#else
Packager::Packager()
{
#endif

	this->queueList.emplace_back(new PacketQueue<TransformPacket>(3));
	this->queueList.emplace_back(new PacketQueue<AnimationPacket>(5));
	this->queueList.emplace_back(new PacketQueue<AIStatePacket>(100));
	this->queueList.emplace_back(new PacketQueue<SpellPacket>(20));
	this->queueList.emplace_back(new PacketQueue<TransformPacket>(100));
	this->queueList.emplace_back(new PacketQueue<ChargingPacket>(20));
	this->queueList.emplace_back(new PacketQueue<QuickBlendPacket>(20));
	this->queueList.emplace_back(new PacketQueue<DamagePacket>(40));
	this->queueList.emplace_back(new PacketQueue<ChangeSpellsPacket>(10));
	this->queueList.emplace_back(new PacketQueue<EventPacket>(10));
	this->queueList.emplace_back(new PacketQueue<HealthPacket>(100));
	this->queueList.emplace_back(new PacketQueue<DashPacket>(5));
	this->queueList.emplace_back(new PacketQueue<EventPacket>(10));
	this->queueList.emplace_back(new PacketQueue<HealthPacket>(10));
	this->queueList.emplace_back(new PacketQueue<HealthPacket>(2));
	this->queueList.emplace_back(new PacketQueue<DamagePacket>(100));
	this->queueList.emplace_back(new PacketQueue<DamagePacket>(10));
	this->queueList.emplace_back(new PacketQueue<HealthPacket>(30));

	this->memory = new unsigned char[packetSize];
	this->currentNetPacketSize = 0;
}

Packager::~Packager()
{
	while (queueList.size() > 0)
	{
		queueList.pop_back();
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

	this->addNewPackets<TransformPacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(TRANSFORM_PACKET), TRANSFORM_PACKET);
	this->addNewPackets<AnimationPacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(ANIMATION_PACKET), ANIMATION_PACKET);
	this->addNewPackets<AIStatePacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(AI_STATE_PACKET), AI_STATE_PACKET);
	this->addNewPackets<SpellPacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(SPELL_PACKET), SPELL_PACKET);
	this->addNewPackets<TransformPacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(AI_TRANSFORM_PACKET), AI_TRANSFORM_PACKET);
	this->addNewPackets<ChargingPacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(CHARGING_PACKET), CHARGING_PACKET);
	this->addNewPackets<QuickBlendPacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(QUICKBLEND_PACKET), QUICKBLEND_PACKET);
	this->addNewPackets<DamagePacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(DAMAGE_PACKET), DAMAGE_PACKET);
	this->addNewPackets<ChangeSpellsPacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(CHANGESPELLS_PACKET), CHANGESPELLS_PACKET);
	this->addNewPackets<EventPacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(PLAYER_EVENT_PACKET), PLAYER_EVENT_PACKET);
	this->addNewPackets<HealthPacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(AI_HEALTH_PACKET), AI_HEALTH_PACKET);
	this->addNewPackets<DashPacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(DASH_PACKET), DASH_PACKET);
	this->addNewPackets<EventPacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(END_EVENT_PACKET), END_EVENT_PACKET);
	this->addNewPackets<HealthPacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(PLAYER_HEALTH_PACKET), PLAYER_HEALTH_PACKET);
	this->addNewPackets<HealthPacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(RESSURECTION_PACKET), RESSURECTION_PACKET);
	this->addNewPackets<DamagePacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(AI_DAMAGE_TEXT_PACKET), AI_DAMAGE_TEXT_PACKET);
	this->addNewPackets<DamagePacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(BOSS_DAMAGE_TEXT_PACKET), BOSS_DAMAGE_TEXT_PACKET);
	this->addNewPackets<HealthPacket>(this->currentNetPacketSize, fullPackage, this->queueList.at(BOSS_HEALTH_PACKET), BOSS_HEALTH_PACKET);
	
	// Add the size of the netpacket at the start
	memcpy(this->memory, &this->currentNetPacketSize, sizeof(uint16_t));
}

std::shared_ptr<PacketQueueInterface> Packager::getQueue(const uint8_t& packetEnum)
{
	return this->queueList.at(packetEnum);
}

template<class packetType>
void Packager::addNewPackets(uint16_t &netPacketSize, bool& fullPackage, std::shared_ptr<PacketQueueInterface> const packetQueue, const uint8_t& packetEnum)
{
	packetType newPacket;
	std::size_t sizeOfPacketType = sizeof(packetType);
	uint16_t sizeOfnewPackets = 0;
	
	if ((packetSize - (netPacketSize + sizeof(MetaDataPacket) + sizeOfnewPackets)) < sizeOfPacketType)
	{
		fullPackage = true;
	}

	while (fullPackage == false && packetQueue->pop(&newPacket))
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
