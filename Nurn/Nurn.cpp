#include "Nurn.hpp"

namespace Nurn
{
	NurnEngine::NurnEngine()
	{
		return;
	}

	NurnEngine::~NurnEngine()
	{
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


	bool NurnEngine::Receive(void * data, int size)
	{
		return netCommunication.ReceivePackage(address, data, size);
	}

	void NurnEngine::Shutdown()
	{
		netCommunication.Shutdown();
	}

	void NurnEngine::buildTransformPacket(const uint32_t& id, const float& x, const float& y, const float& z)
	{

		std::cout << "Sending - x: " << x << " y: " << y << " z: " << z << std::endl;
	}

	TransformPacket NurnEngine::fetchTransformPacket()
	{
		TransformPacket result = TransformPacket();
		result.data.x = 1;
		result.data.y = 2;
		result.data.z = 3;
		return result;
	}
}
