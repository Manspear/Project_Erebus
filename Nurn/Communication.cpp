#include "Communication.hpp"

namespace Nurn
{
	Communication::Communication()
	{
	}

	Communication::~Communication()
	{
	}

	bool Communication::InitializeCommunicationHost(const uint16_t & port)
	{
		bool result = true;

		result = listenSocket.InitializeSockets();
		if (!result)
		{
			printf("Socket failed to initialize\n");
			return result;
		}

		result = listenSocket.CreateWaitingSocket(port);
		if (!result)
		{
			printf("Socket creation failed\n");
			return result;
		}

		return result;
	}

	bool Communication::InitializeCommunicationClient(const uint16_t & port, const Address & destination)
	{
		bool result = true;

		result = communicationSocket.InitializeSockets();
		if (!result)
		{
			printf("Socket failed to initialize\n");
			return result;
		}

		result = communicationSocket.CreateAndConnectSocket(port, destination);
		if (!result)
		{
			printf("Socket creation failed\n");
			return result;
		}

		return result;
	}

	bool Communication::AcceptCommunication(Address & connectionAddress)
	{
		return listenSocket.AcceptSocket(communicationSocket.GetSocket(), connectionAddress);
	}

	void Communication::Shutdown()
	{
		listenSocket.ShutdownSockets();
		communicationSocket.ShutdownSockets();
		listenSocket.CloseSocket();
		communicationSocket.CloseSocket();
	}

	bool Communication::ConnectSocket(const Address & connectionAddress)
	{
		return communicationSocket.ConnectSocket(connectionAddress);
	}
}