#pragma once

class PacketFilter
{
private:

public:
	PacketFilter();
	~PacketFilter();

	void loopThroughPacket();
	void readMetaData();
	void putPacketsInBuffer();

};