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

namespace Nurn
{
	class Socket
	{
	public:
		Socket();
		virtual ~Socket();
		bool InitializeSockets();
		virtual bool CreateSocket(const unsigned short & port) = 0;
		void ShutdownSockets();
		void CloseSocket();
		bool IsOpen() const;

		int GetSocket();

	protected:
		int networkSocket;
	};
}