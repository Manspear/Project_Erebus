#include "Packager.hpp"

#ifdef DEBUGGING_NETWORK
Packager::Packager(DebugNetwork * debugNetwork_ptr)
{
	this->debugNetwork_ptr = debugNetwork_ptr;
#else
Packager::Packager()
{
#endif
	this->memory = new unsigned char[packetSize];
	this->currentNetPacketSize = 0;
}

Packager::~Packager()
{
	Packager::shutdown();
	if (this->memory)
	{
		delete[] this->memory;
		this->memory = 0;
	}
}

void Packager::shutdown()
{
	while (queueList.size() > 0)
	{
		queueList.pop_back();
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
	for (uint8_t i = 0; i < queueList.size(); ++i)
	{
		this->addNewPackets(this->currentNetPacketSize, fullPackage, i);
	}

	// Add the size of the netpacket at the start
	memcpy(this->memory, &this->currentNetPacketSize, sizeof(uint16_t));
}

std::shared_ptr<PacketQueueInterface> Packager::getQueue(const uint8_t& packetEnum)
{
	return this->queueList.at(packetEnum);
}

void Packager::addNewPackets(uint16_t &netPacketSize, bool& fullPackage, const uint8_t& packetEnum)
{
	uint16_t sizeOfnewPackets = 0;
	std::shared_ptr<PacketQueueInterface> const packetQueue = this->queueList.at(packetEnum);
	std::size_t sizeOfPacketType = packetQueue->getPacketSize();
	void * newPacket = malloc(sizeOfPacketType);
	
	if ((packetSize - (netPacketSize + sizeof(Packet::MetaDataPacket) + sizeOfnewPackets)) < sizeOfPacketType)
	{
		fullPackage = true;
	}

	while (fullPackage == false && packetQueue->pop(newPacket))
	{
		// Add Packet to the memory ( ...[MetaData][packet][packet]... )
		memcpy(this->memory + netPacketSize + sizeof(Packet::MetaDataPacket) + sizeOfnewPackets, newPacket, sizeOfPacketType);
		sizeOfnewPackets += sizeOfPacketType;
		// Only add a packet if there's enough space in the buffer
		if ((packetSize - (netPacketSize + sizeof(Packet::MetaDataPacket) + sizeOfnewPackets)) < sizeOfPacketType)
		{
			fullPackage = true;
		}
	}

	if (sizeOfnewPackets > 0)
	{
		this->addMetaDataPacket(packetEnum, netPacketSize, sizeOfnewPackets);

		netPacketSize += sizeOfnewPackets; // Should now point at the location of the next MetaDataPacket
	}
	free(newPacket);
}

void Packager::addMetaDataPacket(const uint16_t& type, uint16_t& netPacketSize, const uint16_t& sizeInBytes)
{
	memcpy(this->memory + netPacketSize, &Packet::MetaDataPacket(type, sizeInBytes), sizeof(Packet::MetaDataPacket));

	netPacketSize += sizeof(Packet::MetaDataPacket);
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

template<typename packetType>
void Packager::addNewQueue(const int& size)
{
	this->queueList.emplace_back(new PacketQueue<packetType>(size));
}

template void Packager::addNewQueue<Packet::AIStatePacket>(const int& size);
template void Packager::addNewQueue<Packet::AnimationPacket>(const int& size);
template void Packager::addNewQueue<Packet::ChangeSpellsPacket>(const int& size);
template void Packager::addNewQueue<Packet::ChargingPacket>(const int& size);
template void Packager::addNewQueue<Packet::DamagePacket>(const int& size);
template void Packager::addNewQueue<Packet::DashPacket>(const int& size);
template void Packager::addNewQueue<Packet::EventPacket>(const int& size);
template void Packager::addNewQueue<Packet::HealthPacket>(const int& size);
template void Packager::addNewQueue<Packet::QuickBlendPacket>(const int& size);
template void Packager::addNewQueue<Packet::SpellPacket>(const int& size);
template void Packager::addNewQueue<Packet::TransformPacket>(const int& size);