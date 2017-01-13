#include "ParticleSystem.h"
#include <math.h>

namespace Gear
{
	ParticleSystem::ParticleSystem()
	{

	}
	ParticleSystem::ParticleSystem(int n, float life, float speed, float rate, int number, float focusSpread) : isActive(false), timer(0)
	{
		gravityFactor = 0.0;
		maxParticles = n;
		allParticles = new Partikel[n];
		particlePos = new glm::vec3[n];
		nrOfActiveParticles = 0;
		glGenBuffers(1, &particleVertexBuffer);
		this->lifeTime = life;
		partSpeed = speed;
		particleRate = 1 / rate;
		partPerRate = number;
		direction = { 0, 0, 0 } ;
		focus = focusSpread;
	}

	ParticleSystem::~ParticleSystem()
	{
		delete[] allParticles;
		delete[] particlePos;
		glDeleteBuffers(1, &particleVertexBuffer);
	}

	GEAR_API void ParticleSystem::update(const float &dt)
	{
		if (isActive)
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
						particlePos[nrOfActiveParticles] = this->position;
						allParticles[nrOfActiveParticles].lifeSpan = this->lifeTime;
						temp2 = glm::normalize(glm::vec3((rand() % 20 - 10), (rand() % 20 - 10), (rand() % 20 - 10))) + tempVec;
						allParticles[nrOfActiveParticles++].direction = glm::normalize(temp2 - this->position);
					}
					timer = 0;
				}
			}
			float randomSpeed;
			for (int i = 0; i < nrOfActiveParticles; i++)
			{
				allParticles[i].lifeSpan -= dt;				
				if (allParticles[i].lifeSpan > 0.0)
				{
					allParticles[i].direction.y += gravityFactor * dt;
					randomSpeed = rand() % (int)partSpeed;
					particlePos[i] += allParticles[i].direction * randomSpeed * dt;
				}
				else
				{
					particlePos[i] = particlePos[nrOfActiveParticles - 1];
					allParticles[i] = allParticles[--nrOfActiveParticles];
					if (nrOfActiveParticles <= 0)
						isActive = false;
				}
			}
		}
	}

	void ParticleSystem::explode()
	{
		nrOfActiveParticles = 0;
		glm::vec3 tempVec = this->position + direction * focus; //emit direction
		glm::vec3 temp2;
		float randomSpeed;
		for (int i = 0; i < maxParticles; i++)
		{
			particlePos[i] = this->position;
			allParticles[i].lifeSpan = this->lifeTime;
			nrOfActiveParticles = i;
			temp2 = glm::normalize(glm::vec3((rand() % 20 - 10), (rand() % 20 - 10), (rand() % 20 - 10))) + tempVec;
			randomSpeed = rand() % (int)partSpeed;
			allParticles[i].direction = glm::normalize(temp2 - this->position) * randomSpeed;
		}
		isActive = true;
		alive = false;
	}

	GLuint ParticleSystem::getPartVertexBuffer()
	{
		return particleVertexBuffer;
	}

	void ParticleSystem::setEmmiterPos(glm::vec3 pos)
	{
		this->position = pos;
	}

	GEAR_API void ParticleSystem::setDirection(float r, float g, float b)
	{
		this->direction = { r, g, b };
	}

	GEAR_API int ParticleSystem::getNrOfActiveParticles()
	{
		return nrOfActiveParticles;
	}

	GEAR_API void ParticleSystem::activate()
	{
		isActive = true;
		alive = true;
	}

	GEAR_API void ParticleSystem::deActivate()
	{
		alive = false;
	}

	GEAR_API Partikel * ParticleSystem::getThePartikels()
	{
		return allParticles;
	}

	GEAR_API glm::vec3 * ParticleSystem::getPositions()
	{
		return particlePos;
	}

	GEAR_API void ParticleSystem::setColor(float r, float g, float b)
	{
		color.r = r; color.g = g; color.b = b;
	}

	GEAR_API Color ParticleSystem::getColor() const 
	{
		return color;
	}

	GEAR_API void ParticleSystem::setTextrue(Importer::TextureAsset * tAParticles)
	{
		textureAssetParticles = tAParticles;
	}

	GEAR_API Importer::TextureAsset * ParticleSystem::getTexture()
	{
		return textureAssetParticles;
	}

}
