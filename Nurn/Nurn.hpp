#pragma once

#ifdef NURN_EXPORTS
#define NURN_API __declspec(dllexport)
#else
#define NURN_API __declspec(dllimport)
#endif

// platform detection

#define PLATFORM_WINDOWS  1
#define PLATFORM_MAC      2
#define PLATFORM_UNIX     3

#if defined(_WIN32)
#define PLATFORM PLATFORM_WINDOWS
#elif defined(__APPLE__)
#define PLATFORM PLATFORM_MAC
#else
#define PLATFORM PLATFORM_UNIX
#endif

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

#include <iostream>
#include <assert.h>
#include "Address.hpp"

namespace Nurn
{
	class NURN_API NurnEngine 
	{
	public:
		NurnEngine(void);
		~NurnEngine(void);
		bool InitializeSockets();
		void ShutdownSockets();
		bool CreateUDPSocket(const unsigned short & port);
		void CloseSocket();

		bool Send(const Address & destination, const void * data, int size);
		int Receive(Address & sender, void * data, int size);

	private:
		bool IsOpen() const;

		int networkSocket;
	};
}