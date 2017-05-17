#include "PacketFilter.hpp"

#ifdef DEBUGGING_NETWORK
PacketFilter::PacketFilter(DebugNetwork * debugNetwork_ptr)
{
	this->debugNetwork_ptr = debugNetwork_ptr;
#else
PacketFilter::PacketFilter()
{
#endif
}

PacketFilter::~PacketFilter()
{
	PacketFilter::shutdown();
}

void PacketFilter::shutdown()
{
	while (queueList.size() > 0)
	{
		queueList.pop_back();
	}
}

void PacketFilter::pushPacketsToQueue(const unsigned char * const memoryPointer, uint16_t bytesRead, Packet::MetaDataPacket * metaDataPacket)
//void PacketFilter::pushPacketsToQueue()
{
	//this->queueList.at(metaDataPacket->metaData.packetType)->batchPush(memoryPointer, bytesRead, metaDataPacket->metaData.sizeInBytes);

	size_t packetSize = this->queueList.at(metaDataPacket->metaData.packetType)->getPacketSize();
	void * newPacket = malloc(packetSize);
	uint16_t amountTransfered = 0;
	while (metaDataPacket->metaData.sizeInBytes > (amountTransfered * packetSize))
	{
		memcpy(newPacket, memoryPointer + bytesRead + (amountTransfered * packetSize), packetSize);
		this->queueList.at(metaDataPacket->metaData.packetType)->push(newPacket);
		amountTransfered++;
	}
}

void PacketFilter::openNetPacket(const unsigned char * const memoryPointer)
{
	uint16_t bytesRead = sizeof(uint16_t); // Start reading right after where the value of bytesLeft were located in the packet.
	uint16_t sizeOfNetPacket =  memoryPointer[0] | memoryPointer[1] << 8; // Size of the content. The first 2 bytes are read immideately.
	Packet::MetaDataPacket metaDataPacket;

	while (bytesRead < sizeOfNetPacket)
	{
		memcpy(metaDataPacket.bytes, memoryPointer + bytesRead, sizeof(Packet::MetaDataPacket));
		bytesRead += sizeof(Packet::MetaDataPacket);

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
			if ( 0 <= metaDataPacket.metaData.packetType && metaDataPacket.metaData.packetType < queueList.size())
			{
				std::chrono::system_clock::time_point start = std::chrono::system_clock::now();

				pushPacketsToQueue(memoryPointer, bytesRead, &metaDataPacket);

				uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();

				std::ofstream testdatafile;
				testdatafile.open("simplepushtime.txt", std::ofstream::app);
				testdatafile << duration << std::endl;
				testdatafile.close();
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

template<typename packetType>
void PacketFilter::addNewQueue(const int& size)
{
	this->queueList.emplace_back(new PacketQueue<typename packetType>(size));
}

template void PacketFilter::addNewQueue<Packet::AIStatePacket>(const int& size);
template void PacketFilter::addNewQueue<Packet::AnimationPacket>(const int& size);
template void PacketFilter::addNewQueue<Packet::ChangeSpellsPacket>(const int& size);
template void PacketFilter::addNewQueue<Packet::ChargingPacket>(const int& size);
template void PacketFilter::addNewQueue<Packet::DamagePacket>(const int& size);
template void PacketFilter::addNewQueue<Packet::DashPacket>(const int& size);
template void PacketFilter::addNewQueue<Packet::EventPacket>(const int& size);
template void PacketFilter::addNewQueue<Packet::HealthPacket>(const int& size);
template void PacketFilter::addNewQueue<Packet::QuickBlendPacket>(const int& size);
template void PacketFilter::addNewQueue<Packet::SpellPacket>(const int& size);
template void PacketFilter::addNewQueue<Packet::TransformPacket>(const int& size);