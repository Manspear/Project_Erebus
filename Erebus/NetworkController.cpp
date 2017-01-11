#include "NetworkController.hpp"

NetworkController::NetworkController()
{
	running = false;
}

NetworkController::~NetworkController()
{
	printf("Closing socket on port\n");
	network.Shutdown();
}

bool NetworkController::initNetworkAsHost()
{
	if (!network.InitializeHost())
	{
		printf("failed to initialize sockets\n");
		return false;
	}

	running = true;

	return true;
}

bool NetworkController::initNetworkAsClient(uint8_t ip1, uint8_t ip2, uint8_t ip3, uint8_t ip4)
{
	if (!network.InitializeClient(ip1, ip2, ip3, ip4))
	{
		printf("failed to initialize sockets\n");
		return false;
	}

	running = true;

	return true;
}

void NetworkController::shutdown()
{
	running = false;
	sendingThread.join();
	receiveThread.join();
}

void NetworkController::startNetworkSending()
{
	while (running)
	{
		const char data[] = "hello world!";

		network.Send(data, sizeof(data));

		Sleep(250);
	}
}

void NetworkController::startNetworkReceiving()
{
	while (running)
	{
		printf("Recieving package\n");
		unsigned char buffer[256];
		int bytes_read = network.Receive(buffer, sizeof(buffer));
		if (bytes_read)
		{
			printf("received packet %d bytes\n", bytes_read);
			std::cout << buffer << std::endl;
		}
		Sleep(250);
	}
}

void NetworkController::acceptNetworkCommunication()
{
	while (running && !network.AcceptCommunication())
	{
		Sleep(500);
	}
}

void NetworkController::startCommunicationThreads()
{
	sendingThread = std::thread(&NetworkController::startNetworkSending, this);

	receiveThread = std::thread(&NetworkController::startNetworkReceiving, this);
}


void NetworkController::buildTransformPacket(const float& x, const float& y, const float& z)
{
	network.buildTransformPacket(x, y, z);
}

TransformPacket NetworkController::fetchTransformPacket()
{
	return network.fetchTransformPacket();
}