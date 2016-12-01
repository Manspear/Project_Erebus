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

	bool NurnEngine::Initialize(unsigned char ip1, unsigned char ip2, unsigned char ip3, unsigned char ip4, int port)
	{
		address = Address(ip1, ip2, ip3, ip4, port);
		return netCommunication.InitializeCommunication(address.GetPort());
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
		return netCommunication.RecievePackage(address, data, size);
	}

	bool NurnEngine::Receive(Address & sender, void * data, int size)
	{
		return netCommunication.RecievePackage(sender, data, size);
	}

	void NurnEngine::Shutdown()
	{
		netCommunication.Shutdown();
	}
}
