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
		bool CreateSocket() override;
		bool ConnectSocket(const Address & connectionAddress) override;
		bool AcceptSocket(int & acceptedSocket, Address & connectionAddress) override;
		bool CreateWaitingSocket(const uint16_t & port) override;
		bool CreateAndConnectSocket(const uint16_t & port, const Address& connectionAddress) override;
	};
}