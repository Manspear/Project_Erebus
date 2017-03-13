#pragma once

#include "NetworkDefines.hpp"

#if PLATFORM == PLATFORM_WINDOWS
#include <winsock2.h>
#pragma comment( lib, "ws2_32.lib" )

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
#include "PacketEnums.hpp"
#include "AIStatePacket.hpp"
#include "TransformPacket.hpp"
#include "AnimationPacket.hpp"
#include "MetaDataPacket.hpp"
#include "SpellPacket.hpp"
#include "ChargingPacket.hpp"
#include "QuickBlendPacket.hpp"
#include "DamagePacket.hpp"
#include "ChangeSpellsPacket.hpp"
#include "EventPacket.hpp"
#include "HealthPacket.hpp"
#include "DashPacket.hpp"

#ifdef DEBUGGING_NETWORK
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
		NURN_API int Receive(void * data, int size);
		NURN_API bool Receive();

		NURN_API void Shutdown();

		NURN_API void pushTransformPacket(const Packet::TransformPacket& packet);
		NURN_API bool fetchTransformPacket(Packet::TransformPacket& packet);

		NURN_API void pushAnimationPacket(const Packet::AnimationPacket& packet);
		NURN_API bool fetchAnimationPacket(Packet::AnimationPacket& packet);

		NURN_API void pushAIStatePacket(const Packet::AIStatePacket& packet);
		NURN_API bool fetchAIPacket(Packet::AIStatePacket& packet);

		NURN_API void pushSpellPacket(const Packet::SpellPacket& packet);
		NURN_API bool fetchSpellPacket(Packet::SpellPacket& packet);

		NURN_API void pushAITransformPacket(const Packet::TransformPacket& packet);
		NURN_API bool fetchAITransformPacket(Packet::TransformPacket& packet);

		NURN_API void pushChargingPacket(const Packet::ChargingPacket& packet);
		NURN_API bool fetchChargingPacket(Packet::ChargingPacket& packet);

		NURN_API void pushQuickBlendPacket(const Packet::QuickBlendPacket& packet);
		NURN_API bool fetchQuickBlendPacket(Packet::QuickBlendPacket& packet);

		NURN_API void pushDamagePacket(const Packet::DamagePacket& packet);
		NURN_API bool fetchDamagePacket(Packet::DamagePacket& packet);

		NURN_API void pushChangeSpellsPacket(const Packet::ChangeSpellsPacket& packet);
		NURN_API bool fetchChangeSpellsPacket(Packet::ChangeSpellsPacket& packet);

		NURN_API void pushPlayerEventPacket(const Packet::EventPacket& packet);
		NURN_API bool fetchPlayerEventPacket(Packet::EventPacket& packet);

		NURN_API void pushAIHealthPacket(const Packet::HealthPacket& packet);
		NURN_API bool fetchAIHealthPacket(Packet::HealthPacket& packet);

		NURN_API void pushDashPacket(const Packet::DashPacket& packet);
		NURN_API bool fetchDashPacket(Packet::DashPacket& packet);

		NURN_API void pushEndEventPacket(const Packet::EventPacket& packet);
		NURN_API bool fetchEndEventPacket(Packet::EventPacket& packet);

		NURN_API void pushPlayerHealthPacket(const Packet::HealthPacket& packet);
		NURN_API bool fetchPlayerHealthPacket(Packet::HealthPacket& packet);

		NURN_API void pushRessurectionPacket(const Packet::HealthPacket& packet);
		NURN_API bool fetchRessurectionPacket(Packet::HealthPacket& packet);

		NURN_API void pushAIDamageTextPacket(const Packet::DamagePacket& packet);
		NURN_API bool fetchAIDamageTextPacket(Packet::DamagePacket& packet);

		NURN_API void pushBossDamageTextPacket(const Packet::DamagePacket& packet);
		NURN_API bool fetchBossDamageTextPacket(Packet::DamagePacket& packet);

		NURN_API void pushBossHealthPacket(const Packet::HealthPacket& packet);
		NURN_API bool fetchBossHealthPacket(Packet::HealthPacket& packet);

		
#ifdef DEBUGGING_NETWORK
		NURN_API float getPing();
#endif

	private:
		void initPacketHandling();

		template<class packetType>
		void initQueues(const int & size);

		Address address;
		Packager * packager = nullptr;
		PacketFilter * packetFilter = nullptr;

#ifdef USING_UDP
		UDPCommunication netCommunication;
#elif USING_TCP
		TCPCommunication netCommunication;
#endif

#ifdef DEBUGGING_NETWORK
		DebugNetwork debugNetwork;
#endif
	};
}