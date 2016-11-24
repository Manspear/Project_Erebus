#include "RenderQueue.h"

RenderQueue::RenderQueue()
{
	for (size_t i = 0; i < ShaderType::NUM_SHADER_TYPES; i++)
	{
		allShaders[i] = nullptr;
	}
}

RenderQueue::~RenderQueue()
{
	for (size_t i = 0; i < ShaderType::NUM_SHADER_TYPES; i++)
		if (allShaders[i] != nullptr)
			delete allShaders[i];
}

void RenderQueue::init()
{
	std::string paths[3];
	paths[0] = "Shaders/forward.vert";
	paths[1] = "Shaders/forward.frag";
	paths[2] = "Shaders/forward.geom";
	GLuint types[3];

	types[0] = GL_VERTEX_SHADER;
	types[1] = GL_FRAGMENT_SHADER;
	types[2] = GL_GEOMETRY_SHADER;
	
	allShaders[ShaderType::FORWARD] = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "forward");
}

void RenderQueue::updateUniforms(Camera* camera)
{
	allShaders[FORWARD]->use();
	allShaders[FORWARD]->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
	allShaders[FORWARD]->addUniform(camera->getViewMatrix(), "viewMatrix");
	allShaders[FORWARD]->addUniform(camera->getPosition(), "viewPos");
	allShaders[FORWARD]->addUniform(camera->getPosition(), "lightPos");
	allShaders[FORWARD]->addUniform(glm::vec3(1.0f, 1.0f, 1.0f), "lightColor");
	allShaders[FORWARD]->unUse();
}

void RenderQueue::configure(RenderQueueId &id, GLuint &shaderProgramId)
{

	if (currentShader != id.shaderProgram)
	{
		allShaders[currentShader]->unUse();
		allShaders[id.shaderProgram]->use();
		shaderProgramId = allShaders[id.shaderProgram]->getProgramID();
		currentShader = id.shaderProgram;
	}

	if (currentTexture != id.texture)
	{
		//use id.texture
		currentTexture = id.texture;
	}
}

void RenderQueue::process(std::vector<RenderQueueElement*> &elements)
{
	size_t size = elements.size();

	std::vector<size_t> indices(size);
	std::iota(indices.begin(), indices.end(), 0);

	std::sort(indices.begin(), indices.end(),
		[&elements](size_t i1, size_t i2) {return elements[i2] < elements[i1]; });

	currentShader = 0;
	GLuint shaderProgramId = allShaders[currentShader]->getProgramID();
	allShaders[currentShader]->use();

	for (int i = 0; i < size; i++)
	{
		RenderQueueElement* el = elements[indices[i]];
		configure(el->id, shaderProgramId);
		el->draw(shaderProgramId);
	}

	allShaders[currentShader]->unUse();

}