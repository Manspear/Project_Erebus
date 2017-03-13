#pragma once

#include "NetworkDefines.hpp"

#if PLATFORM == PLATFORM_WINDOWS

#include <winsock2.h>
#pragma comment( lib, "ws2_32.lib" )

#else PLATFORM == PLATFORM_MAC || PLATFORM == PLATFORM_UNIX

#include <sys/socket.h>
#include <netinet/in.h>
#include <fcntl.h>

#endif

#include <iostream>
#include "Address.hpp"

namespace Nurn
{
	class Socket
	{
	public:
		Socket();
		virtual ~Socket();
		bool InitializeSockets();
		virtual bool CreateSocket() = 0;
		virtual bool ConnectSocket(const Address & connectionAddress) = 0;
		virtual bool AcceptSocket(int & acceptedSocket, Address & connectionAddress) = 0;
		virtual bool CreateWaitingSocket(const uint16_t & port) = 0;
		virtual bool CreateAndConnectSocket(const uint16_t & port, const Address& connectionAddress) = 0;
		void ShutdownSockets();
		void CloseSocket();
		bool IsOpen() const;

		int& GetSocket();

	protected:
		bool SetNonBlocking();
		bool BindSocket(const uint16_t & port);

		int networkSocket;
	};
}