#include "Communication.hpp"

namespace Nurn
{
	Communication::Communication()
	{
	}

	Communication::~Communication()
	{
	}

	bool Communication::InitializeCommunication(int port)
	{
		bool result = true;

		result = socket.InitializeSockets();
		if (!result)
		{
			printf("Socket failed to initialize");
			return result;
		}

		result = socket.CreateSocket(port);
		if (!result)
		{
			printf("Socket creation failed");
			return result;
		}

		return result;
	}

	void Communication::Shutdown()
	{
		socket.ShutdownSockets();
	}
}