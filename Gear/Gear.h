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
		GEAR_API void draw(std::vector<RenderQueue::Element*> elem, Camera* camera);
		

		GEAR_API bool isRunning();

		// TEMPORARY: Vi ska inte ha det såhär
		// För att rita ut modellen från importern
		RenderQueue tempRenderQueue;
		std::vector<RenderQueueElement*> tempRenderElements;
		
	/*	std::vector<RenderQueueElement*> renderParticles;*/
	/*	std::vector<ShaderProgram*> allShaders;*/
		GEAR_API void addStaticNonModel(staticNonModels* model);

	private:
		std::vector<staticNonModels*> statModels;
		std::vector<RenderQueueElement*> renderElements;
		RenderQueue renderQueue;
		//Window* window;
	};
}