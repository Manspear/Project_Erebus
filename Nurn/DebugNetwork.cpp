#include "DebugNetwork.hpp"

DebugNetwork::DebugNetwork()
{
	this->sendPingPacket = false;
	this->pingPacket.data.loopNumber = 0;
}

DebugNetwork::~DebugNetwork()
{
}

void DebugNetwork::initializeDebugNetwork(uint8_t loopNumber, bool sendPingPacket)
{
	this->sendPingPacket = sendPingPacket;

	this->pingPacket.data.loopNumber = loopNumber;
}

PingPacket& DebugNetwork::getPingPacket()
{
	return this->pingPacket;
}

void DebugNetwork::setSendPingPacket(bool sendPingPacket)
{
	this->sendPingPacket = sendPingPacket;
}

bool DebugNetwork::getSendPingPacket() const
{
	return this->sendPingPacket;
}

float DebugNetwork::getPing()
{
	return ((std::chrono::duration<float>) (this->end_time - this->start_time)).count();
}




void DebugNetwork::getMaxSizeOfQueue()
{

}

void DebugNetwork::getDropRateOfPackets()
{

}

void DebugNetwork::getNumberOfDroppedPackets()
{

}

void DebugNetwork::getNumberOfPacketsSent()
{

}

void DebugNetwork::getNumberOfPacketsReceived()
{

}

void DebugNetwork::writePacketInfoToFile()
{

}