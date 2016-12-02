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

	class Dummy {};

	class Light {};

	class GearEngine {
	public:
		GEAR_API GearEngine();
		GEAR_API ~GearEngine();
		GEAR_API void draw(Camera* camera, std::vector<ModelInstance>* instances);
		GEAR_API void draw(std::vector<RenderQueueElement*> elem, Camera* camera);
		

		GEAR_API bool isRunning();

		// TEMPORARY: Vi ska inte ha det såhär
		// För att rita ut modellen från importern
		RenderQueue renderQueue;
		std::vector<RenderQueueElement*> tempRenderElements;
		
	/*	std::vector<RenderQueueElement*> renderParticles;*/
	/*	std::vector<ShaderProgram*> allShaders;*/
		GEAR_API void addStaticNonModel(staticNonModels* model);

		//--TODO: Implement API--
		GEAR_API void bindTransforms(float* transforms, int* indices, int* n, glm::vec3* lookAts);

		GEAR_API void addModelInstance(ModelAsset* asset);

		GEAR_API void queueStaticModels(std::vector<ModelInstance*> &models);
		GEAR_API void queueDynamicModels(std::vector<ModelInstance*> &models);
		GEAR_API void queueAnimModels(std::vector<Dummy*> &models);
		GEAR_API void queueParticles(std::vector<Particle*> &particles);
		GEAR_API void queueLights(std::vector<Light*> &lights);
		GEAR_API void draw();

		GEAR_API void allocateWorlds(int n);
		//----------------------

	private:
		std::vector<staticNonModels*> statModels;
		std::vector<RenderQueueElement*> renderElements;

		float* transformArray;		//Sekvens: {pos0x, pos0y, pos0z, rot0x, rot0y, rot0z, pos1x...}
		int* transformIndexArray;
		int* transformCount;
		glm::vec3* transformLookAts;

		//Window* window;
	};
}