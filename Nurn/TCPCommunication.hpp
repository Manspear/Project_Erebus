#pragma once

#include "Communication.hpp"

namespace Nurn
{
	class TCPCommunication : public Communication
	{
	public:
		TCPCommunication();
		virtual ~TCPCommunication();

		bool SendPackage(const Address & destination, const void * data, int size) override;
		bool ReceivePackage(Address & sender, void * data, int size) override;


	private:

	};
}