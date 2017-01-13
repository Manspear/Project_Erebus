#pragma once

#include <iostream>
#include <atomic>

// http://blogs.msmvps.com/vandooren/2007/01/05/creating-a-thread-safe-producer-consumer-queue-in-c-without-using-locks/

template<typename Packet>
class PacketQueue
{
private:
	Packet * queuePointer;
	uint8_t queueSize;
	std::atomic<uint8_t> readIndex;
	std::atomic<uint8_t> writeIndex;

public:
	PacketQueue(uint8_t size);
	virtual ~PacketQueue();

	bool pop(Packet &packet);
	bool push(Packet &packet);
	bool batchPush(const unsigned char * const memoryPointer, const uint16_t &startPoint, const uint16_t &sizeToCopy);
};

template<typename Packet> PacketQueue<Packet>::PacketQueue(uint8_t queueSize)
{
	readIndex = 0;
	writeIndex = 0;
	this->queueSize = queueSize;

	this->queuePointer = new Packet[this->queueSize];
}

template<typename Packet> PacketQueue<Packet>::~PacketQueue()
{
	if(this->queuePointer)
	{
		delete [] this->queuePointer;
		this->queuePointer = 0;
	}
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
	int nextElement = (this->writeIndex + 1) % this->queueSize;
	
	if (nextElement != this->readIndex)
	{
		this->queuePointer[this->writeIndex] = packet;
		this->writeIndex = nextElement;
		return true;
	}
	else
	{ 
		return false;
	}
}

template<typename Packet> bool PacketQueue<Packet>::batchPush(const unsigned char * const memoryPointer, const uint16_t &startPoint, const uint16_t &sizeToCopy)
{
	uint8_t nrOfPacketsToCopy = sizeToCopy / sizeof(Packet); 
	uint8_t distanceFromEndOfQueue = this->queueSize - (this->writeIndex + 1);
	uint8_t newWriteIndexLocation = (this->writeIndex + nrOfPacketsToCopy) % this->queueSize;
	uint8_t distanceBetweenWriteAndRead = 0;

	if (this->writeIndex < this->readIndex) // Calculating distance between write and read
	{
		distanceBetweenWriteAndRead = this->readIndex - this->writeIndex;
	}
	else
	{
		distanceBetweenWriteAndRead = distanceFromEndOfQueue + this->readIndex;
	}

	if (distanceBetweenWriteAndRead > nrOfPacketsToCopy)
	{
		nrOfPacketsToCopy = distanceBetweenWriteAndRead; //Discard any "excess" packages
	}

	if (nrOfPacketsToCopy <= distanceFromEndOfQueue) // Circlebuffer spliting of data check
	{
		memcpy(this->queuePointer + this->writeIndex, memoryPointer + startPoint, sizeToCopy);
		this->writeIndex += nrOfPacketsToCopy;
	}
	else
	{
		// Fill the rest of the queue
		memcpy(this->queuePointer + this->writeIndex, memoryPointer + startPoint, distanceFromEndOfQueue * sizeof(Packet));

		// Add what's left to copy from the beginning of the queue
		memcpy(this->queuePointer, memoryPointer + startPoint + (distanceFromEndOfQueue * sizeof(Packet)), (nrOfPacketsToCopy - distanceFromEndOfQueue) * sizeof(Packet));

		this->writeIndex = newWriteIndexLocation;
	}

	return true;
}