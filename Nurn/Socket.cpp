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
				close(networkSocket);
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


	int& Socket::GetSocket()
	{
		return networkSocket;
	}

	bool Socket::SetNonBlocking()
	{
#if PLATFORM == PLATFORM_MAC || PLATFORM == PLATFORM_UNIX
		int nonBlocking = 1;
		if (fcntl(networkSocket, F_SETFL, O_NONBLOCK, nonBlocking) == -1)
#elif PLATFORM == PLATFORM_WINDOWS
		DWORD nonBlocking = 1;
		if (ioctlsocket(networkSocket, FIONBIO, &nonBlocking) != 0)
#endif
		{
			printf("failed to set non-blocking socket\n");
			CloseSocket();
			return false;
		}

		return true;
	}

	bool Socket::BindSocket(const uint16_t & port)
	{
		sockaddr_in address;
		address.sin_family = AF_INET;
		address.sin_addr.s_addr = INADDR_ANY;
		address.sin_port = htons(port);

		if (bind(networkSocket, (const sockaddr*)&address, sizeof(sockaddr_in)) < 0)
		{
			printf("failed to bind socket\n");
			CloseSocket();
			return false;
		}
		return true;
	}
}