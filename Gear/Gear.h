#pragma once
#include "BaseIncludes.h"
#include "Camera.h"
//#include "Model.h"
#include "RenderQueue.h"
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

		GEAR_API bool isRunning();
		
		GEAR_API void addStaticNonModel(staticNonModels* model);

		//--TODO: Implement API--
		GEAR_API void bindTransforms(float** transforms, bool** actives, int* n, glm::vec3* lookAts, TransformStruct** theTrans);

		GEAR_API void addModelInstance(ModelAsset* asset);

		GEAR_API void queueModels(std::vector<ModelInstance>* models);
		GEAR_API void queueDynamicModels(std::vector<ModelInstance>* models);
		GEAR_API void queueAnimModels(std::vector<Dummy>* models);
		GEAR_API void queueParticles(std::vector<ParticleSystem>* particles);
		GEAR_API void queueLights(std::vector<Light>* lights);
		GEAR_API void draw(Camera* camera);

		GEAR_API void allocateWorlds(int n);
		GEAR_API int generateWorldMatrix();
		//----------------------

	private:
		std::vector<staticNonModels*> statModels;
		RenderQueue queue;

		TransformStruct** allTrans;
		float** transformArray;		//Sekvens: {pos0x, pos0y, pos0z, rot0x, rot0y, rot0z, pos1x...}
		int** transformIndexArray;
		bool** transformActiveArray;
		int* transformCount;
		glm::vec3* transformLookAts;

		std::vector<ModelInstance>* staticModels;
		std::vector<ModelInstance>* dynamicModels;
		std::vector<ParticleSystem>* particleSystems;

		//Default values, to avoid nullptrs
		std::vector<ModelInstance> defaultModelList = std::vector<ModelInstance>(0);
		std::vector<ParticleSystem> defaultParticleList = std::vector<ParticleSystem>(0);
	};
}