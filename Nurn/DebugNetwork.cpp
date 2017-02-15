#include "DebugNetwork.hpp"

DebugNetwork::DebugNetwork()
{
	this->timeToSendPingPacket = false;
	this->pingPacket.data.loopNumber = 0;
}

DebugNetwork::~DebugNetwork()
{
}

void DebugNetwork::initializeDebugNetwork(uint8_t loopNumber, bool timeToSendPingPacket)
{
	this->timeToSendPingPacket = timeToSendPingPacket;

	this->pingPacket.data.loopNumber = loopNumber;
}

PingPacket& DebugNetwork::getPingPacket()
{
	return this->pingPacket;
}

void DebugNetwork::setTimeToSendPingPacket(bool timeToSendPingPacket)
{
	this->timeToSendPingPacket = timeToSendPingPacket;
}

bool DebugNetwork::getTimeToSendPingPacket() const
{
	return this->timeToSendPingPacket;
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