#pragma once

#include "NetworkDefines.hpp"

#if PLATFORM == PLATFORM_WINDOWS

#include <winsock2.h>
#pragma comment( lib, "wsock32.lib" )
//#pragma comment( lib, "ws2_32.lib" )
//#pragma warning( disable : 4996  ) // get rid of all secure crt warning. (sscanf_s)

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
		TCPSocket();
		virtual ~TCPSocket();
		bool CreateSocket(const uint16_t & port) override;
		bool ConnectSocket(const Address & connectionAddress) override;
		bool AcceptSocket(SOCKET & acceptedSocket, Address & connectionAddress) override;
		bool CreateWaitingSocket(const Address& connectionAddress) override;
		bool CreateAndConnectSocket(const Address& connectionAddress) override;
		bool SetNODELAY();
	};
}