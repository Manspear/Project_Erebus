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

#if PLATFORM == PLATFORM_WINDOWS
		typedef int socklen_t;
#endif

		sockaddr_in from;
		socklen_t fromLength = sizeof(from);

		int32_t received_bytes = recvfrom(networkSocket, (char*)data, size, 0, (sockaddr*)&from, &fromLength);

		if (received_bytes <= 0)
		{
			return false;
		}

		uint32_t address = from.sin_addr.s_addr;
		uint16_t port = ntohs(from.sin_port);

		sender = Address(address, port);

		return received_bytes;
	}
}