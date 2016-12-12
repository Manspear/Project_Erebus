#pragma once

#include "NetworkDefines.hpp"

#include "Socket.hpp"
#include <iostream>
#include <assert.h>

namespace Nurn
{
	class UDPSocket : public Socket
	{
	public:
		UDPSocket();
		virtual ~UDPSocket();
		bool CreateSocket(const uint16_t & port) override;
		bool ConnectSocket(const Address & connectionAddress) override;
		bool AcceptSocket(SOCKET & acceptedSocket, Address & connectionAddress) override;
		bool CreateWaitingSocket(const Address& connectionAddress) override;
		bool CreateAndConnectSocket(const Address& connectionAddress) override;
	};
}