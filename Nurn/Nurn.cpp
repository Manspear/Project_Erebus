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
		return netCommunication.InitializeCommunicationHost(port);
	}

	bool NurnEngine::InitializeClient(uint8_t ip1, uint8_t ip2, uint8_t ip3, uint8_t ip4, uint16_t destPort, uint16_t origPort)
	{
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
		int bytes_read = this->Receive(this->buffer, packetSize);
		if (bytes_read)
		{
			this->packetFilter->openNetPacket(this->buffer);
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

	void NurnEngine::buildTransformPacket(const uint16_t& id, const float& pos_x, const float& pos_y, const float& pos_z, const float& lookAt_x, const float& lookAt_y, const float& lookAt_z, const float& rotation_x, const float& rotation_y, const float& rotation_z)
	{
		//std::cout << "Sending position - x: " << pos_x << " y: " << pos_y << " z: " << pos_z << std::endl;
		//std::cout << "Sending lookAt - x: " << lookAt_x << " y: " << lookAt_y << " z: " << lookAt_z << std::endl << std::endl;
		this->packager->buildTransformPacket(id, pos_x, pos_y, pos_z, lookAt_x, lookAt_y, lookAt_z, rotation_x, rotation_y, rotation_z);
	}

	bool NurnEngine::fetchTransformPacket(TransformPacket &packet)
	{
		bool result = false;

		result = this->packetFilter->getTransformQueue()->pop(packet);

		return result;
	}

	void NurnEngine::buildAnimationPacket(const uint16_t& id)
	{
		this->packager->buildAnimationPacket(id);
	}

	bool NurnEngine::fetchAnimationPacket(AnimationPacket& packet)
	{
		bool result = false;

		result = this->packetFilter->getAnimationQueue()->pop(packet);

		return result;
	}

	void NurnEngine::buildAIPacket(const uint16_t& id)
	{
		this->packager->buildAIPacket(id);
	}

	bool NurnEngine::fetchAIPacket(AIPacket& packet)
	{
		bool result = false;

		result = this->packetFilter->getAIQueue()->pop(packet);

		return result;
	}


}
