#include "TCPSocket.hpp"

namespace Nurn
{
	TCPSocket::TCPSocket() {}

	TCPSocket::~TCPSocket() {}

	bool TCPSocket::CreateSocket()
	{
		assert(!IsOpen());

		// create socket

		networkSocket = (int)::socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);

		if (networkSocket <= 0)
		{
			printf("failed to create socket\n");
			networkSocket = 0;
			return false;
		}

		// set TCP_NODELAY
		if (!SetNODELAY())
		{
			return false;
		}

		return true;
	}

	bool TCPSocket::ConnectSocket(const Address & connectionAddress)
	{
		// Attempt to connect to another socket with the IP and port specified
		int32_t Result = connect(networkSocket, (sockaddr*)&connectionAddress.GetAddress(), sizeof(sockaddr));

		if (Result == SOCKET_ERROR)
		{
			DWORD errorCode = WSAGetLastError();
			return false;
		}
		
		if (!SetNonBlocking())
		{
			return false;
		}

		return true;
	}

	bool TCPSocket::AcceptSocket(int & acceptedSocket, Address & connectionAddress)
	{
		sockaddr_in address = { 0 };

#if PLATFORM == PLATFORM_WINDOWS
		typedef int socklen_t;
#endif
		socklen_t fromLength = sizeof(address);

		// Accept a incomming connection, returns a socket used to send to later
		int OutSocketHandle = (int) accept(networkSocket, (sockaddr*)&address, &fromLength);

		// If failed, throw exception
		if (OutSocketHandle == INVALID_SOCKET)
		{
			//printf("failed to accept connection \n");
			return false;
		}

		u_long Mode = 1;
		int32_t Return = ioctlsocket(OutSocketHandle, FIONBIO, &Mode);
		if (Return == SOCKET_ERROR)
		{
			printf("failed to set non-blocking socket\n");
			CloseSocket();
			return false;
		}

		// Set out socket
		acceptedSocket = OutSocketHandle;

		// Set out adress
		connectionAddress.SetAddress(address);

		return true;
	}

	bool TCPSocket::CreateWaitingSocket(const uint16_t & port)
	{

		if (!CreateSocket())
		{
			return false;
		}

		// bind to port

		if (!BindSocket(port))
		{
			return false;
		}

		// set non-blocking io

		if (!SetNonBlocking())
		{
			return false;
		}

		// TODO maybe not SOMAXCONN? who knows
		listen(networkSocket, SOMAXCONN);

		return true;
	}

	bool TCPSocket::CreateAndConnectSocket(const uint16_t & port, const Address& connectionAddress)
	{
		if (!IsOpen())
		{
			if (!CreateSocket())
			{
				return false;
			}
		}

		if (!ConnectSocket(connectionAddress))
		{
			return false;
		}

		return true;
	}

	bool TCPSocket::SetNODELAY()
	{
		int noDelay = 1;
		int result = setsockopt(networkSocket, IPPROTO_TCP, TCP_NODELAY, (char *)&noDelay, sizeof(noDelay));

		if (result < 0)
		{
			printf("failed to set TCP_NODELAY \n");
			CloseSocket();
			return false;
		}
		return true;
	}
}