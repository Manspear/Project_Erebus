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
		int networkSocket = socket.GetSocket();

		if (networkSocket == 0)
		{
			return false;
		}

		sockaddr_in address;
		address.sin_family = AF_INET;
		address.sin_addr.s_addr = htonl(destination.GetAddress());
		address.sin_port = htons((unsigned short)destination.GetPort());

		int sent_bytes = sendto(networkSocket, (const char*)data, size, 0, (sockaddr*)&address, sizeof(sockaddr_in));

		return sent_bytes == size;
	}
	bool UDPCommunication::RecievePackage(Address & sender, void * data, int size)
	{
		assert(data);
		assert(size > 0);

		int networkSocket = socket.GetSocket();

		if (networkSocket == 0)
		{
			return false;
		}

#if PLATFORM == PLATFORM_WINDOWS
		typedef int socklen_t;
#endif

		sockaddr_in from;
		socklen_t fromLength = sizeof(from);

		int received_bytes = recvfrom(networkSocket, (char*)data, size, 0, (sockaddr*)&from, &fromLength);

		if (received_bytes <= 0)
		{
			return 0;
		}

		unsigned int address = ntohl(from.sin_addr.s_addr);
		unsigned int port = ntohs(from.sin_port);

		sender = Address(address, port);

		return received_bytes;
	}
}