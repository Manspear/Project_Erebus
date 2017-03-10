#include "DebugNetwork.hpp"

DebugNetwork::DebugNetwork()
{
	this->sendPingPacket = false;
	this->pingPacket.data.loopNumber = 0;
	this->ping = 0.0f;
}

DebugNetwork::~DebugNetwork()
{
}

void DebugNetwork::initializeDebugNetwork(uint8_t loopNumber, bool sendPingPacket)
{
	this->sendPingPacket = sendPingPacket;

	this->pingPacket.data.loopNumber = loopNumber;
}

Packet::PingPacket& DebugNetwork::getPingPacket()
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

void DebugNetwork::setPing()
{
	this->ping = ((std::chrono::duration<float>) (std::chrono::system_clock::now() - this->ping_start_time)).count();
}

float DebugNetwork::getPing()
{
	return this->ping;
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