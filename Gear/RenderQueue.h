#pragma once

#include "RenderQueueElement.h"
#include "ShaderProgram.h"
#include "Camera.h"
//#include "Model.h"
#include "ParticleSystem.h"
#include "ModelAsset.h"
#include "TextureAsset.h"
#include "Material.h"
#include <vector>
#include <numeric>
#include <algorithm>
#include "Animation.h"

using namespace Importer;
struct ModelInstance
{
	ModelAsset* asset;
	//Material material;
	std::vector<int> worldIndices;
};

struct AnimatedInstance
{
	ModelAsset* asset;
	//Material material;
	std::vector<int> worldIndices;
	std::vector<Animation*> animations;
};

class RenderQueue
{
public:
	RenderQueue();
	~RenderQueue();

	void init();
	void updateUniforms(Camera* camera);
	void process(std::vector<RenderQueueElement*> &elements);
	void allocateWorlds(int n);
	void update(int n, TransformStruct* theTrans);
	//GEAR_API int modelAdded(Model* model);
	int addModelInstance(ModelAsset* asset);
	int generateWorldMatrix();
	ShaderProgram* getShaderProgram(ShaderType type);
	// TEMP:
	std::vector<Gear::ParticleSystem*> particleSystem;

	void forwardPass(std::vector<ModelInstance>* staticModels, std::vector<ModelInstance>* dynamicModels);
	void particlePass(std::vector<Gear::ParticleSystem*>* particleSystems);
	//void geometryPass(std::vector<ModelInstance>* dynamicModels);
	void geometryPass( std::vector<ModelInstance>* dynamicModels, std::vector<AnimatedInstance>* animatedModels );
	void pickingPass(std::vector<ModelInstance>* dynamicModels);

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