#include "Gear.h"
#include "BaseIncludes.h"

struct ScreenVertex
{
	float x, y, s, t;
};
GLuint testScreen;
namespace Gear
{
	GearEngine::GearEngine()
	{

		glewInit();

		std::string paths[3];
		paths[0] = "Shaders/forward.vert";
		paths[1] = "Shaders/forward.frag";
		paths[2] = "Shaders/forward.geom";
		
		std::string partPaths[3];
		partPaths[0] = "Shaders/particle.vert";
		partPaths[1] = "Shaders/particle.frag";
		partPaths[2] = "Shaders/particle.geom";

		GLuint types[3];

		types[0] = GL_VERTEX_SHADER;
		types[1] = GL_FRAGMENT_SHADER;
		types[2] = GL_GEOMETRY_SHADER;

		for (size_t i = 0; i < ShaderType::NUM_SHADER_TYPES; i++)
		{
			allShaders[i] = nullptr;
		}
		allShaders[ShaderType::FORWARD] = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "forward");
		allShaders[ShaderType::PARTICLES] = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "particle");
	}

	GearEngine::~GearEngine()
	{
		for (size_t i = 0; i < ShaderType::NUM_SHADER_TYPES; i++)
			if (allShaders[i] != nullptr)
				delete allShaders[i];

		glfwTerminate();
	}

	void GearEngine::draw(Camera* camera) {
		/* Render here */
		allShaders[FORWARD]->use();

		//Camera tempKamera = Camera(45.f, 1280.f / 720.f, 0.1f, 20.f);

		//setTestLight(camera->getPosition());
		allShaders[FORWARD]->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
		allShaders[FORWARD]->addUniform(camera->getViewMatrix(), "viewMatrix");
		allShaders[FORWARD]->addUniform(camera->getPosition(), "viewPos");
		allShaders[FORWARD]->addUniform(camera->getPosition(), "lightPos");
		allShaders[FORWARD]->addUniform(glm::vec3(1.0f, 1.0f, 1.0f), "lightColor");

		//model->draw();
		((Model*)renderElements[0])->shader = allShaders[0];
		((Model*)renderElements[1])->shader = allShaders[0];
		
		
		renderQueue.process( renderElements );
		allShaders[FORWARD]->unUse();

		allShaders[PARTICLES]->use();

		allShaders[PARTICLES]->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
		//allShaders.at(1)->addUniform(camera->getViewMatrix(), "viewMatrix");
		//allShaders.at(1)->addUniform(camera->getPosition(), "viewPos");
		//allShaders.at(1)->addUniform(camera->getPosition(), "lightPos");
		//allShaders.at(1)->addUniform(glm::vec3(1.0f, 1.0f, 1.0f), "lightColor");

		((Particle*)renderParticles[0])->shader = allShaders[1];

		renderQueue.process(renderParticles);
		allShaders[PARTICLES]->unUse();
	}


	bool GearEngine::isRunning(){
		return true;//window->isWindowOpen();
	}
	
}