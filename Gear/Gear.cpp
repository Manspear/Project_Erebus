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
		GLuint types[3];

		types[0] = GL_VERTEX_SHADER;
		types[1] = GL_FRAGMENT_SHADER;
		types[2] = GL_GEOMETRY_SHADER;
		allShaders.push_back(new ShaderProgram(3, paths, types));
		allShaders.push_back(new ShaderProgram(2, paths, types));
	}

	GearEngine::~GearEngine()
	{
		for (size_t i = 0; i < allShaders.size(); i++)
			delete allShaders.at(i);

		glfwTerminate();
	}

	void GearEngine::draw(Camera* camera) {
		/* Render here */
		allShaders.at( 0 )->use();

		//Camera tempKamera = Camera(45.f, 1280.f / 720.f, 0.1f, 20.f);

		//setTestLight(camera->getPosition());
		allShaders.at(0)->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
		allShaders.at(0)->addUniform(camera->getViewMatrix(), "viewMatrix");
		allShaders.at(0)->addUniform(camera->getPosition(), "viewPos");
		allShaders.at(0)->addUniform(camera->getPosition(), "lightPos");
		allShaders.at(0)->addUniform(glm::vec3(1.0f, 1.0f, 1.0f), "lightColor");

		//model->draw();
		((Model*)renderElements[0])->shader = allShaders[0];
		((Model*)renderElements[1])->shader = allShaders[0];
		((Particle*)renderElements[0])->shader = allShaders[1];
		renderQueue.process( renderElements );
		allShaders.at(0)->unUse();

	}


	bool GearEngine::isRunning(){
		return true;//window->isWindowOpen();
	}
	
}