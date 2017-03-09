#include "Nurn.hpp"

namespace Nurn
{
	NurnEngine::NurnEngine()
	{
#ifdef DEBUGGING_NETWORK
		this->packager = new Packager(&this->debugNetwork);
		this->packetFilter = new PacketFilter(&this->debugNetwork);
#else
		this->packager = new Packager();
		this->packetFilter = new PacketFilter();
#endif

		return;
	}

	NurnEngine::~NurnEngine()
	{
		NurnEngine::Shutdown();
		return;
	}

	bool NurnEngine::InitializeHost(uint16_t port)
	{
		if (!packager)
		{
#ifdef DEBUGGING_NETWORK
			this->packager = new Packager(&this->debugNetwork);
#else
			this->packager = new Packager();
#endif
		}
		if (!packetFilter)
		{
#ifdef DEBUGGING_NETWORK
			this->packetFilter = new PacketFilter(&this->debugNetwork);
#else
			this->packetFilter = new PacketFilter();
#endif
		}
#ifdef DEBUGGING_NETWORK
		this->debugNetwork.initializeDebugNetwork(0, true);
#endif

		return netCommunication.InitializeCommunicationHost(port);
	}

	bool NurnEngine::InitializeClient(uint8_t ip1, uint8_t ip2, uint8_t ip3, uint8_t ip4, uint16_t destPort, uint16_t origPort)
	{
		if (!packager)
		{
#ifdef DEBUGGING_NETWORK
			this->packager = new Packager(&this->debugNetwork);
#else
			this->packager = new Packager();
#endif
		}
		if (!packetFilter)
		{
#ifdef DEBUGGING_NETWORK
			this->packetFilter = new PacketFilter(&this->debugNetwork);
#else
			this->packetFilter = new PacketFilter();
#endif
		}
#ifdef DEBUGGING_NETWORK
		this->debugNetwork.initializeDebugNetwork(1, false);
#endif

		address = Address(ip1, ip2, ip3, ip4, destPort);

		return netCommunication.InitializeCommunicationClient(origPort, address);
	}

	bool NurnEngine::AcceptCommunication()
	{
		return netCommunication.AcceptCommunication(address);
	}

	bool NurnEngine::Send(const void * data, int size)
	{
		return netCommunication.SendPackage(address, data, size);
	}

	bool NurnEngine::Send(const Address & destination, const void * data, int size)
	{
		return netCommunication.SendPackage(destination, data, size);
	}

	bool NurnEngine::Send()
	{
		this->packager->buildNetPacket();
		if (this->packager->getCurrentNetPacketSize() > 6)
		{
			this->Send(this->packager->getPacketPointer(), this->packager->getCurrentNetPacketSize());
		}

		return true;
	}

	int NurnEngine::Receive(void * data, int size)
	{
		return netCommunication.ReceivePackage(address, data, size);
	}

	bool NurnEngine::Receive()
	{
		unsigned char buffer[packetSize];
		int bytes_read = netCommunication.Peek(address, buffer, 2);
		if (bytes_read > 0)
		{
			uint16_t expectedSize = buffer[0] | buffer[1] << 8;
			this->Receive(buffer, expectedSize);
			this->packetFilter->openNetPacket(buffer);
		}
		return true;
	}


	void NurnEngine::Shutdown()
	{
		if (this->packager)
		{
			delete this->packager;
			this->packager = 0;
		}

		if (this->packetFilter)
		{
			delete this->packetFilter;
			this->packetFilter = 0;
		}
		netCommunication.Shutdown();
	}

	void NurnEngine::pushTransformPacket(const TransformPacket& packet)
	{
		this->packager->getQueue(TRANSFORM_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchTransformPacket(TransformPacket &packet)
	{
		return this->packetFilter->getQueue(TRANSFORM_PACKET)->pop(&packet);
	}

	void NurnEngine::pushAnimationPacket(const AnimationPacket& packet)
	{
		this->packager->getQueue(ANIMATION_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchAnimationPacket(AnimationPacket& packet)
	{
		return this->packetFilter->getQueue(ANIMATION_PACKET)->pop(&packet);
	}

	void NurnEngine::pushAIStatePacket(const AIStatePacket& packet)
	{
		this->packager->getQueue(AI_STATE_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchAIPacket(AIStatePacket& packet)
	{
		return this->packetFilter->getQueue(AI_STATE_PACKET)->pop(&packet);
	}

	void NurnEngine::pushSpellPacket(const SpellPacket& packet)
	{
		this->packager->getQueue(SPELL_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchSpellPacket(SpellPacket& packet)
	{
		return this->packetFilter->getQueue(SPELL_PACKET)->pop(&packet);
	}

	void NurnEngine::pushAITransformPacket(const TransformPacket& packet)
	{
		this->packager->getQueue(AI_TRANSFORM_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchAITransformPacket(TransformPacket& packet)
	{
		return this->packetFilter->getQueue(AI_TRANSFORM_PACKET)->pop(&packet);
	}

	void NurnEngine::pushChargingPacket(const ChargingPacket& packet)
	{
		this->packager->getQueue(CHARGING_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchChargingPacket(ChargingPacket& packet)
	{
		return this->packetFilter->getQueue(CHARGING_PACKET)->pop(&packet);
	}

	void NurnEngine::pushQuickBlendPacket(const QuickBlendPacket& packet)
	{
		this->packager->getQueue(QUICKBLEND_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchQuickBlendPacket(QuickBlendPacket& packet)
	{
		return this->packetFilter->getQueue(QUICKBLEND_PACKET)->pop(&packet);
	}

	void NurnEngine::pushDamagePacket(const DamagePacket& packet)
	{
		this->packager->getQueue(DAMAGE_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchDamagePacket(DamagePacket& packet)
	{
		return this->packetFilter->getQueue(DAMAGE_PACKET)->pop(&packet);
	}

	void NurnEngine::pushChangeSpellsPacket(const ChangeSpellsPacket& packet)
	{
		this->packager->getQueue(CHANGESPELLS_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchChangeSpellsPacket(ChangeSpellsPacket& packet)
	{
		return this->packetFilter->getQueue(CHANGESPELLS_PACKET)->pop(&packet);
	}

	void NurnEngine::pushPlayerEventPacket(const EventPacket& packet)
	{
		this->packager->getQueue(PLAYER_EVENT_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchPlayerEventPacket(EventPacket& packet)
	{
		return this->packetFilter->getQueue(PLAYER_EVENT_PACKET)->pop(&packet);
	}

	void NurnEngine::pushAIHealthPacket(const HealthPacket& packet)
	{
		this->packager->getQueue(AI_HEALTH_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchAIHealthPacket(HealthPacket& packet)
	{
		return this->packetFilter->getQueue(AI_HEALTH_PACKET)->pop(&packet);
	}

	void NurnEngine::pushDashPacket(const DashPacket& packet)
	{
		this->packager->getQueue(DASH_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchDashPacket(DashPacket& packet)
	{
		return this->packetFilter->getQueue(DASH_PACKET)->pop(&packet);
	}

	void NurnEngine::pushEndEventPacket(const EventPacket& packet)
	{
		this->packager->getQueue(END_EVENT_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchEndEventPacket(EventPacket& packet)
	{
		return this->packetFilter->getQueue(END_EVENT_PACKET)->pop(&packet);
	}

	void NurnEngine::pushPlayerHealthPacket(const HealthPacket& packet)
	{
		this->packager->getQueue(PLAYER_HEALTH_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchPlayerHealthPacket(HealthPacket& packet)
	{
		return this->packetFilter->getQueue(PLAYER_HEALTH_PACKET)->pop(&packet);
	}

	void NurnEngine::pushRessurectionPacket(const HealthPacket& packet)
	{
		this->packager->getQueue(RESSURECTION_PACKET)->push(&packet);
	}
	
	bool NurnEngine::fetchRessurectionPacket(HealthPacket& packet)
	{
		return this->packetFilter->getQueue(RESSURECTION_PACKET)->pop(&packet);
	}

	void NurnEngine::pushAIDamageTextPacket(const DamagePacket& packet)
	{
		this->packager->getQueue(AI_DAMAGE_TEXT_PACKET)->push(&packet);
	}
	
	bool NurnEngine::fetchAIDamageTextPacket(DamagePacket& packet)
	{
		return this->packetFilter->getQueue(AI_DAMAGE_TEXT_PACKET)->pop(&packet);
	}

	void NurnEngine::pushBossDamageTextPacket(const DamagePacket& packet)
	{
		this->packager->getQueue(BOSS_DAMAGE_TEXT_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchBossDamageTextPacket(DamagePacket& packet)
	{
		return this->packetFilter->getQueue(BOSS_DAMAGE_TEXT_PACKET)->pop(&packet);
	}

	void NurnEngine::pushBossHealthPacket(const HealthPacket& packet)
	{
		this->packager->getQueue(BOSS_HEALTH_PACKET)->push(&packet);
	}
	
	bool NurnEngine::fetchBossHealthPacket(HealthPacket& packet)
	{
		return this->packetFilter->getQueue(BOSS_HEALTH_PACKET)->pop(&packet);
	}

	
#ifdef DEBUGGING_NETWORK
	float NurnEngine::getPing()
	{
		return this->debugNetwork.getPing();
	}
#endif

}
