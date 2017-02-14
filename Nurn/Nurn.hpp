#pragma once

#include "NetworkDefines.hpp"

#if PLATFORM == PLATFORM_WINDOWS
#include <winsock2.h>
#pragma comment( lib, "wsock32.lib" )
//#pragma comment( lib, "ws2_32.lib" )
//#pragma warning( disable : 4996  ) // get rid of all secure crt warning. (sscanf_s)

#else PLATFORM == PLATFORM_MAC || PLATFORM == PLATFORM_UNIX

#include <sys/socket.h>
#include <netinet/in.h>
#include <fcntl.h>

#endif

#include <iostream>
#include <assert.h>
#include "Address.hpp"
#include "Packager.hpp"
#include "PacketFilter.hpp"

#ifndef DEBUGGING_NETWORK
#include "DebugNetwork.hpp"
#endif

#ifdef USING_UDP
#include "UDPCommunication.hpp"
#elif USING_TCP
#include "TCPCommunication.hpp"
#endif

namespace Nurn
{
	class NurnEngine
	{
	public:
		NURN_API NurnEngine();
		NURN_API virtual ~NurnEngine();

		NURN_API bool InitializeHost(uint16_t port = 35500);
		// Takes an ipv4 address with each of the 255 values seperated by commas, for example ( 127, 0, 0, 1 )
		NURN_API bool InitializeClient(uint8_t ip1, uint8_t ip2, uint8_t ip3, uint8_t ip4, uint16_t destPort = 35500, uint16_t origPort = 35500);

		NURN_API bool AcceptCommunication();

		NURN_API bool Send(const void * data, int size);
		NURN_API bool Send(const Address & destination, const void * data, int size);
		NURN_API bool Send();

		// Returns 1 or 0 if a byte has been recieved or not. Then returns the data through the void *
		NURN_API bool Receive(void * data, int size);
		NURN_API bool Receive();

		NURN_API void Shutdown();

		NURN_API void pushTransformPacket(const TransformPacket& packet);
		NURN_API bool fetchTransformPacket(TransformPacket& packet);

		NURN_API void pushAnimationPacket(const AnimationPacket& packet);
		NURN_API bool fetchAnimationPacket(AnimationPacket& packet);

		NURN_API void pushAIStatePacket(const AIStatePacket& packet);
		NURN_API bool fetchAIPacket(AIStatePacket& packet);

		NURN_API void pushSpellPacket(const SpellPacket& packet);
		NURN_API bool fetchSpellPacket(SpellPacket& packet);

		NURN_API void pushAITransformPacket(const TransformPacket& packet);
		NURN_API bool fetchAITransformPacket(TransformPacket& packet);

		NURN_API void pushChargingPacket(const ChargingPacket& packet);
		NURN_API bool fetchChargingPacket(ChargingPacket& packet);

		NURN_API void pushQuickBlendPacket(const QuickBlendPacket& packet);
		NURN_API bool fetchQuickBlendPacket(QuickBlendPacket& packet);

		NURN_API void pushDamagePacket(const DamagePacket& packet);
		NURN_API bool fetchDamagePacket(DamagePacket& packet);

		NURN_API void pushChangeSpellsPacket(const ChangeSpellsPacket& packet);
		NURN_API bool fetchChangeSpellsPacket(ChangeSpellsPacket& packet);

		NURN_API void pushPlayerEventPacket(const EventPacket& packet);
		NURN_API bool fetchPlayerEventPacket(EventPacket& packet);

		NURN_API uint8_t getPing() const;


	private:
		Address address;
		Packager * packager = nullptr;
		PacketFilter * packetFilter = nullptr;

#ifdef USING_UDP
		UDPCommunication netCommunication;
#elif USING_TCP
		TCPCommunication netCommunication;
#endif

#ifndef DEBUGGING_NETWORK
		DebugNetwork networkDebug;
#endif
	};
}