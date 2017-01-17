#include "NetworkController.hpp"

NetworkController::NetworkController()
{
	networkHost = true;
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
	if (running == true)
	{
		sendingThread.join();
		receiveThread.join();
	}

	running = false;
}

void NetworkController::startNetworkSending()
{
	while (running)
	{		
		network.Send();
		Sleep(200);
	}
}

void NetworkController::startNetworkReceiving()
{
	while (running)
	{
		printf("Recieving package\n");
		network.Receive();
		Sleep(100);
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

void NetworkController::setNetworkHost(const bool& networkHost)
{
	this->networkHost = networkHost;
}

bool NetworkController::getNetworkHost()
{
	return this->networkHost;
}

void NetworkController::sendTransformPacket(const uint32_t& id, const float& x, const float& y, const float& z)
{
	network.buildTransformPacket(id, x, y, z);
}

bool NetworkController::fetchTransformPacket(TransformPacket &packet)
{
	return network.fetchTransformPacket(packet);
}