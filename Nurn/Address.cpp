#include "Address.hpp"

namespace Nurn
{
	Address::Address()
	{
		this->ip.address = INADDR_ANY;
		this->port = 0;
		ComposeAdress();
	}

	Address::Address(uint32_t ip, uint16_t port)
	{
		this->ip.address = ip;
		this->port = port;
		ComposeAdress();
	}

	Address::Address(uint8_t a, uint8_t b, uint8_t c, uint8_t d, uint16_t port)
	{
		SetIP(a, b, c, d);
		this->port = port;
		ComposeAdress();
	}

	uint32_t Address::GetIp() const
	{
		return this->ip.address;
	}

	uint8_t Address::GetA() const
	{
		return this->ip.part.a;
	}

	uint8_t Address::GetB() const
	{
		return this->ip.part.b;
	}

	uint8_t Address::GetC() const
	{
		return this->ip.part.c;
	}

	uint8_t Address::GetD() const
	{
		return this->ip.part.d;
	}

	uint16_t Address::GetPort() const
	{
		return this->port;
	}        

	SOCKADDR_IN Address::GetAddress() const
	{ 
		return this->address;
	};

	void Address::SetIP(uint8_t a, uint8_t b, uint8_t c, uint8_t d)
	{
		this->ip.part.a = a;
		this->ip.part.b = b;
		this->ip.part.c = c;
		this->ip.part.d = d;
	}

	void Address::ComposeAdress()
	{
		this->address = { 0 };
		this->address.sin_family = AF_INET;
		this->address.sin_port = htons(port);
		this->address.sin_addr.s_addr = ip.address;
	}

	void Address::SetAddress(SOCKADDR_IN address)
	{
		this->address = address;
		this->ip.address = address.sin_addr.s_addr;
		this->port = ntohs(address.sin_port);
	}

	bool Address::operator == (const Address & other) const
	{
		return this->ip.address == other.ip.address && this->port == other.port;
	}

	bool Address::operator != (const Address & other) const
	{
		return !(*this == other);
	}
}