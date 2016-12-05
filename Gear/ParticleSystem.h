#pragma once
#include "BaseIncludes.h"
#include "Particles.h"

const int maxParticles = 10;

namespace Gear
{
	class ParticleSystem
	{

	public:
		GEAR_API ParticleSystem();
		GEAR_API ~ParticleSystem();
		GEAR_API void run();

		Gear::Particle* particles[maxParticles];


	private:


	};
}