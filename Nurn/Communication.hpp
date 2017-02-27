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

		bool InitializeCommunicationHost(const uint16_t & port);
		bool InitializeCommunicationClient(const uint16_t & port, const Address & destination);
		bool AcceptCommunication(Address & connectionAddress);
		virtual bool SendPackage(const Address & destination, const void * data, int size) = 0;
		virtual int ReceivePackage(Address & sender, void * data, int size) = 0;
		virtual int Peek(Address & sender, void * data, int size) = 0;
		virtual void Shutdown();
		bool ConnectSocket(const Address & connectionAddress);
		
	protected:

#ifdef USING_UDP
		UDPSocket communicationSocket;
		UDPSocket listenSocket;
#elif USING_TCP
		TCPSocket communicationSocket;
		TCPSocket listenSocket;
#endif
	};
}