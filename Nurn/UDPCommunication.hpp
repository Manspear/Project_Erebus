#pragma once

#include "Communication.hpp"

namespace Nurn
{
	class UDPCommunication : public Communication
	{
	public:
		UDPCommunication();
		virtual ~UDPCommunication();

		bool SendPackage(const Address & destination, const void * data, int size) override;
		int ReceivePackage(Address & sender, void * data, int size) override;
		int Peek(Address & sender, void * data, int size) override;

	private:

	};
}