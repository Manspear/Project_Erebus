#pragma once
#include "BaseIncludes.h"
#include "ShaderProgram.h"
#include "Camera.h"
#include "Model.h"
#include "RenderQueue.h"
#include "Particles.h"

namespace Gear
{
	class GearEngine {
	public:
		GEAR_API GearEngine();
		GEAR_API ~GearEngine();
		GEAR_API void draw(Camera* camera);
		
		GEAR_API bool isRunning();

		// TEMPORARY: Vi ska inte ha det såhär
		// För att rita ut modellen från importern
		RenderQueue renderQueue;
		std::vector<RenderQueueElement*> renderElements;
		std::vector<RenderQueueElement*> renderParticles;
		std::vector<ShaderProgram*> allShaders;

	private:
		//Window* window;
		
	};
	GEAR_API double Add(double a, double b);
}