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
		// Returns 1 or 0 if a byte has been recieved or not
		bool ReceivePackage(Address & sender, void * data, int size) override;


	private:

	};
}