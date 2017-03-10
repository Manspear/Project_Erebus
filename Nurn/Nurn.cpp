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
		this->initPacketHandling();

		return;
	}

	NurnEngine::~NurnEngine()
	{
		NurnEngine::Shutdown();
		return;
	}

	bool NurnEngine::InitializeHost(uint16_t port)
	{
		if (!packager && !packetFilter)
		{
#ifdef DEBUGGING_NETWORK
			this->packager = new Packager(&this->debugNetwork);
			this->packetFilter = new PacketFilter(&this->debugNetwork);
#else
			this->packager = new Packager();
			this->packetFilter = new PacketFilter();
#endif
			this->initPacketHandling();
		}
#ifdef DEBUGGING_NETWORK
		this->debugNetwork.initializeDebugNetwork(0, true);
#endif

		return netCommunication.InitializeCommunicationHost(port);
	}

	bool NurnEngine::InitializeClient(uint8_t ip1, uint8_t ip2, uint8_t ip3, uint8_t ip4, uint16_t destPort, uint16_t origPort)
	{
		if (!packager && !packetFilter)
		{
#ifdef DEBUGGING_NETWORK
			this->packager = new Packager(&this->debugNetwork);
			this->packetFilter = new PacketFilter(&this->debugNetwork);
#else
			this->packager = new Packager();
			this->packetFilter = new PacketFilter();
#endif
			this->initPacketHandling();
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

	void NurnEngine::pushTransformPacket(const Packet::TransformPacket& packet)
	{
		this->packager->getQueue(TRANSFORM_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchTransformPacket(Packet::TransformPacket &packet)
	{
		return this->packetFilter->getQueue(TRANSFORM_PACKET)->pop(&packet);
	}

	void NurnEngine::pushAnimationPacket(const Packet::AnimationPacket& packet)
	{
		this->packager->getQueue(ANIMATION_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchAnimationPacket(Packet::AnimationPacket& packet)
	{
		return this->packetFilter->getQueue(ANIMATION_PACKET)->pop(&packet);
	}

	void NurnEngine::pushAIStatePacket(const Packet::AIStatePacket& packet)
	{
		this->packager->getQueue(AI_STATE_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchAIPacket(Packet::AIStatePacket& packet)
	{
		return this->packetFilter->getQueue(AI_STATE_PACKET)->pop(&packet);
	}

	void NurnEngine::pushSpellPacket(const Packet::SpellPacket& packet)
	{
		this->packager->getQueue(SPELL_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchSpellPacket(Packet::SpellPacket& packet)
	{
		return this->packetFilter->getQueue(SPELL_PACKET)->pop(&packet);
	}

	void NurnEngine::pushAITransformPacket(const Packet::TransformPacket& packet)
	{
		this->packager->getQueue(AI_TRANSFORM_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchAITransformPacket(Packet::TransformPacket& packet)
	{
		return this->packetFilter->getQueue(AI_TRANSFORM_PACKET)->pop(&packet);
	}

	void NurnEngine::pushChargingPacket(const Packet::ChargingPacket& packet)
	{
		this->packager->getQueue(CHARGING_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchChargingPacket(Packet::ChargingPacket& packet)
	{
		return this->packetFilter->getQueue(CHARGING_PACKET)->pop(&packet);
	}

	void NurnEngine::pushQuickBlendPacket(const Packet::QuickBlendPacket& packet)
	{
		this->packager->getQueue(QUICKBLEND_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchQuickBlendPacket(Packet::QuickBlendPacket& packet)
	{
		return this->packetFilter->getQueue(QUICKBLEND_PACKET)->pop(&packet);
	}

	void NurnEngine::pushDamagePacket(const Packet::DamagePacket& packet)
	{
		this->packager->getQueue(DAMAGE_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchDamagePacket(Packet::DamagePacket& packet)
	{
		return this->packetFilter->getQueue(DAMAGE_PACKET)->pop(&packet);
	}

	void NurnEngine::pushChangeSpellsPacket(const Packet::ChangeSpellsPacket& packet)
	{
		this->packager->getQueue(CHANGESPELLS_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchChangeSpellsPacket(Packet::ChangeSpellsPacket& packet)
	{
		return this->packetFilter->getQueue(CHANGESPELLS_PACKET)->pop(&packet);
	}

	void NurnEngine::pushPlayerEventPacket(const Packet::EventPacket& packet)
	{
		this->packager->getQueue(PLAYER_EVENT_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchPlayerEventPacket(Packet::EventPacket& packet)
	{
		return this->packetFilter->getQueue(PLAYER_EVENT_PACKET)->pop(&packet);
	}

	void NurnEngine::pushAIHealthPacket(const Packet::HealthPacket& packet)
	{
		this->packager->getQueue(AI_HEALTH_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchAIHealthPacket(Packet::HealthPacket& packet)
	{
		return this->packetFilter->getQueue(AI_HEALTH_PACKET)->pop(&packet);
	}

	void NurnEngine::pushDashPacket(const Packet::DashPacket& packet)
	{
		this->packager->getQueue(DASH_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchDashPacket(Packet::DashPacket& packet)
	{
		return this->packetFilter->getQueue(DASH_PACKET)->pop(&packet);
	}

	void NurnEngine::pushEndEventPacket(const Packet::EventPacket& packet)
	{
		this->packager->getQueue(END_EVENT_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchEndEventPacket(Packet::EventPacket& packet)
	{
		return this->packetFilter->getQueue(END_EVENT_PACKET)->pop(&packet);
	}

	void NurnEngine::pushPlayerHealthPacket(const Packet::HealthPacket& packet)
	{
		this->packager->getQueue(PLAYER_HEALTH_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchPlayerHealthPacket(Packet::HealthPacket& packet)
	{
		return this->packetFilter->getQueue(PLAYER_HEALTH_PACKET)->pop(&packet);
	}

	void NurnEngine::pushRessurectionPacket(const Packet::HealthPacket& packet)
	{
		this->packager->getQueue(RESSURECTION_PACKET)->push(&packet);
	}
	
	bool NurnEngine::fetchRessurectionPacket(Packet::HealthPacket& packet)
	{
		return this->packetFilter->getQueue(RESSURECTION_PACKET)->pop(&packet);
	}

	void NurnEngine::pushAIDamageTextPacket(const Packet::DamagePacket& packet)
	{
		this->packager->getQueue(AI_DAMAGE_TEXT_PACKET)->push(&packet);
	}
	
	bool NurnEngine::fetchAIDamageTextPacket(Packet::DamagePacket& packet)
	{
		return this->packetFilter->getQueue(AI_DAMAGE_TEXT_PACKET)->pop(&packet);
	}

	void NurnEngine::pushBossDamageTextPacket(const Packet::DamagePacket& packet)
	{
		this->packager->getQueue(BOSS_DAMAGE_TEXT_PACKET)->push(&packet);
	}

	bool NurnEngine::fetchBossDamageTextPacket(Packet::DamagePacket& packet)
	{
		return this->packetFilter->getQueue(BOSS_DAMAGE_TEXT_PACKET)->pop(&packet);
	}

	void NurnEngine::pushBossHealthPacket(const Packet::HealthPacket& packet)
	{
		this->packager->getQueue(BOSS_HEALTH_PACKET)->push(&packet);
	}
	
	bool NurnEngine::fetchBossHealthPacket(Packet::HealthPacket& packet)
	{
		return this->packetFilter->getQueue(BOSS_HEALTH_PACKET)->pop(&packet);
	}

	
#ifdef DEBUGGING_NETWORK
	float NurnEngine::getPing()
	{
		return this->debugNetwork.getPing();
	}
#endif

	void NurnEngine::initPacketHandling()
	{
		this->initQueues<Packet::TransformPacket>(3);
		this->initQueues<Packet::AnimationPacket>(5);
		this->initQueues<Packet::AIStatePacket>(100);
		this->initQueues<Packet::SpellPacket>(20);
		this->initQueues<Packet::TransformPacket>(100);
		this->initQueues<Packet::ChargingPacket>(20);
		this->initQueues<Packet::QuickBlendPacket>(20);
		this->initQueues<Packet::DamagePacket>(40);
		this->initQueues<Packet::ChangeSpellsPacket>(10);
		this->initQueues<Packet::EventPacket>(10);
		this->initQueues<Packet::HealthPacket>(100);
		this->initQueues<Packet::DashPacket>(5);
		this->initQueues<Packet::EventPacket>(10);
		this->initQueues<Packet::HealthPacket>(10);
		this->initQueues<Packet::HealthPacket>(2);
		this->initQueues<Packet::DamagePacket>(100);
		this->initQueues<Packet::DamagePacket>(10);
		this->initQueues<Packet::HealthPacket>(30);
	}

	template<class packetType>
	void NurnEngine::initQueues(const int & size)
	{
		this->packetFilter->addNewQueue<packetType>(size);
		this->packager->addNewQueue<packetType>(size);
	}
}
