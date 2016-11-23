#pragma once

#include "RenderQueueElement.h"
#include "ShaderProgram.h"
#include "Camera.h"

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

private:
	int currentShader = 0;
	int currentTexture = 0;
	ShaderProgram* allShaders[ShaderType::NUM_SHADER_TYPES];

private:
	void configure(RenderQueueId &id, GLuint &shaderProgramId);

};