#pragma once

#include "RenderQueueElement.h"
#include "ShaderProgram.h"
#include "Camera.h"
//#include "Model.h"
#include "ParticleSystem.h"
#include "ModelAsset.h"
#include "TextureAsset.h"

#include <vector>
#include <numeric>
#include <algorithm>

using namespace Importer;
struct ModelInstance
{
	ModelAsset* asset;
	TextureAsset* texAsset;
	std::vector<int> worldIndices;
};

class RenderQueue
{
public:
	RenderQueue();
	~RenderQueue();

	void init();
	void updateUniforms(Camera* camera);
	void process(std::vector<RenderQueueElement*> &elements);
	GEAR_API void allocateWorlds(int n);
	GEAR_API void draw(std::vector<ModelInstance>* instances);
	GEAR_API void update(float* pos, int* indices, int n, glm::vec3* lookAts);
	//GEAR_API int modelAdded(Model* model);
	GEAR_API int addModelInstance(ModelAsset* asset);
	GEAR_API int generateWorldMatrix();
	GEAR_API ShaderProgram* getShaderProgram(ShaderType type);
	// TEMP:
	std::vector<Gear::ParticleSystem*> particleSystem;
	/*Gear::Particle* particle;*/

	void forwardPass(std::vector<ModelInstance>* staticModels, std::vector<ModelInstance>* dynamicModels);
	void particlePass(std::vector<Gear::ParticleSystem>* particleSystems);

private:
	int currentShader = 0;
	int currentTexture = 0;
	int currentCallType = 0;
	ShaderProgram* allShaders[ShaderType::NUM_SHADER_TYPES];
	//std::vector<Model*> allModels;
	std::vector<ModelInstance> instances;
	std::vector<ModelInstance> staticInstances;
	glm::mat4* worldMatrices;
	glm::mat4* tempMatrices;
	int nrOfWorlds;
	int totalWorlds;

private:
	void configure(RenderQueueId &id, GLuint &shaderProgramId);

};