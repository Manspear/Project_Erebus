#include "Socket.hpp"

namespace Nurn
{

	Socket::Socket()
	{
		networkSocket = 0;
		return;
	}

	Socket::~Socket()
	{
		CloseSocket();
		return;
	}

	bool Socket::InitializeSockets()
	{
#if PLATFORM == PLATFORM_WINDOWS
			WSADATA WsaData;
			return WSAStartup(MAKEWORD(2, 2), &WsaData) == NO_ERROR;
#else
			return true;
#endif	
	}

	void Socket::ShutdownSockets()
	{
#if PLATFORM == PLATFORM_WINDOWS
			WSACleanup();
#endif	
	}

	void Socket::CloseSocket()
	{
		if (networkSocket != 0)
		{
#if PLATFORM == PLATFORM_MAC || PLATFORM == PLATFORM_UNIX
				close(socket);
#elif PLATFORM == PLATFORM_WINDOWS
				closesocket(networkSocket);
#endif
				networkSocket = 0;
		}
	}

	bool Socket::IsOpen() const
	{
		return networkSocket != 0;
	}


	int Socket::GetSocket()
	{
		return networkSocket;
	}
}