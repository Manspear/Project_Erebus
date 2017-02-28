#include "particleEmitter.h"

#include <math.h>

namespace Gear
{
	ParticleEmitter::ParticleEmitter() : particleSize(1.0)
	{

	}

	ParticleEmitter::ParticleEmitter(int maxPart, float life, float speed, float particleRate, int partPerSprut, 
									float gravity, float foccus, float size, float growFactor)
	{
		this->extrovert = true;
		timer = 0;
		isActive = false;
		nrOfActiveParticles = 0;
		this->maxParticles = maxPart;
		this->allParticles = new Partikel[maxParticles];
		this->particlePos = new SendStruct[maxParticles];
		this->lifeTime = life;
		this->partSpeed = speed;
		this->particleRate = 1 / particleRate;
		this->partPerRate = partPerSprut;
		this->gravityFactor = gravity;
		this->focus = foccus;
		this->particleSize = size;
		this->direction = { 0, 0, 0 };
		this->textureAssetParticles = nullptr;
		for (size_t i = 0; i <maxParticles; i++)
		{
			particlePos[i].size = this->particleSize;
		}
		this->shrinkage = growFactor;
	}

	void ParticleEmitter::emitterInit(Emitter emitter, Importer::Assets* assets)
	{		
		this->extrovert = true;
		timer = 0;
		isActive = false;
		nrOfActiveParticles = 0;
		this->maxParticles = emitter.numOfParticles;
		this->allParticles = new Partikel[maxParticles];
		this->particlePos = new SendStruct[maxParticles];
		this->lifeTime = emitter.lifeTime;
		this->partSpeed = emitter.speed;
		this->particleRate = emitter.particleRate;
		this->partPerRate = emitter.partPerRate;
		this->gravityFactor = emitter.gravity;
		this->focus = emitter.focusSpread;
		this->particleSize = emitter.particleSize;
		this->direction = { emitter.dirX, emitter.dirY, emitter.dirZ };
		this->textureAssetParticles = assets->load<Importer::TextureAsset>("Textures/" + std::string(emitter.textureName));
		for (size_t i = 0; i <maxParticles; i++)
		{
			particlePos[i].size = 1.0;
		}
		shrinkage = emitter.shrinkage;

		this->assets = assets;
		this->textureName = "Textures/" + std::string(emitter.textureName);
	}

	ParticleEmitter::~ParticleEmitter()
	{	
		delete[] this->allParticles;
		delete[] this->particlePos;

		assets->unload<Importer::TextureAsset>( textureName );
	}

	void ParticleEmitter::spawn(float dt)
	{
		if (alive)
		{
			timer += dt;
			if (timer > particleRate)
			{
				glm::vec3 tempVec = this->position + direction * focus; //emit direction
				glm::vec3 temp2;
				int i = 0;
				while (nrOfActiveParticles < maxParticles && partPerRate > i++)
				{
					particlePos[nrOfActiveParticles].pos = this->position;
					allParticles[nrOfActiveParticles].lifeSpan = this->lifeTime;
					particlePos[nrOfActiveParticles].size = this->particleSize;
					temp2 = glm::normalize(glm::vec3((rand() % 20 - 10), (rand() % 20 - 10), (rand() % 20 - 10))) + tempVec;
					allParticles[nrOfActiveParticles++].direction = glm::normalize(temp2 - this->position);
				}
				timer = 0;
			}
		}
	}


	void ParticleEmitter::introvertSpawn(float dt)
	{
		if (alive)
		{
			timer += dt;
			if (timer > particleRate)
			{
				int i = 0;
				while (nrOfActiveParticles < maxParticles && partPerRate > i++)
				{
					allParticles[nrOfActiveParticles].lifeSpan = this->lifeTime;
					particlePos[nrOfActiveParticles].pos = glm::vec3((rand() % 16 - 8), (rand() % 16 - 8), (rand() % 16 - 8)) + this->position;
					allParticles[nrOfActiveParticles].direction = glm::normalize(this->position - particlePos[nrOfActiveParticles].pos);
					particlePos[nrOfActiveParticles].size = this->particleSize;
					nrOfActiveParticles++;
				}
				timer = 0;
			}
		}
	}

	bool ParticleEmitter::update(const float &dt)
	{
		if (isActive)
		{
			if (this->extrovert)
				spawn(dt);
			else
				introvertSpawn(dt);

			float randomSpeed;
			for (int i = 0; i < nrOfActiveParticles; i++)
			{
				allParticles[i].lifeSpan -= dt;
				if (allParticles[i].lifeSpan > 0.0)
				{
					allParticles[i].direction.y += gravityFactor * dt;
					randomSpeed = (float)(rand() % (int)partSpeed);
					particlePos[i].pos += allParticles[i].direction * randomSpeed * dt;
					particlePos[i].size += shrinkage * dt;
				}
				else
				{
					particlePos[i] = particlePos[nrOfActiveParticles - 1];
					allParticles[i] = allParticles[--nrOfActiveParticles];
					//particlePos[i].size = this->particleSize;
					if (nrOfActiveParticles <= 0)
						isActive = false;
				}
			}
		}
		return !isActive;
	}

	void ParticleEmitter::explode()
	{
		nrOfActiveParticles = 0;
		glm::vec3 tempVec = this->position + direction * focus;
		glm::vec3 temp2;
		for (int i = 0; i < maxParticles; i++)
		{
			particlePos[i].pos = this->position;
			particlePos[i].size = this->particleSize;
			allParticles[i].lifeSpan = this->lifeTime;	
			temp2 = glm::normalize(glm::vec3((rand() % 10 - 5), (rand() % 10 - 5), (rand() % 10 - 5))) + tempVec;
			allParticles[i].direction = glm::normalize(temp2 - this->position);
			allParticles[i].direction *= rand() % (int)partSpeed;	
		}
		nrOfActiveParticles = maxParticles;
		isActive = true;
		alive = false;
	}

	GEAR_API void ParticleEmitter::explode2(glm::vec3 position)
	{
		nrOfActiveParticles = 0;
		this->position = position;
		glm::vec3 tempVec = this->position + direction * focus;
		glm::vec3 temp2;
		if (this->extrovert)
		{
			for (int i = 0; i < maxParticles; i++)
			{
				particlePos[i].pos = this->position;
				temp2 = glm::normalize(glm::vec3((rand() % 10 - 5), (rand() % 10 - 5), (rand() % 10 - 5))) + tempVec;
				allParticles[i].direction = glm::normalize(temp2 - this->position);
			}
		}
		else
		{
			for (int i = 0; i < maxParticles; i++)
			{
				particlePos[i].pos = glm::vec3((rand() % 16 - 8), (rand() % 16 - 8), (rand() % 16 - 8)) + this->position;
				allParticles[i].direction = glm::normalize(this->position - particlePos[i].pos);
			}
		}
		for (int i = 0; i < maxParticles; i++)
		{
			allParticles[i].lifeSpan = this->lifeTime;
			nrOfActiveParticles = i;
			particlePos[i].size = this->particleSize;
			allParticles[i].direction *= rand() % (int)partSpeed;
		}
		isActive = true;
		alive = false;
	}

	void ParticleEmitter::resetEmitter()
	{
		for (int i = 0; i < this->maxParticles; i++)
		{
			particlePos[i].pos = this->position;
			allParticles[i].lifeSpan = 0;
			allParticles[i].direction = { 0, 0, 0 };
		}
		nrOfActiveParticles = 0;
	}

	GEAR_API void ParticleEmitter::setExtrovert(bool yesNo)
	{
		this->extrovert = yesNo;
	}

	GEAR_API void ParticleEmitter::setFocus(float focusPower)
	{
		this->focus = focusPower;
	}

	GEAR_API void ParticleEmitter::activate()
	{
		this->isActive = true;
		this->alive = true;
	}

	GEAR_API void ParticleEmitter::deActivate()
	{
		this->alive = false;
	}

	/*GEAR_API void ParticleEmitter::setTexture(Importer::TextureAsset * texture)
	{
		this->textureAssetParticles = texture;
	}*/

	void ParticleEmitter::setTexture( Importer::TextureAsset* texture, Importer::Assets* assets )
	{
		this->textureAssetParticles = texture;
		this->assets = assets;
	}

	void ParticleEmitter::setEmitterPos(glm::vec3 pos)
	{
		this->position = pos;
	}

	void ParticleEmitter::setDirection(glm::vec3 dir)
	{
		this->direction = dir;
	}

	GEAR_API int ParticleEmitter::getNrOfActiveParticles()
	{
		return this->nrOfActiveParticles;
	}

	GEAR_API SendStruct* ParticleEmitter::getPositions()
	{
		return this->particlePos;
	}

	GEAR_API Importer::TextureAsset * ParticleEmitter::getTexture()
	{
		return this->textureAssetParticles;
	}
}