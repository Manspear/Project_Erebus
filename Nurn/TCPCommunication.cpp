#include "TCPCommunication.hpp"

namespace Nurn
{
	TCPCommunication::TCPCommunication()
	{

	}

	TCPCommunication::~TCPCommunication()
	{

	}

	bool TCPCommunication::SendPackage(const Address & destination, const void * data, int size)
	{
		assert(data);
		assert(size > 0);

		int networkSocket = communicationSocket.GetSocket();

		if (networkSocket == 0)
		{
			return false;
		}

		// TODO Not hardcode the messagesize to be 1500
		// Check if message larger then max size of the connection(TCP doesnt care)
		if (size > 1500)
		{
			// TODOCM Fix better message
			throw std::runtime_error("Attempting to send too large message.");
		}

		// Attempt to send data to socket,
		int32_t Return = send(networkSocket, (char*)data, size, 0);

		// If some error
		if (Return == SOCKET_ERROR)
		{
			// Error cause of Socket is buissy in non-blocking mode, non-fatal error
			int errorCode = WSAGetLastError();
			if (errorCode != WSAEWOULDBLOCK && errorCode != WSAECONNABORTED)
			{
				// TODOCM Log message
			}
			return false;
		}

		return true;
	}

	bool TCPCommunication::RecievePackage(Address & sender, void * data, int size)
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

		int received_bytes = recvfrom(networkSocket, (char*)data, size, 0, (sockaddr*)&from, &fromLength);

		if (received_bytes <= 0)
		{
			return 0;
		}

		unsigned int address = from.sin_addr.s_addr;
		unsigned int port = ntohs(from.sin_port);

		sender = Address(address, port);

		return received_bytes;
	}
}