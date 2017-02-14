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
	std::string location;
	glm::vec2 values;
};

struct UniformBlendingValues
{
	int location;
	GLfloat value;
};

struct TextureBlendings
{
	int modelIndex;
	int numTextures;
	std::vector<TextureAsset*> textureVector;
	glm::vec2 blendFactor[3];
};

enum
{
	INSTANCE_DYNAMIC = 0,
	INSTANCE_ANIMATED,
	INSTANCE_FORWARD,
	INSTANCE_BLENDING,
	MAX_INSTANCE_TYPES
};

using namespace Importer;
struct ModelInstance
{
	Importer::ModelAsset* asset;
	//std::vector<int> worldIndices;
	std::vector<TransformStruct> transforms;
	int activeTransforms;
	std::vector<glm::mat4> worldMatrices;
	std::vector<Animation*> animations; // only used for animated instances
	GLuint instanceVBO = 0;
	GLuint instanceVAO = 0;

	inline void allocateBuffer()
	{
		if ((instanceVBO | instanceVAO) == 0)
		{
			glGenBuffers(1, &instanceVBO);
			glGenVertexArrays(1, &instanceVAO);
		}
		
		glBindVertexArray(instanceVAO);
		glBindBuffer(GL_ARRAY_BUFFER, instanceVBO);
		//glBufferData(GL_ARRAY_BUFFER, sizeof(glm::mat4) * worldIndices.size(), NULL, GL_STREAM_DRAW);
		glBufferData(GL_ARRAY_BUFFER, sizeof(glm::mat4) * worldMatrices.size(), NULL, GL_STREAM_DRAW);

		glEnableVertexAttribArray(4);
		glEnableVertexAttribArray(5);
		glEnableVertexAttribArray(6);
		glEnableVertexAttribArray(7);

		glVertexAttribPointer(4, 4, GL_FLOAT, GL_FALSE, sizeof(glm::vec4) * 4, 0);
		glVertexAttribPointer(5, 4, GL_FLOAT, GL_FALSE, sizeof(glm::vec4) * 4, (void*)(sizeof(glm::vec4)));
		glVertexAttribPointer(6, 4, GL_FLOAT, GL_FALSE, sizeof(glm::vec4) * 4, (void*)(sizeof(glm::vec4) * 2));
		glVertexAttribPointer(7, 4, GL_FLOAT, GL_FALSE, sizeof(glm::vec4) * 4, (void*)(sizeof(glm::vec4) * 3));

		glVertexAttribDivisor(4, 1);
		glVertexAttribDivisor(5, 1);
		glVertexAttribDivisor(6, 1);
		glVertexAttribDivisor(7, 1);

		glBindBuffer(GL_ARRAY_BUFFER, 0);
		glBindVertexArray(0);
	}
};
/*struct AnimatedInstance
{
	ModelAsset* asset;
	std::vector<int> worldIndices;
	std::vector<Animation*> animations;
};*/

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
	bool particlePass(std::vector<Gear::ParticleSystem*>* ps, std::vector<Gear::ParticleEmitter*>* emitters);
	void geometryPass( std::vector<ModelInstance>* dynamicModels, std::vector<ModelInstance>* animatedModels );
	void geometryPass(std::vector<ModelInstance>* dynamicModels, std::vector<ModelInstance>* animatedModels, Lights::DirLight light);
	void pickingPass(std::vector<ModelInstance>* dynamicModels);
	void textureBlendingPass(std::vector<TextureBlendings>* textureBlends, std::vector<ModelInstance>* blendingModels);

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

	GLuint vpBuffer;
	GLuint instanceTest;

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