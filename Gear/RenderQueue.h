#pragma once
#include "ShaderProgram.h"
#include "Camera.h"
#include "ParticleSystem.h"
#include "ModelAsset.h"
#include "TextureAsset.h"
#include <vector>
#include <numeric>
#include <algorithm>
#include "Animation.h"
#include "Light.h"
#include "WorkQueue.h"

struct UniformValues {
	int location;
	GLfloat value;
};

struct textureBlendings
{
	int n;
	std::vector<TextureAsset*> textureVector;
	int modellIndex;
	bool ifBlendingPass;
};

using namespace Importer;
struct ModelInstance
{
	Importer::ModelAsset* asset;
	std::vector<int> worldIndices;
};
struct AnimatedInstance
{
	ModelAsset* asset;
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
	void updateUniforms(Camera* camera, ShaderType shader);
	void allocateWorlds(int n);
	void update(int ntransforms, TransformStruct* theTrans, int nanimations, Animation* animations);
	int generateWorldMatrix();
	ShaderProgram* getShaderProgram(ShaderType type);
	// TEMP:
	std::vector<Gear::ParticleSystem*> particleSystem;

	void forwardPass(std::vector<ModelInstance>* dynamicModels, std::vector<UniformValues>* uniValues);
	bool particlePass(std::vector<Gear::ParticleSystem*>* ps);
	void geometryPass( std::vector<ModelInstance>* dynamicModels, std::vector<AnimatedInstance>* animatedModels );
	void geometryPass(std::vector<ModelInstance>* dynamicModels, std::vector<AnimatedInstance>* animatedModels, Lights::DirLight light);
	void pickingPass(std::vector<ModelInstance>* dynamicModels);
	void textureBlendingPass(std::vector<textureBlendings*> textureBlends);

	void setWorkQueue( WorkQueue* workQueue );

private:
	TransformStruct* allTransforms;
	int indices[105];
	int currentShader = 0;
	int currentTexture = 0;
	int currentCallType = 0;
	ShaderProgram* allShaders[ShaderType::NUM_SHADER_TYPES];
	GLuint* uniformLocations[NUM_SHADER_TYPES];
	GLuint particleBuffer;
	glm::mat4* worldMatrices;
	glm::mat4* tempMatrices;
	glm::mat4* jointMatrices;
	int nrOfWorlds;
	WorkQueue* work;

	double freq;

	struct AsyncTransformData
	{
		TransformStruct* transforms;
		glm::mat4* worldMatrices;
		int first, last;
	};
	AsyncTransformData asyncTransformData[MAX_THREADS];
	static void asyncTransformUpdate( void* args );
};