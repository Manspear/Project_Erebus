#include "Communication.hpp"

namespace Nurn
{
	Communication::Communication()
	{
	}

	Communication::~Communication()
	{
	}

	bool Communication::InitializeCommunication(uint16_t port)
	{
		bool result = true;

		result = socket.InitializeSockets();
		if (!result)
		{
			printf("Socket failed to initialize\n");
			return result;
		}

		result = socket.CreateSocket(port);
		if (!result)
		{
			printf("Socket creation failed\n");
			return result;
		}

		return result;
	}

	void Communication::Shutdown()
	{
		socket.ShutdownSockets();
	}

	bool Communication::ConnectSocket(const Address & connectionAddress)
	{
		return socket.ConnectSocket(connectionAddress);
	}
}