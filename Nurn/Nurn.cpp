#include "Nurn.hpp"

namespace Nurn
{
	NurnEngine::NurnEngine()
	{
		networkSocket = 0;
		return;
	}

	NurnEngine::~NurnEngine()
	{
		CloseSocket();
		return;
	}

	bool NurnEngine::InitializeSockets()
	{
		#if PLATFORM == PLATFORM_WINDOWS
				WSADATA WsaData;
				return WSAStartup(MAKEWORD(2, 2), &WsaData) == NO_ERROR;
		#else
				return true;
		#endif	
	}

	void NurnEngine::ShutdownSockets()
	{
		#if PLATFORM == PLATFORM_WINDOWS
				WSACleanup();
		#endif	
	}

	bool NurnEngine::CreateUDPSocket(const unsigned short & port)
	{
		assert(!IsOpen());

		// create socket

		networkSocket = ::socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);

		if (socket <= 0)
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

	void NurnEngine::CloseSocket()
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
	bool NurnEngine::Send(const Address & destination, const void * data, int size)
	{
		assert(data);
		assert(size > 0);

		if (socket == 0)
			return false;

		sockaddr_in address;
		address.sin_family = AF_INET;
		address.sin_addr.s_addr = htonl(destination.GetAddress());
		address.sin_port = htons((unsigned short)destination.GetPort());

		int sent_bytes = sendto(networkSocket, (const char*)data, size, 0, (sockaddr*)&address, sizeof(sockaddr_in));

		return sent_bytes == size;
	}

	int NurnEngine::Receive(Address & sender, void * data, int size)
	{
		assert(data);
		assert(size > 0);

		if (socket == 0)
			return false;

		#if PLATFORM == PLATFORM_WINDOWS
				typedef int socklen_t;
		#endif

		sockaddr_in from;
		socklen_t fromLength = sizeof(from);

		int received_bytes = recvfrom(networkSocket, (char*)data, size, 0, (sockaddr*)&from, &fromLength);

		if (received_bytes <= 0)
			return 0;

		unsigned int address = ntohl(from.sin_addr.s_addr);
		unsigned int port = ntohs(from.sin_port);

		sender = Address(address, port);

		return received_bytes;
	}


	bool NurnEngine::IsOpen() const
	{
		return socket != 0;
	}
}
