#include "NetworkController.hpp"

NetworkController::NetworkController()
{
	networkHost = true;
	running = false;
	transformpackTime = 0.0;
	animationpackTime = 0.0;
	aiTransformpackTime = 0.0;
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
			long long sleepTime = (sendFrequency - deltaTime) * 1000;
			std::this_thread::sleep_for(std::chrono::milliseconds(sleepTime));
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
			long long sleepTime = (recFrequency - deltaTime) * 1000;
			std::this_thread::sleep_for(std::chrono::milliseconds(sleepTime));
			network.Receive();
		}
	}
}

bool NetworkController::acceptNetworkCommunication()
{
	int counter = 0;
	while (running && counter < 20)
	{
		if (network.AcceptCommunication())
		{
			return true;
		}
		counter++;
		std::this_thread::sleep_for(std::chrono::milliseconds(500));
	}
	return false;
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

void NetworkController::sendTransformPacket(const TransformPacket& packet)
{
	transformpackTime = counter.getCurrentTime();
	network.pushTransformPacket(packet);
}

bool NetworkController::fetchTransformPacket(TransformPacket &packet)
{
	return network.fetchTransformPacket(packet);
}

void NetworkController::sendAnimationPacket(const AnimationPacket& packet)
{
	animationpackTime = counter.getCurrentTime();
	network.pushAnimationPacket(packet);
}

bool NetworkController::fetchAnimationPacket(AnimationPacket& packet)
{
	return network.fetchAnimationPacket(packet);
}

void NetworkController::sendAIStatePacket(const AIStatePacket& packet)
{
	network.pushAIStatePacket(packet);
}

bool NetworkController::fetchAIStatePacket(AIStatePacket& packet)
{
	return network.fetchAIPacket(packet);
}

bool NetworkController::fetchSpellPacket(SpellPacket& packet)
{
	return network.fetchSpellPacket(packet);
}

void NetworkController::sendSpellPacket(const SpellPacket& packet)
{
	network.pushSpellPacket(packet);
}

void NetworkController::sendAITransformPacket(const TransformPacket& packet)
{
	aiTransformpackTime = counter.getCurrentTime();
	network.pushAITransformPacket(packet);
}

bool NetworkController::fetchAITransformPacket(TransformPacket &packet)
{
	return network.fetchAITransformPacket(packet);
}

void NetworkController::sendChargingPacket(const ChargingPacket& packet)
{
	network.pushChargingPacket(packet);
}

bool NetworkController::fetchChargingPacket(ChargingPacket &packet)
{
	return network.fetchChargingPacket(packet);
}

double NetworkController::timeSinceLastTransformPacket()
{
	return (counter.getCurrentTime() - transformpackTime);
}

double NetworkController::timeSinceLastAnimationPacket()
{
	return (counter.getCurrentTime() - animationpackTime);
}

double NetworkController::timeSinceLastAITransformPacket()
{
	return (counter.getCurrentTime() - aiTransformpackTime);
}