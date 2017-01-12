#include "ParticleSystem.h"
#include <math.h>

namespace Gear
{
	ParticleSystem::ParticleSystem()
	{

	}
	ParticleSystem::ParticleSystem(int n, float life, float speed, float rate, int number) : isActive(false), timer(0)
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
	}

	ParticleSystem::~ParticleSystem()
	{
		delete[] allParticles;
		delete[] particlePos;
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
					int i = 0;
					while (nrOfActiveParticles < maxParticles && partPerRate > i++)
					{
						particlePos[nrOfActiveParticles] = this->position;
						allParticles[nrOfActiveParticles].lifeSpan = this->lifeTime;
						allParticles[nrOfActiveParticles++].direction = glm::vec3(rand() % 5 - 2.5, rand() % 5 - 2.5, rand() % 5 - 2.5);

					}
					timer = 0;
				}
			}
			for (int i = 0; i < nrOfActiveParticles; i++)
			{
				allParticles[i].lifeSpan -= dt;
				if (allParticles[i].lifeSpan > 0.0)
				{
					allParticles[i].direction.y += gravityFactor * dt;
					particlePos[i] += allParticles[i].direction * partSpeed * dt;
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
		for (int i = 0; i < maxParticles; i++)
		{
			particlePos[i] = this->position;
			allParticles[i].lifeSpan = this->lifeTime;
			allParticles[i].direction = glm::normalize( glm::vec3(rand() % 10 - 5, rand() % 10 - 5, rand() % 10 - 5));
			allParticles[i].direction *= rand() % (int)partSpeed;
			nrOfActiveParticles = i;
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
