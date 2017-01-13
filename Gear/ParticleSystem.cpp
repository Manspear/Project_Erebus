#include "ParticleSystem.h"
#include <math.h>

Particle load(std::string path)
{

	FILE* file;
	file = fopen(path.c_str(), "rb");
	Particle p;
	if (file)
	{
		fread(&p, sizeof(Particle), 1, file);

		fclose(file);
	}

	return p;
}

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

	ParticleSystem::ParticleSystem(std::string path, Importer::Assets* assets, float focusSpread) : isActive(false), timer(0)
	{
		Particle part = load(path);

		gravityFactor = 0.0;
		maxParticles = part.numOfParticles;
		allParticles = new Partikel[maxParticles];
		particlePos = new glm::vec3[maxParticles];
		nrOfActiveParticles = 0;
		glGenBuffers(1, &particleVertexBuffer);
		this->lifeTime = part.lifeTime;
		partSpeed = part.speed;
		particleRate = 1 / part.emitPerSecond;
		partPerRate = part.nrOfParticlesPerEmit;
		direction = { 0, 0, 0 };
		textureAssetParticles = assets->load<Importer::TextureAsset>("Textures/fireball.png");
		focus = focusSpread;
		int x = 0;
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
					glm::vec3 tempVec = this->position + direction * focus; //circle pos
					glm::vec3 temp2;
					int i = 0;
					while (nrOfActiveParticles < maxParticles && partPerRate > i++)
					{
						particlePos[nrOfActiveParticles] = this->position;
						allParticles[nrOfActiveParticles].lifeSpan = this->lifeTime;
						//allParticles[nrOfActiveParticles++].direction = glm::normalize(glm::vec3((rand() % 1 - 2), (rand() % 1 - 2), (rand() % 1 - 2))) + tempVec; //circle
						temp2 = glm::normalize(glm::vec3((rand() % 20 - 10), (rand() % 20 - 10), (rand() % 20 - 10))) + tempVec;
						allParticles[nrOfActiveParticles++].direction = glm::normalize(temp2 - this->position);
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
					float randomSpeed = rand() % (int)partSpeed;
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
