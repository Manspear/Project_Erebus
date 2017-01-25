#include "ParticleSystem.h"
#include <math.h>


namespace Gear
{
	ParticleSystem::ParticleSystem()
	{

	}

	ParticleSystem::~ParticleSystem()
	{
		delete[] newEmitterPos;
		delete[] particleEmitters;
	}

	ParticleSystem::ParticleSystem(std::string path, Importer::Assets * assets)
	{
		isActive = false;

		this->systemPos = { 0, 0, 0 };
		this->newEmitterPos = new glm::vec3[3];
		this->emitterPos = glm::vec3(0, 0, 0);
		this->dir = glm::vec3(0, 0, 0);

		this->v1 = { 1, 0, 0 };
		this->v2 = { 0, 1, 0 };
		this->v3 = { 0, 0, 1 };
		glDeleteBuffers(1, &particleVertexBuffer);

		FILE* file;
		file = fopen(path.c_str(), "rb");
		Emitter p;
		int n;

		if (file)
		{
			fread(&n, sizeof(int), 1, file);
			nrOfEmitters = n;
			particleEmitters = new ParticleEmitter[nrOfEmitters];
			for (int i = 0; i < nrOfEmitters; i++)
			{
				fread(&p, sizeof(Emitter), 1, file);
				particleEmitters[i].emitterInit(p, assets);
			}
			fclose(file);
		}
	}

	GEAR_API void ParticleSystem::update(const float &dt)
	{
		if (isActive)
		{
			for (int i = 0; i < nrOfEmitters; i++)
			{
				emitterPos = particleEmitters[i].localPos;

				newEmitterPos[0] = v1 * emitterPos.x;
				newEmitterPos[1] = emitterPos.y * v2;
				newEmitterPos[2] = emitterPos.z * v3;
		glm::vec3 tempVec = this->position + direction * focus; //emit direction
		glm::vec3 temp2;
		float randomSpeed;
			temp2 = glm::normalize(glm::vec3((rand() % 20 - 10), (rand() % 20 - 10), (rand() % 20 - 10))) + tempVec;
			randomSpeed = rand() % (int)partSpeed;
			allParticles[i].direction = glm::normalize(temp2 - this->position) * randomSpeed;

				dir += glm::vec3(0, 10, 0);

				emitterPos = systemPos + newEmitterPos[0] + newEmitterPos[1] + newEmitterPos[2];

				particleEmitters[i].setEmitterPos(emitterPos);
				particleEmitters[i].setDirection(dir);

				particleEmitters[i].update(dt);

				int nrActive = particleEmitters[i].getNrOfActiveParticles();

				if (nrActive <= 0)
				{
					isActive = false;
				}

			}		
		}

	}

	GEAR_API int ParticleSystem::getNrOfEmitters()
	{
		return this->nrOfEmitters;
	}

	GEAR_API void ParticleSystem::setSystemPos(glm::vec3 pos)
	{
		this->systemPos = pos;
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
	
	GEAR_API void ParticleSystem::setDirection(glm::vec3 direction)
	{
		dir = direction;
	}

}