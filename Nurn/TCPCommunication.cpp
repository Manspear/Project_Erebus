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
			throw std::runtime_error("Attempting to send too large message.");
		}

		// Attempt to send data to socket,
		int32_t Return = send(networkSocket, (char*)data, size, 0);

		// If some error
		if (Return == SOCKET_ERROR)
		{
			return false;
		}

		return true;
	}

	int TCPCommunication::ReceivePackage(Address & sender, void * data, int size)
	{
		assert(data);
		assert(size > 0);

		int networkSocket = communicationSocket.GetSocket();

		if (networkSocket == 0)
		{
			return 0;
		}

		int received_bytes = recv(networkSocket, (char*)data, size, 0);

		return received_bytes;
	}

	int TCPCommunication::Peek(Address & sender, void * data, int size)
	{
		assert(data);
		assert(size > 0);

		int networkSocket = communicationSocket.GetSocket();

		if (networkSocket == 0)
		{
			return 0;
		}

		int received_bytes = recv(networkSocket, (char*)data, size, MSG_PEEK);

		return received_bytes;
	}
}