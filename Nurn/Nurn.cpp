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
		std::ofstream testdatafile;
		testdatafile.open("sendTimes.txt", std::ofstream::trunc);
		for (long long i = 0; i < cpuSendTimes.size(); ++i)
		{
			testdatafile << cpuSendTimes.at(i) << std::endl;
		}
		testdatafile.close();

		testdatafile.open("recieveTimes.txt", std::ofstream::trunc);
		for (long long i = 0; i < cpuRecieveTimes.size(); ++i)
		{
			testdatafile << cpuRecieveTimes.at(i) << std::endl;
		}
		testdatafile.close();

		testdatafile.open("fetchPushTimes.txt", std::ofstream::trunc);
		for (long long i = 0; i < fetchPushTimes.size(); ++i)
		{
			testdatafile << fetchPushTimes.at(i) << std::endl;
		}
		testdatafile.close();
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
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		this->packager->buildNetPacket();
		if (this->packager->getCurrentNetPacketSize() > 6)
		{
			this->Send(this->packager->getPacketPointer(), this->packager->getCurrentNetPacketSize());
		}
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		cpuSendTimes.push_back(duration);

		return true;
	}

	int NurnEngine::Receive(void * data, int size)
	{
		return netCommunication.ReceivePackage(address, data, size);
	}

	bool NurnEngine::Receive()
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		unsigned char buffer[packetSize];
		int bytes_read = netCommunication.Peek(address, buffer, 2);
		if (bytes_read > 0)
		{
			uint16_t expectedSize = buffer[0] | buffer[1] << 8;
			this->Receive(buffer, expectedSize);
			this->packetFilter->openNetPacket(buffer);
		}
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		cpuRecieveTimes.push_back(duration);

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
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(TRANSFORM_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}

	bool NurnEngine::fetchTransformPacket(Packet::TransformPacket &packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(TRANSFORM_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushAnimationPacket(const Packet::AnimationPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(ANIMATION_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}

	bool NurnEngine::fetchAnimationPacket(Packet::AnimationPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(ANIMATION_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushAIStatePacket(const Packet::AIStatePacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(AI_STATE_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}

	bool NurnEngine::fetchAIPacket(Packet::AIStatePacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(AI_STATE_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushSpellPacket(const Packet::SpellPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(SPELL_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}

	bool NurnEngine::fetchSpellPacket(Packet::SpellPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(SPELL_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushAITransformPacket(const Packet::TransformPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(AI_TRANSFORM_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}

	bool NurnEngine::fetchAITransformPacket(Packet::TransformPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(AI_TRANSFORM_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushChargingPacket(const Packet::ChargingPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(CHARGING_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}

	bool NurnEngine::fetchChargingPacket(Packet::ChargingPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(CHARGING_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushQuickBlendPacket(const Packet::QuickBlendPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(QUICKBLEND_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}

	bool NurnEngine::fetchQuickBlendPacket(Packet::QuickBlendPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(QUICKBLEND_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushDamagePacket(const Packet::DamagePacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(DAMAGE_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}

	bool NurnEngine::fetchDamagePacket(Packet::DamagePacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(DAMAGE_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushChangeSpellsPacket(const Packet::ChangeSpellsPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(CHANGESPELLS_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}

	bool NurnEngine::fetchChangeSpellsPacket(Packet::ChangeSpellsPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(CHANGESPELLS_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushPlayerEventPacket(const Packet::EventPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(PLAYER_EVENT_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}

	bool NurnEngine::fetchPlayerEventPacket(Packet::EventPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(PLAYER_EVENT_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushAIHealthPacket(const Packet::HealthPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(AI_HEALTH_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}

	bool NurnEngine::fetchAIHealthPacket(Packet::HealthPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(AI_HEALTH_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushDashPacket(const Packet::DashPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(DASH_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}

	bool NurnEngine::fetchDashPacket(Packet::DashPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(DASH_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushEndEventPacket(const Packet::EventPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(END_EVENT_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}

	bool NurnEngine::fetchEndEventPacket(Packet::EventPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(END_EVENT_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushPlayerHealthPacket(const Packet::HealthPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(PLAYER_HEALTH_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}

	bool NurnEngine::fetchPlayerHealthPacket(Packet::HealthPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(PLAYER_HEALTH_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushRessurectionPacket(const Packet::HealthPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(RESSURECTION_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}
	
	bool NurnEngine::fetchRessurectionPacket(Packet::HealthPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(RESSURECTION_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushAIDamageTextPacket(const Packet::DamagePacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(AI_DAMAGE_TEXT_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}
	
	bool NurnEngine::fetchAIDamageTextPacket(Packet::DamagePacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(AI_DAMAGE_TEXT_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushBossDamageTextPacket(const Packet::DamagePacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(BOSS_DAMAGE_TEXT_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}

	bool NurnEngine::fetchBossDamageTextPacket(Packet::DamagePacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(BOSS_DAMAGE_TEXT_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
	}

	void NurnEngine::pushBossHealthPacket(const Packet::HealthPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		this->packager->getQueue(BOSS_HEALTH_PACKET)->push(&packet);
		fetchPushTimes.push_back(duration);
	}
	
	bool NurnEngine::fetchBossHealthPacket(Packet::HealthPacket& packet)
	{
		std::chrono::system_clock::time_point start = std::chrono::system_clock::now();
		uint32_t duration = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start).count();
		return this->packetFilter->getQueue(BOSS_HEALTH_PACKET)->pop(&packet);
		fetchPushTimes.push_back(duration);
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
