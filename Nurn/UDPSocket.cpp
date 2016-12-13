#include "UDPSocket.hpp"

namespace Nurn
{

	UDPSocket::UDPSocket() {}

	UDPSocket::~UDPSocket() {}

	bool UDPSocket::CreateSocket(const uint16_t & port)
	{
		assert(!IsOpen());

		// create socket

		networkSocket = ::socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);

		if (networkSocket <= 0)
		{
			printf("failed to create socket\n");
			networkSocket = 0;
			return false;
		}

		return true;
	}

	bool UDPSocket::ConnectSocket(const Address & connectionAddress)
	{
		return true;
	}

	bool UDPSocket::AcceptSocket(int & acceptedSocket, Address & connectionAddress)
	{
		return true;
	}
	bool UDPSocket::CreateWaitingSocket(const uint16_t & port)
	{

		// Create the socket

		if (!CreateSocket(port))
		{
			return false;
		}

		// bind to port

		if (!BindSocket(port))
		{
			return false;
		}

		// set non-blocking io

		if (!SetNonBlocking())
		{
			return false;
		}

		return true;
	}

	bool UDPSocket::CreateAndConnectSocket(const uint16_t & port, const Address& connectionAddress)
	{
		// Create the socket

		if (!CreateSocket(port))
		{
			return false;
		}

		// bind to port

		if (!BindSocket(port))
		{
			return false;
		}

		// set non-blocking io

		if (!SetNonBlocking())
		{
			return false;
		}

		return true;
	}

}