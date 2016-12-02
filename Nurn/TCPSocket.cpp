#include "TCPSocket.hpp"

namespace Nurn
{
	TCPSocket::TCPSocket()
	{

	}
	TCPSocket::~TCPSocket()
	{

	}

	bool TCPSocket::CreateSocket(const unsigned short & port)
	{
		assert(!IsOpen());

		// create socket

		networkSocket = ::socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);

		if (networkSocket <= 0)
		{
			printf("failed to create socket\n");
			networkSocket = 0;
			return false;
		}

		// bind to port

		sockaddr_in address;
		address.sin_family = AF_INET;
		address.sin_addr.s_addr = INADDR_ANY;
		address.sin_port = htons((unsigned short)port);

		if (bind(networkSocket, (const sockaddr*)&address, sizeof(sockaddr_in)) < 0)
		{
			printf("failed to bind socket\n");
			CloseSocket();
			return false;
		}

		// set TCP_NODELAY

		int flag = 1;
		int result = setsockopt(networkSocket, IPPROTO_TCP, TCP_NODELAY, (char *)&flag, sizeof(int));

		if (result < 0)
		{
			printf("failed to set TCP_NODELAY \n");
			CloseSocket();
			return false;
		}

		// set non-blocking io

#if PLATFORM == PLATFORM_MAC || PLATFORM == PLATFORM_UNIX

		int nonBlocking = 1;
		if (fcntl(networkSocket, F_SETFL, O_NONBLOCK, nonBlocking) == -1)
		{
			printf("failed to set non-blocking socket\n");
			CloseSocket();
			return false;
		}

#elif PLATFORM == PLATFORM_WINDOWS

		DWORD nonBlocking = 1;
		if (ioctlsocket(networkSocket, FIONBIO, &nonBlocking) != 0)
		{
			printf("failed to set non-blocking socket\n");
			CloseSocket();
			return false;
		}

#endif

		return true;
	}
}