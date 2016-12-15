#pragma once
#include "BaseIncludes.h"

const float MAX_LIFESPAN = 10.0;

struct Partikel
{
	glm::vec3 direction;
	float lifeSpan;
};

namespace Gear
{
	class ParticleSystem
	{

	public:
		GEAR_API ParticleSystem();
		GEAR_API ParticleSystem(int n, float life, float speed, float rate, int number);
		GEAR_API ~ParticleSystem();

		GEAR_API void update(const float &dt);
		GEAR_API void explode();
		GEAR_API GLuint getPartVertexBuffer();
		GEAR_API void setEmmiterPos(glm::vec3 pos);
		GEAR_API int getNrOfActiveParticles();
		GEAR_API void activate();
		GEAR_API void deActivate();
		GEAR_API Partikel* getThePartikels();
		GEAR_API glm::vec3* getPositions();
		bool isActive;
		bool alive;
	private:
		GLuint particleVertexBuffer;
		glm::vec3 position;
		int maxParticles;
		int nrOfActiveParticles;
		Partikel* allParticles;
		glm::vec3* particlePos;
		float lifeTime;
		float partSpeed;
		float particleRate;
		int partPerRate;
		float timer;
		float gravityFactor;
	};
}