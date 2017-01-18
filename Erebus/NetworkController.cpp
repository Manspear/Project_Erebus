#include "NetworkController.hpp"

NetworkController::NetworkController()
{
	networkHost = true;
	running = false;
	sendFrequency = 0.0167; // 60 times a second
	recFrequency = 0.0167; // 60 times a second
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
		running = false;
		sendingThread.join();
		receiveThread.join();
	}
}

void NetworkController::startNetworkSending()
{
	while (running)
	{
		double deltaTime = counter->getNetworkSendDeltaTime();
		if (deltaTime > sendFrequency)
		{
			network.Send();
		}
		else
		{
			Sleep(sendFrequency - deltaTime);
			network.Send();
		}
	}
}

void NetworkController::startNetworkReceiving()
{
	while (running)
	{
		double deltaTime = counter->getNetworkRecDeltaTime();
		if (deltaTime > recFrequency)
		{
			network.Receive();
		}
		else
		{
			Sleep(recFrequency - deltaTime);
			network.Receive();
		}
	}
}

void NetworkController::acceptNetworkCommunication()
{
	while (running && !network.AcceptCommunication())
	{
		Sleep(500);
	}
}

void NetworkController::startCommunicationThreads(PerformanceCounter * counter)
{
	this->counter = counter;

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