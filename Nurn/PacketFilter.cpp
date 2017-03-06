#include "PacketFilter.hpp"

#ifdef DEBUGGING_NETWORK
PacketFilter::PacketFilter(DebugNetwork * debugNetwork_ptr)
{
	this->debugNetwork_ptr = debugNetwork_ptr;
#else
PacketFilter::PacketFilter()
{
#endif
	this->transformQueue = new PacketQueue<TransformPacket>(3);
	this->animationQueue = new PacketQueue<AnimationPacket>(5);
	this->aiStateQueue = new PacketQueue<AIStatePacket>(100);
	this->spellQueue = new PacketQueue<SpellPacket>(20);
	this->aiTransformQueue = new PacketQueue<TransformPacket>(100);
	this->chargingQueue = new PacketQueue<ChargingPacket>(20);
	this->quickBlendQueue = new PacketQueue<QuickBlendPacket>(20);
	this->damageQueue = new PacketQueue<DamagePacket>(40);
	this->changeSpellsQueue = new PacketQueue<ChangeSpellsPacket>(10);
	this->playerEventQueue = new PacketQueue<EventPacket>(10);
	this->aiHealthQueue = new PacketQueue<HealthPacket>(100);
	this->dashQueue = new PacketQueue<DashPacket>(5);
	this->endEventQueue = new PacketQueue<EventPacket>(10);
	this->playerHealthQueue = new PacketQueue<HealthPacket>(10);
	this->ressurectionQueue = new PacketQueue<HealthPacket>(2);
	this->aiDamageTextQueue = new PacketQueue<DamagePacket>(100);
	this->bossDamageTextQueue = new PacketQueue<DamagePacket>(10);
	this->bossHealthQueue = new PacketQueue<HealthPacket>(30);
}

PacketFilter::~PacketFilter()
{
	if (this->transformQueue)
	{
		delete this->transformQueue;
		this->transformQueue = 0;
	}
	if (this->animationQueue)
	{
		delete this->animationQueue;
		this->animationQueue = 0;
	}
	if (this->aiStateQueue)
	{
		delete this->aiStateQueue;
		this->aiStateQueue = 0;
	}
	if (this->spellQueue)
	{
		delete this->spellQueue;
		this->spellQueue = 0;
	}
	if (this->aiTransformQueue)
	{
		delete this->aiTransformQueue;
		this->aiTransformQueue = 0;
	}
	if (this->chargingQueue)
	{
		delete this->chargingQueue;
		this->chargingQueue = 0;
	}
	if (this->quickBlendQueue)
	{
		delete this->quickBlendQueue;
		this->quickBlendQueue = 0;
	}
	if (this->damageQueue)
	{
		delete this->damageQueue;
		this->damageQueue = 0;
	}
	if (this->changeSpellsQueue)
	{
		delete this->changeSpellsQueue;
		this->changeSpellsQueue = 0;
	}
	if (this->playerEventQueue)
	{
		delete this->playerEventQueue;
		this->playerEventQueue = 0;
	}
	if (this->aiHealthQueue)
	{
		delete this->aiHealthQueue;
		this->aiHealthQueue = 0;
	}
	if (this->dashQueue)
	{
		delete this->dashQueue;
		this->dashQueue = 0;
	}
	if (this->endEventQueue)
	{
		delete this->endEventQueue;
		this->endEventQueue = 0;
	}
	if (this->playerHealthQueue)
	{
		delete this->playerHealthQueue;
		this->playerHealthQueue = 0;
	}
	if (this->ressurectionQueue)
	{
		delete this->ressurectionQueue;
		this->ressurectionQueue = 0;
	}
	if (this->aiDamageTextQueue)
	{
		delete this->aiDamageTextQueue;
		this->aiDamageTextQueue = 0;
	}
	if (this->bossDamageTextQueue)
	{
		delete this->bossDamageTextQueue;
		this->bossDamageTextQueue = 0;
	}
	if (this->bossHealthQueue)
	{
		delete this->bossHealthQueue;
		this->bossHealthQueue = 0;
	}
}

void PacketFilter::openNetPacket(const unsigned char * const memoryPointer)
{
	uint16_t bytesRead = sizeof(uint16_t); // Start reading right after where the value of bytesLeft were located in the packet.
	uint16_t sizeOfNetPacket =  memoryPointer[0] | memoryPointer[1] << 8; // Size of the content. The first 2 bytes are read immideately.
	MetaDataPacket metaDataPacket;

	while (bytesRead < sizeOfNetPacket)
	{
		memcpy(metaDataPacket.bytes, memoryPointer + bytesRead, sizeof(MetaDataPacket));
		bytesRead += sizeof(MetaDataPacket);

		// For each metaDataPacket, do...

		if (metaDataPacket.metaData.sizeInBytes > 0)
		{
			// Get the PacketType data from MetaDataPacket
			switch (metaDataPacket.metaData.packetType)
			{
				case TRANSFORM_PACKET:
					this->transformQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of TransformPacket data to the correct queue
					break;
				case ANIMATION_PACKET:
					this->animationQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of AnimationPacket data to the correct queue
					break;
				case AI_STATE_PACKET:
					this->aiStateQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of AIPacket data to the correct queue
					break;
				case SPELL_PACKET:
					this->spellQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of SpellPacket data to the correct queue
					break;
				case AI_TRANSFORM_PACKET:
					this->aiTransformQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of aiTransformPacket data to the correct queue
					break;
				case CHARGING_PACKET:
					this->chargingQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of ChargingPacket data to the correct queue
					break;
				case QUICKBLEND_PACKET:
					this->quickBlendQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of QuickBlendPacket data to the correct queue
					break;
				case DAMAGE_PACKET:
					this->damageQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of DamagePacket data to the correct queue
					break;
				case CHANGESPELLS_PACKET:
					this->changeSpellsQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of ChangeSpellsPacket data to the correct queue
					break;
				case PLAYER_EVENT_PACKET:
					this->playerEventQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of EventPacket data to the correct queue
					break;
				case AI_HEALTH_PACKET:
					this->aiHealthQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of aiHealthPacket data to the correct queue
					break;
				case DASH_PACKET:
					this->dashQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of dashPacket data to the correct queue
					break;
				case END_EVENT_PACKET:
					this->endEventQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of endEventPacket data to the correct queue
					break;
				case PLAYER_HEALTH_PACKET:
					this->playerHealthQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of playerHealthPacket data to the correct queue
					break;
				case RESSURECTION_PACKET:
					this->ressurectionQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of ressurectionPacket data to the correct queue
					break;
				case AI_DAMAGE_TEXT_PACKET:
					this->aiDamageTextQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of aiDamageTextPacket data to the correct queue
					break;
				case BOSS_DAMAGE_TEXT_PACKET:
					this->bossDamageTextQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of bossDamageTextPacket data to the correct queue
					break;
				case BOSS_HEALTH_PACKET:
					this->bossHealthQueue->batchPush(memoryPointer, bytesRead, metaDataPacket.metaData.sizeInBytes); // Add x bytes of bossHealthPacket data to the correct queue
					break;

#ifdef DEBUGGING_NETWORK
				case PING_PACKET:
					this->debugNetwork_ptr->setPing();

					// Copy the PingPacket data to the PingPacket in DebugNetwork
					memcpy(&this->debugNetwork_ptr->getPingPacket(), memoryPointer + bytesRead, sizeof(PingPacket));

					if (this->debugNetwork_ptr->getPingPacket().data.loopNumber == 1)
					{
						// On Client
						//printf("Ping on client: %f", this->debugNetwork_ptr->getPing());

						this->debugNetwork_ptr->getPingPacket().data.loopNumber--;
					}
					else
					{
						// On Host
						//printf("Ping on host: %f", this->debugNetwork_ptr->getPing());

						this->debugNetwork_ptr->getPingPacket().data.loopNumber++;
					}

					// Send PingPacket back to the other player
					//printf("      loopNumber: %d\n", this->debugNetwork_ptr->getPingPacket().data.loopNumber);
					this->debugNetwork_ptr->setSendPingPacket(true);


					break;
#endif
				default:
					std::cout << "Network subpacket not recognized" << std::endl; // RIP kernel panic
			}
			bytesRead += metaDataPacket.metaData.sizeInBytes;
		}
	}
}

PacketQueue<TransformPacket> * PacketFilter::getTransformQueue()
{
	return this->transformQueue;
}

PacketQueue<AnimationPacket> * PacketFilter::getAnimationQueue()
{
	return this->animationQueue;
}

PacketQueue<AIStatePacket> * PacketFilter::getAIStateQueue()
{
	return this->aiStateQueue;
}

PacketQueue<SpellPacket> * PacketFilter::getSpellQueue()
{
	return this->spellQueue;
}

PacketQueue<TransformPacket> * PacketFilter::getAITransformQueue()
{
	return this->aiTransformQueue;
}

PacketQueue<ChargingPacket> * PacketFilter::getChargingQueue()
{
	return this->chargingQueue;
}

PacketQueue<QuickBlendPacket> * PacketFilter::getQuickBlendQueue()
{
	return this->quickBlendQueue;
}

PacketQueue<DamagePacket> * PacketFilter::getDamageQueue()
{
	return this->damageQueue;
}

PacketQueue<ChangeSpellsPacket> * PacketFilter::getChangeSpellsQueue()
{
	return this->changeSpellsQueue;
}

PacketQueue<EventPacket> * PacketFilter::getPlayerEventQueue()
{
	return this->playerEventQueue;
}

PacketQueue<HealthPacket> * PacketFilter::getAIHealthQueue()
{
	return this->aiHealthQueue;
}

PacketQueue<DashPacket> * PacketFilter::getDashQueue()
{
	return this->dashQueue;
}

PacketQueue<EventPacket> * PacketFilter::getEndEventQueue()
{
	return this->endEventQueue;
}

PacketQueue<HealthPacket> * PacketFilter::getPlayerHealthQueue()
{
	return this->playerHealthQueue;
}

PacketQueue<HealthPacket> * PacketFilter::getRessurectionQueue()
{
	return this->ressurectionQueue;
}

PacketQueue<DamagePacket> * PacketFilter::getAIDamageTextQueue()
{
	return this->aiDamageTextQueue;
}

PacketQueue<DamagePacket> * PacketFilter::getBossDamageTextQueue()
{
	return this->bossDamageTextQueue;
}

PacketQueue<HealthPacket> * PacketFilter::getBossHealthQueue()
{
	return this->bossHealthQueue;
}