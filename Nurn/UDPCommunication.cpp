#include "UDPCommunication.hpp"

namespace Nurn
{
	UDPCommunication::UDPCommunication()
	{

	}

	UDPCommunication::~UDPCommunication()
	{

	}		

	bool UDPCommunication::SendPackage(const Address & destination, const void * data, int size)
	{
		assert(data);
		assert(size > 0);
		int networkSocket = communicationSocket.GetSocket();

		if (networkSocket == 0)
		{
			return false;
		}

		int sent_bytes = sendto(networkSocket, (const char*)data, size, 0, (sockaddr*)&destination.GetAddress(), sizeof(sockaddr_in));

		return sent_bytes == size;
	}

	bool UDPCommunication::ReceivePackage(Address & sender, void * data, int size)
	{
		assert(data);
		assert(size > 0);

		int networkSocket = communicationSocket.GetSocket();

		if (networkSocket == 0)
		{
			return false;
		}

		int32_t received_bytes = recv(networkSocket, (char*)data, size, 0);

		if (received_bytes <= 0)
		{
			return false;
		}

		return received_bytes;
	}
}