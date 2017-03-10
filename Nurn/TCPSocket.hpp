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

#include "Socket.hpp"
#include <iostream>
#include <assert.h>

namespace Nurn
{
	class TCPSocket : public Socket
	{
	public:
		TCPSocket();
		virtual ~TCPSocket();
		bool CreateSocket() override;
		bool ConnectSocket(const Address & connectionAddress) override;
		bool AcceptSocket(int & acceptedSocket, Address & connectionAddress) override;
		bool CreateWaitingSocket(const uint16_t & port) override;
		bool CreateAndConnectSocket(const uint16_t & port, const Address& connectionAddress) override;
		bool SetNODELAY();
	};
}