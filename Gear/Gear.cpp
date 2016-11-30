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
	}

	GearEngine::~GearEngine()
	{

		glfwTerminate();
		for (size_t i = 0; i < statModels.size(); i++) {
			delete statModels.at(i);
		}

	}

	void GearEngine::draw(Camera* camera)
	{
		/* Render here */
		
		//TEMP--------
		//renderElements[0]->id = RenderQueueId(FORWARD, 0);
		//renderElements[1]->id = RenderQueueId(FORWARD, 0);
		//renderElements[3]->id = RenderQueueId(FORWARD, 0);
		//------------

		renderQueue.updateUniforms(camera);
		renderQueue.draw();
		GLfloat positions[] = { 0.5, 0.5, 0.0 };



		//renderQueue.process( renderElements );
		for (size_t i = 0; i < statModels.size(); i++)
		{
			ShaderProgram* tempProgram = statModels.at(i)->getShaderProgram();
			tempProgram->use();
			tempProgram->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
			tempProgram->addUniform(camera->getViewMatrix(), "viewMatrix");
			tempProgram->addUniform(camera->getPosition(), "viewPos");
			tempProgram->addUniform(statModels.at(i)->getWorldMat(), "worldMatrix");
			statModels.at(i)->draw();
			tempProgram->unUse();
		}

	}

	bool GearEngine::isRunning(){
		return true;//window->isWindowOpen();
	}
	
	void GearEngine::addStaticNonModel(staticNonModels* model) {
		model->addShaderProgramRef(this->renderQueue.getShaderProgram(model->getShaderType()));
		this->statModels.push_back(model);
	}
}