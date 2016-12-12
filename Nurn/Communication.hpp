#pragma once

#include "NetworkDefines.hpp"
#include "Address.hpp"
#include <assert.h>

#ifdef USING_UDP
#include "UDPSocket.hpp"
#elif USING_TCP
#include "TCPSocket.hpp"
#endif

namespace Nurn
{
	class Communication
	{
	public:
		Communication();
		virtual ~Communication();

		virtual bool InitializeCommunication(uint16_t port);
		virtual bool SendPackage(const Address & destination, const void * data, int size) = 0;
		virtual bool RecievePackage(Address & sender, void * data, int size) = 0;
		virtual void Shutdown();
		bool ConnectSocket(const Address & connectionAddress);
		
	protected:

#ifdef USING_UDP
		UDPSocket socket;
#elif USING_TCP
		TCPSocket socket;
#endif
	};
}