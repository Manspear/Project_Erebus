#pragma once
#include "BaseIncludes.h"
#include "TextureAsset.h"
#include "ParticleEmitter.h"

namespace Gear
{
	class ParticleSystem
	{

	public:
		GEAR_API ParticleSystem();
		GEAR_API ~ParticleSystem();
		GEAR_API ParticleSystem(std::string path, Importer::Assets* assets);
		GEAR_API void update(const float &dt);
		GEAR_API int getNrOfEmitters();
		GEAR_API void setSystemPos(glm::vec3 pos);
		GEAR_API void activate();

		GEAR_API void deActivate();

		GEAR_API void setDirection(glm::vec3 direction);

		GEAR_API int getNrOfActive();

		GEAR_API void explode();

		ParticleEmitter* particleEmitters;
		bool isActive;
		bool alive;
	public:
		int nrOfEmitters;
		glm::vec3 systemPos;
		glm::vec3 dir;
		int nrActive;

		glm::vec3* newEmitterPos;
		glm::vec3 emitterPos;

		glm::vec3 v1;
		glm::vec3 v2;
		glm::vec3 v3;

	};
}