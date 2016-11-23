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

		renderQueue.init();
		
		std::string partPaths[3];
		partPaths[0] = "Shaders/particle.vert";
		partPaths[1] = "Shaders/particle.frag";
		partPaths[2] = "Shaders/particle.geom";


		allShaders[ShaderType::PARTICLES] = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "particle");
	}

	GearEngine::~GearEngine()
	{
		glfwTerminate();
	}

	void GearEngine::draw(Camera* camera) {
		/* Render here */
		
		//TEMP--------
		renderElements[0]->id = RenderQueueId(FORWARD, 0);
		renderElements[1]->id = RenderQueueId(FORWARD, 0);
		//------------

		renderQueue.updateUniforms(camera);
		
		
		renderQueue.process( renderElements );
		allShaders[PARTICLES]->use();

		allShaders[PARTICLES]->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
		allShaders[PARTICLES]->addUniform(camera->getViewMatrix(), "viewMatrix");
		allShaders[PARTICLES]->addUniform(camera->getPosition(), "viewPos");
		allShaders[PARTICLES]->addUniform(camera->getPosition(), "lightPos");
		allShaders[PARTICLES]->addUniform(glm::vec3(1.0f, 1.0f, 1.0f), "lightColor");

		((Particle*)renderParticles[0])->shader = allShaders[1];

		renderQueue.process(renderParticles);
		allShaders[PARTICLES]->unUse();
	}


	bool GearEngine::isRunning(){
		return true;//window->isWindowOpen();
	}
	
}