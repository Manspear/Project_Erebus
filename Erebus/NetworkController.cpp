#include "NetworkController.hpp"

NetworkController::NetworkController()
{
	networkHost = true;
	running = false;
	transformpackTime = 100;
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
		double deltaTime = counter.getNetworkSendDeltaTime();
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
		double deltaTime = counter.getNetworkRecDeltaTime();
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

void NetworkController::startCommunicationThreads(PerformanceCounter& counter)
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

void NetworkController::sendTransformPacket(const uint32_t& id, const float& pos_x, const float& pos_y, const float& pos_z, const float& lookAt_x, const float& lookAt_y, const float& lookAt_z, const float& rotation_x, const float& rotation_y, const float& rotation_z)
{
	transformpackTime = counter.getCurrentTime();
	network.buildTransformPacket(id, pos_x, pos_y, pos_z, lookAt_x, lookAt_y, lookAt_z, rotation_x, rotation_y, rotation_z);
}

bool NetworkController::fetchTransformPacket(TransformPacket &packet)
{
	return network.fetchTransformPacket(packet);
}

void NetworkController::sendAnimationPacket(const uint16_t& id)
{
	network.buildAnimationPacket(id);
}

bool NetworkController::fetchAnimationPacket(AnimationPacket& packet)
{
	return network.fetchAnimationPacket(packet);
}

double NetworkController::timeSinceLastTransformPacket()
{
	return (counter.getCurrentTime() - transformpackTime);
}