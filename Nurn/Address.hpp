#pragma once

#include "NetworkDefines.hpp"
#include <stdint.h>

// Standard libraries
#if PLATFORM == PLATFORM_WINDOWS
#include <winsock2.h>
#pragma comment( lib, "wsock32.lib" )
#elif PLATFORM == PLATFORM_UNIX
#include <sys/socket.h>
#include <netinet/in.h>
#include <fcntl.h>
#endif

namespace Nurn
{
	class Address
	{
	public:
		Address();
		// The IPAddress expected to be network endian, use htonl() if needed
		Address(uint32_t ip, uint16_t port);
		Address(uint8_t a, uint8_t b, uint8_t c, uint8_t d, uint16_t port);

		uint32_t GetIp() const;
		uint8_t GetA() const;
		uint8_t GetB() const;
		uint8_t GetC() const;
		uint8_t GetD() const;
		uint16_t GetPort() const;
		SOCKADDR_IN GetAddress() const;

		void SetIP(uint8_t a, uint8_t b, uint8_t c, uint8_t d);
		void SetAddress(SOCKADDR_IN address);

		void ComposeAdress();

		bool operator == (const Address & other) const;
		bool operator != (const Address & other) const;

	private:

		// The IPAddress stored as network endian
		union ipunion 
		{
			uint32_t address;
			struct ipParts
			{
				uint8_t a;
				uint8_t b;
				uint8_t c;
				uint8_t d;
			}part;
		}ip;

		// The port stored as host endian
		uint16_t port;
		SOCKADDR_IN address;
	};
}