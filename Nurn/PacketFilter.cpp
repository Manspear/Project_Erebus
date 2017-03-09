#include "PacketFilter.hpp"

#ifdef DEBUGGING_NETWORK
PacketFilter::PacketFilter(DebugNetwork * debugNetwork_ptr)
{
	this->debugNetwork_ptr = debugNetwork_ptr;
#else
PacketFilter::PacketFilter()
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
}

PacketFilter::~PacketFilter()
{
	while (queueList.size() > 0)
	{
		queueList.pop_back();
	}
}

void PacketFilter::openNetPacket(const unsigned char * const memoryPointer)
{
	uint16_t bytesRead = sizeof(uint16_t); // Start reading right after where the value of bytesLeft were located in the packet.
	uint16_t sizeOfNetPacket =  memoryPointer[0] | memoryPointer[1] << 8; // Size of the content. The first 2 bytes are read immideately.
	MetaDataPacket metaDataPacket;

	while (bytesRead < sizeOfNetPacket)
	{
		memcpy(metaDataPacket.bytes, memoryPointer + bytesRead, sizeof(MetaDataPacket));
		bytesRead += sizeof(MetaDataPacket);

		// For each metaDataPacket, do...

		if (metaDataPacket.metaData.sizeInBytes > 0)
		{
#ifdef DEBUGGING_NETWORK
			if (metaDataPacket.metaData.packetType == PING_PACKET)
			{
				this->debugNetwork_ptr->setPing();

				// Copy the PingPacket data to the PingPacket in DebugNetwork
				memcpy(&this->debugNetwork_ptr->getPingPacket(), memoryPointer + bytesRead, sizeof(PingPacket));

				if (this->debugNetwork_ptr->getPingPacket().data.loopNumber == 1)
				{
					// On Client
					//printf("Ping on client: %f", this->debugNetwork_ptr->getPing());

					this->debugNetwork_ptr->getPingPacket().data.loopNumber--;
				}
				else
				{
					// On Host
					//printf("Ping on host: %f", this->debugNetwork_ptr->getPing());

					this->debugNetwork_ptr->getPingPacket().data.loopNumber++;
				}

				// Send PingPacket back to the other player
				//printf("      loopNumber: %d\n", this->debugNetwork_ptr->getPingPacket().data.loopNumber);
				this->debugNetwork_ptr->setSendPingPacket(true);
			}
#endif
			if ( 0 <= metaDataPacket.metaData.packetType < queueList.size())
			{
				this->queueList.at(metaDataPacket.metaData.packetType)->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes);
			}
			else
			{
				std::cout << "Network subpacket not recognized" << std::endl; // RIP kernel panic
			}


			bytesRead += metaDataPacket.metaData.sizeInBytes;
		}
	}
}

std::shared_ptr<PacketQueueInterface> PacketFilter::getQueue(const uint8_t& packetEnum)
{
	return this->queueList.at(packetEnum);
}