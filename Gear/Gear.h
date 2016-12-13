#pragma once
#include "BaseIncludes.h"
#include "Camera.h"
//#include "Model.h"
#include "RenderQueue.h"
#include "Light.h"
#include "Inputs.h"
#include "staticNonModels.h"
#include "Debug.h"
#include "TextRenderer.h"
#include "Material.h"
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
		//Temporay debug function
		GEAR_API void setDrawMode(int drawMode);
		
		GEAR_API void addStaticNonModel(staticNonModels* model);

		GEAR_API void addDebugger(Debug* debugger);

		//--TODO: Implement API--
		GEAR_API void bindTransforms(TransformStruct** theTrans, int* n);

		GEAR_API void addModelInstance(ModelAsset* asset);
		GEAR_API void print(const std::string &s, const float &baseX, const float &baseY);

		GEAR_API void queueModels(std::vector<ModelInstance>* models);
		GEAR_API void queueDynamicModels(std::vector<ModelInstance>* models);
		GEAR_API void queueAnimModels(std::vector<AnimatedInstance>* models);
		GEAR_API void queueParticles(std::vector<ParticleSystem>* particles);
		GEAR_API void queueLights(std::vector<Light>* lights);
		GEAR_API void draw(Camera* camera);

		GEAR_API void allocateWorlds(int n);
		GEAR_API int generateWorldMatrix();

		GEAR_API void setFont(FontAsset* font);
		//----------------------

	private:
		GEAR_API void lightPass(Camera* camera);

		const int NUM_LIGHTS = 50;
		const glm::vec3 LIGHT_MIN_BOUNDS = glm::vec3(-0.0f, 10.0f, -0.0f);
		const glm::vec3 LIGHT_MAX_BOUNDS = glm::vec3(255.0f, 30.0f, 255.0f);

		std::vector<staticNonModels*> statModels;
		RenderQueue queue;
		TextRenderer text;

		TransformStruct** allTrans;
		float** transformArray;		//Sekvens: {pos0x, pos0y, pos0z, rot0x, rot0y, rot0z, pos1x...}
		int** transformIndexArray;
		bool** transformActiveArray;
		int* transformCount;
		glm::vec3* transformLookAts;
		//DebugQuad
		GLuint quadVAO = 0;
		GLuint quadVBO;
		ShaderProgram *quadShader;
		ShaderProgram *lightPassShader;

		ShaderProgram gBuffer;
		const int NUM_POINT_LIGHTS = 30;
		std::vector<Lights::PointLight> pointLights;
		std::vector<Lights::DirLight> dirLights;
		//temp debug variable
		int drawMode = 1;

		void drawQuad();
		std::vector<ModelInstance>* staticModels;
		std::vector<ModelInstance>* dynamicModels;
		std::vector<AnimatedInstance>* animatedModels;
		std::vector<ParticleSystem>* particleSystems;

		//Default values, to avoid nullptrs
		std::vector<ModelInstance> defaultModelList = std::vector<ModelInstance>(0);
		std::vector<ParticleSystem> defaultParticleList = std::vector<ParticleSystem>(0);
		std::vector<Debug*> debuggers;

		void updateDebug(Camera* camera);
	};
}