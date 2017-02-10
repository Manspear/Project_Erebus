#include "Nurn.hpp"

namespace Nurn
{
	NurnEngine::NurnEngine()
	{
		this->packager = new Packager();
		this->packetFilter = new PacketFilter();
		return;
	}

	NurnEngine::~NurnEngine()
	{
		NurnEngine::Shutdown();
		return;
	}

	bool NurnEngine::InitializeHost(uint16_t port)
	{
		if (!packager)
		{
			this->packager = new Packager();
		}
		if (!packetFilter)
		{
			this->packetFilter = new PacketFilter();
		}
		return netCommunication.InitializeCommunicationHost(port);
	}

	bool NurnEngine::InitializeClient(uint8_t ip1, uint8_t ip2, uint8_t ip3, uint8_t ip4, uint16_t destPort, uint16_t origPort)
	{
		if (!packager)
		{
			this->packager = new Packager();
		}
		if (!packetFilter)
		{
			this->packetFilter = new PacketFilter();
		}
		address = Address(ip1, ip2, ip3, ip4, destPort);
		return netCommunication.InitializeCommunicationClient(origPort, address);
	}

	bool NurnEngine::AcceptCommunication()
	{
		return netCommunication.AcceptCommunication(address);
	}

	bool NurnEngine::Send(const void * data, int size)
	{
		return netCommunication.SendPackage(address, data, size);
	}

	bool NurnEngine::Send(const Address & destination, const void * data, int size)
	{
		return netCommunication.SendPackage(destination, data, size);
	}

	bool NurnEngine::Send()
	{
		this->packager->buildNetPacket();
		if (this->packager->getCurrentNetPacketSize() > 6)
		{
			this->Send(this->packager->getPacketPointer(), this->packager->getCurrentNetPacketSize());
		}

		return true;
	}

	bool NurnEngine::Receive(void * data, int size)
	{
		return netCommunication.ReceivePackage(address, data, size);
	}

	bool NurnEngine::Receive()
	{
		unsigned char buffer[packetSize];
		bool bytes_read = this->Receive(buffer, packetSize);
		if (bytes_read)
		{
			this->packetFilter->openNetPacket(buffer);
		}
		return true;
	}


	void NurnEngine::Shutdown()
	{
		if (this->packager)
		{
			delete this->packager;
			this->packager = 0;
		}

		if (this->packetFilter)
		{
			delete this->packetFilter;
			this->packetFilter = 0;
		}
		netCommunication.Shutdown();
	}

	void NurnEngine::pushTransformPacket(const TransformPacket& packet)
	{
		this->packager->pushTransformPacket(packet);
	}

	bool NurnEngine::fetchTransformPacket(TransformPacket &packet)
	{
		bool result = false;

		result = this->packetFilter->getTransformQueue()->pop(packet);

		return result;
	}

	void NurnEngine::pushAnimationPacket(const AnimationPacket& packet)
	{
		this->packager->pushAnimationPacket(packet);
	}

	bool NurnEngine::fetchAnimationPacket(AnimationPacket& packet)
	{
		bool result = false;

		result = this->packetFilter->getAnimationQueue()->pop(packet);

		return result;
	}

	void NurnEngine::pushAIStatePacket(const AIStatePacket& packet)
	{
		this->packager->pushAIStatePacket(packet);
	}

	bool NurnEngine::fetchAIPacket(AIStatePacket& packet)
	{
		bool result = false;

		result = this->packetFilter->getAIStateQueue()->pop(packet);

		return result;
	}

	void NurnEngine::pushSpellPacket(const SpellPacket& packet)
	{
		this->packager->pushSpellPacket(packet);
	}

	bool NurnEngine::fetchSpellPacket(SpellPacket& packet)
	{
		bool result = false;

		result = this->packetFilter->getSpellQueue()->pop(packet);

		return result;
	}

	void NurnEngine::pushAITransformPacket(const TransformPacket& packet)
	{
		this->packager->pushAITransformPacket(packet);
	}

	bool NurnEngine::fetchAITransformPacket(TransformPacket& packet)
	{
		bool result = false;

		result = this->packetFilter->getAITransformQueue()->pop(packet);

		return result;
	}

	void NurnEngine::pushChargingPacket(const ChargingPacket& packet)
	{
		this->packager->pushChargingPacket(packet);
	}

	bool NurnEngine::fetchChargingPacket(ChargingPacket& packet)
	{
		bool result = false;

		result = this->packetFilter->getChargingQueue()->pop(packet);

		return result;
	}

	void NurnEngine::pushQuickBlendPacket(const QuickBlendPacket& packet)
	{
		this->packager->pushQuickBlendPacket(packet);
	}

	bool NurnEngine::fetchQuickBlendPacket(QuickBlendPacket& packet)
	{
		bool result = false;

		result = this->packetFilter->getQuickBlendQueue()->pop(packet);

		return result;
	}

	void NurnEngine::pushDamagePacket(const DamagePacket& packet)
	{
		this->packager->pushDamagePacket(packet);
	}

	bool NurnEngine::fetchDamagePacket(DamagePacket& packet)
	{
		bool result = false;

		result = this->packetFilter->getDamageQueue()->pop(packet);

		return result;
	}

	void NurnEngine::pushChangeSpellsPacket(const ChangeSpellsPacket& packet)
	{
		this->packager->pushChangeSpellsPacket(packet);
	}

	bool NurnEngine::fetchChangeSpellsPacket(ChangeSpellsPacket& packet)
	{
		bool result = false;

		result = this->packetFilter->getChangeSpellsQueue()->pop(packet);

		return result;
	}

}
