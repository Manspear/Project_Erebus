#include "ParticleSystem.h"


namespace Gear
{
	ParticleSystem::ParticleSystem()
	{
		for (size_t i = 0; i < maxParticles; i++)
		{
			particles[i] = new Gear::Particle(glm::vec3(rand() % 10, rand() % 5, 1), glm::vec3(1, 0, 0), glm::vec3(0, 0, 0), 10);
			
		}

	/*	run();*/
	}

	ParticleSystem::~ParticleSystem()
	{
		for (size_t i = 0; i < maxParticles; i++)
		{
			delete particles[i];
		}
	}

	void ParticleSystem::run()
	{
		for (size_t j = maxParticles -1; j >= 0; j--)
		{
			if (particles[j]->isDead())
			{
				delete particles[j];
				printf("particle is dead \n");
			}
		}
	}

}
