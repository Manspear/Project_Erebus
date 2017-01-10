#pragma once

#include <iostream>
#include <atomic>

// http://blogs.msmvps.com/vandooren/2007/01/05/creating-a-thread-safe-producer-consumer-queue-in-c-without-using-locks/

template<typename Packet>
class PacketQueue
{
private:
	Packet * queuePointer;
	const uint8_t queueSize;
	std::atomic<uint8_t> readIndex;
	std::atomic<uint8_t> writeIndex;

public:
	PacketQueue(uint8_t size);
	~PacketQueue();

	bool pop(Packet &packet);
	bool push(Packet &packet);
};

template<typename Packet> PacketQueue<Packet>::PacketQueue(uint8_t queueSize)
{
	this->queueSize = queueSize;

	this->queuePointer = new Packet[this->queueSize];
}

template<typename Packet> PacketQueue<Packet>::~PacketQueue()
{
	delete [] this->queuePointer;
}

template<typename Packet> bool PacketQueue<Packet>::pop(Packet &packet)
{
	if (this->readIndex == this->writeIndex)
	{
		return false;
	}
			
	packet = this->queuePointer[this->readIndex];
	this->readIndex = (this->readIndex + 1) % this->queueSize;;

	return true;
}

template<typename Packet> bool PacketQueue<Packet>::push(Packet &packet)
{
	int nextElement = (this->write + 1) % this->queueSize;
	
	if (nextElement != this->readIndex)
	{
		this->queuePointer[this->writeIndex] = *packet;
		this->writeIndex = nextElement;
		return true;
	}
	else
	{ 
		return false;
	}
}