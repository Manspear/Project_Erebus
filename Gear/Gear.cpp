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
		//paths[0] = "Shaders/phong.vert";
		//paths[1] = "Shaders/phong.frag";

		types[0] = GL_VERTEX_SHADER;
		types[1] = GL_FRAGMENT_SHADER;
		types[2] = GL_GEOMETRY_SHADER;
		allShaders.push_back(new ShaderProgram(3, paths, types));

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

		model->draw();

		allShaders.at(0)->unUse();

	}

	bool GearEngine::isRunning(){
		return true;//window->isWindowOpen();
	}

	void GearEngine::setTestLight(glm::vec3 camPos)
	{
		GLuint uPos;
		glm::vec3 val;

		uPos = glGetUniformLocation(allShaders.at(0)->getProgramID(), "lightPos");
		//val = glm::vec3(1.0f, 1.0f, 0.5f);
		val = glm::vec3(camPos.x, camPos.y, camPos.z + 2.0f);
		glUniform3fv(uPos, 1, &val[0]);

		uPos = glGetUniformLocation(allShaders.at(0)->getProgramID(), "viewPos");
		val = camPos;
		glUniform3fv(uPos, 1, &val[0]);

		uPos = glGetUniformLocation(allShaders.at(0)->getProgramID(), "lightAmbient");
		val = glm::vec3(0.3f, 0.3f, 0.3f);
		glUniform3fv(uPos, 1, &val[0]);

		uPos = glGetUniformLocation(allShaders.at(0)->getProgramID(), "lightDiffuse");
		val = glm::vec3(0.9f, 0.9f, 0.9f);
		glUniform3fv(uPos, 1, &val[0]);

		uPos = glGetUniformLocation(allShaders.at(0)->getProgramID(), "lightSpecular");
		val = glm::vec3(0.7f, 0.7f, 0.7f);
		glUniform3fv(uPos, 1, &val[0]);
	}
	
}