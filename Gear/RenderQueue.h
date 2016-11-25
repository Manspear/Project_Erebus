#pragma once

#include "RenderQueueElement.h"
#include "ShaderProgram.h"
#include "Camera.h"
#include "Model.h"

#include <vector>
#include <numeric>
#include <algorithm>


class RenderQueue
{
public:
	RenderQueue();
	~RenderQueue();

	void init();
	void updateUniforms(Camera* camera);
	void process(std::vector<RenderQueueElement*> &elements);
	GEAR_API void allocateWorlds(int n);
	GEAR_API void draw();
	GEAR_API void update(float* pos, int* indices, int n, glm::vec3* lookAts);
	GEAR_API int modelAdded(Model* model);
private:
	int currentShader = 0;
	int currentTexture = 0;
	ShaderProgram* allShaders[ShaderType::NUM_SHADER_TYPES];
	std::vector<Model*> allModels;
	glm::mat4* worldMatrices;
	int nrOfWorlds;
	int totalWorlds;
private:
	void configure(RenderQueueId &id, GLuint &shaderProgramId);

};