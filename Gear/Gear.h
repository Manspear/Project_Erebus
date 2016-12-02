#pragma once
#include "BaseIncludes.h"
#include "Camera.h"
//#include "Model.h"
#include "Particles.h"
#include "RenderQueue.h"
#include "Particles.h"
#include "Inputs.h"
#include "staticNonModels.h"

namespace Gear
{




	class GearEngine {
	public:
		GEAR_API GearEngine();
		GEAR_API ~GearEngine();
		GEAR_API void draw(Camera* camera, std::vector<ModelInstance>* instances);
		

		GEAR_API bool isRunning();

		// TEMPORARY: Vi ska inte ha det såhär
		// För att rita ut modellen från importern
		RenderQueue renderQueue;
		std::vector<RenderQueueElement*> renderElements;
		
	/*	std::vector<RenderQueueElement*> renderParticles;*/
	/*	std::vector<ShaderProgram*> allShaders;*/
		GEAR_API void addStaticNonModel(staticNonModels* model);
	private:
		std::vector<staticNonModels*> statModels;
		//Window* window;
	};
}