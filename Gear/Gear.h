#pragma once
#include "BaseIncludes.h"
#include "Camera.h"
//#include "Model.h"
#include "Particles.h"
#include "RenderQueue.h"
#include "Particles.h"
#include "Light.h"
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
		//Temporay debug function
		GEAR_API void setDrawMode(int drawMode);

		// TEMPORARY: Vi ska inte ha det såhär
		// För att rita ut modellen från importern
		RenderQueue renderQueue;
		std::vector<RenderQueueElement*> tempRenderElements;
		
	/*	std::vector<RenderQueueElement*> renderParticles;*/
	/*	std::vector<ShaderProgram*> allShaders;*/
		GEAR_API void addStaticNonModel(staticNonModels* model);

		//--TODO: Implement API--
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
		//DebugQuad
		GLuint quadVAO = 0;
		GLuint quadVBO;
		ShaderProgram *quadShader;
		ShaderProgram *lightPassShader;
		//Window* window;
		ShaderProgram gBuffer;
		std::vector<Lights::PointLight> pointLights;
		std::vector<Lights::DirLight> dirLights;
		//temp debug variable
		int drawMode = 1;

		void drawQuad();
	};
}