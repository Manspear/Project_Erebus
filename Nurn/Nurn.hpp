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

#include <iostream>
#include <assert.h>
#include "Address.hpp"


#ifdef USING_UDP
#include "UDPCommunication.hpp"
#elif USING_TCP
#include "TCPCommunication.hpp"
#endif

namespace Nurn
{
	class NURN_API NurnEngine 
	{
	public:
		NurnEngine();
		virtual ~NurnEngine();

		bool InitializeHost(uint16_t port = 35500);
		// Takes an ipv4 address with each of the 255 values seperated by commas, for example ( 127, 0, 0, 1 )
		bool InitializeClient(uint8_t ip1, uint8_t ip2, uint8_t ip3, uint8_t ip4, uint16_t destPort = 35500, uint16_t origPort = 35500);

		bool AcceptCommunication();

		bool Send(const void * data, int size);
		bool Send(const Address & destination, const void * data, int size);

		bool Receive(void * data, int size);
		bool Receive(Address & sender, void * data, int size);

		void Shutdown();

	private:
		Address address;

#ifdef USING_UDP
		UDPCommunication netCommunication;
#elif USING_TCP
		TCPCommunication netCommunication;
#endif
	};
}