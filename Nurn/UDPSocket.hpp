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
		bool CreateSocket(const unsigned short & port) override;
	};
}