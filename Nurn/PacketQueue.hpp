#pragma once

#include <iostream>
#include <atomic>
#include "PacketQueueInterface.hpp"

// http://blogs.msmvps.com/vandooren/2007/01/05/creating-a-thread-safe-producer-consumer-queue-in-c-without-using-locks/

template<typename Packet>
class PacketQueue : public PacketQueueInterface
{
private:
	typename Packet * queuePointer;
	uint8_t queueSize;
	std::atomic<uint8_t> readIndex;
	std::atomic<uint8_t> writeIndex;
	size_t sizeOfIndividualPacket;


public:
	PacketQueue(uint8_t size);
	virtual ~PacketQueue();

	bool pop(void * packet) override;
	bool push(const void * packet) override;
	bool batchPush(const unsigned char * const memoryPointer, const uint16_t& startPoint, const uint16_t& sizeToCopy) override; // Push x bytes of packets to queue
	size_t getPacketSize() override; // Push x bytes of packets to queue
};

template<typename Packet> PacketQueue<typename Packet>::PacketQueue(uint8_t queueSize)
{
	this->readIndex = 0;
	this->writeIndex = 0;
	this->queueSize = queueSize;
	this->sizeOfIndividualPacket = sizeof(Packet);

	this->queuePointer = new typename Packet[this->queueSize];
}

template<typename Packet> PacketQueue<typename Packet>::~PacketQueue()
{
	if(this->queuePointer)
	{
		delete [] this->queuePointer;
		this->queuePointer = 0;
	}

	this->readIndex = 0;
	this->writeIndex = 0;
	this->queueSize = 0;
}

template<typename Packet> bool PacketQueue<Packet>::pop(void * packet)
{
	if (this->readIndex == this->writeIndex)
	{
		return false;
	}

	*reinterpret_cast<Packet*>(packet) = this->queuePointer[this->readIndex];
	this->readIndex = (this->readIndex + 1) % this->queueSize;

	return true;
}

template<typename Packet> bool PacketQueue<Packet>::push(const void * packet)
{
	int nextElement = (this->writeIndex + 1) % this->queueSize;
	
	if (nextElement != this->readIndex) // Return false if readIndex is the next element
	{
		this->queuePointer[this->writeIndex] = *(Packet*)(packet);
		this->writeIndex = nextElement;
		return true;
	}
	else
	{ 
		return false;
	}
}

template<typename Packet> bool PacketQueue<Packet>::batchPush(const unsigned char * const memoryPointer, const uint16_t& startPoint, const uint16_t& sizeToCopy)
{
	uint8_t currReadIndex = this->readIndex;
	uint8_t nrOfPacketsToCopy = (uint8_t)(sizeToCopy / sizeof(Packet)); 
	uint8_t distanceFromEndOfQueue = this->queueSize - this->writeIndex;
	uint8_t distanceBetweenWriteAndRead = 0;

	if (this->writeIndex < currReadIndex) // Calculating distance between write and read
	{
		distanceBetweenWriteAndRead = currReadIndex - this->writeIndex;
	}
	else
	{
		distanceBetweenWriteAndRead = distanceFromEndOfQueue + currReadIndex;
	}

	if (distanceBetweenWriteAndRead > 1)
	{

		if (distanceBetweenWriteAndRead <= nrOfPacketsToCopy)
		{
			nrOfPacketsToCopy = distanceBetweenWriteAndRead - 1; //Discard any "excess" packages has to end before readIndex
		}

		if (nrOfPacketsToCopy < distanceFromEndOfQueue) // Circlebuffer spliting of data check
		{
			memcpy(this->queuePointer + this->writeIndex, memoryPointer + startPoint, nrOfPacketsToCopy * sizeof(Packet));
			this->writeIndex = (this->writeIndex + nrOfPacketsToCopy) % this->queueSize;
		}
		else
		{
			// Fill the rest of the queue
			memcpy(this->queuePointer + this->writeIndex, memoryPointer + startPoint, distanceFromEndOfQueue * sizeof(Packet));

			// Add what's left to copy from the beginning of the queue
			memcpy(this->queuePointer, memoryPointer + startPoint + (distanceFromEndOfQueue * sizeof(Packet)), (nrOfPacketsToCopy - distanceFromEndOfQueue) * sizeof(Packet));

			this->writeIndex = (this->writeIndex + nrOfPacketsToCopy) % this->queueSize;
		}

		return true;
	}
	else
	{
		return false; // return if next element is readIndex
	}
}

template<typename Packet> size_t PacketQueue<Packet>::getPacketSize()
{
	return sizeOfIndividualPacket;
}