#include "Gear.h"

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
		//renderQueue.init();
		queue.init();
		text.init();

		staticModels = &defaultModelList;
		dynamicModels = &defaultModelList;
		particleSystems = &defaultParticleList;
	}

	GearEngine::~GearEngine()
	{

		glfwTerminate();
		for (size_t i = 0; i < statModels.size(); i++) {
			delete statModels.at(i);
		}

		for (size_t i = 0; i < debuggers.size(); i++)
		{
			delete debuggers[i];
		}

	}

	void GearEngine::draw(Camera* camera, std::vector<ModelInstance>* instances)
	{
		/* Render here */

		//TEMP--------
		//renderElements[0]->id = RenderQueueId(FORWARD, 0);
		//renderElements[1]->id = RenderQueueId(FORWARD, 0);
		//renderElements[3]->id = RenderQueueId(FORWARD, 0);
		//------------

		//renderQueue.updateUniforms(camera);
		//renderQueue.update(transformArray, transformIndexArray, *transformCount, transformLookAts);
		//renderQueue.draw(instances);
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
		model->addShaderProgramRef(this->queue.getShaderProgram(model->getShaderType()));
		this->statModels.push_back(model);
	}

	void GearEngine::bindTransforms(float** pos, bool** actives, int* n, glm::vec3* lookAts, TransformStruct** theTrans)
	{
		transformArray = pos;
		transformActiveArray = actives;
		transformCount = n;
		transformLookAts = lookAts;
		allTrans = theTrans;
	}

	void GearEngine::setFont(FontAsset* font)
	{
		text.setFont(font);
	}

	void GearEngine::addModelInstance(ModelAsset* asset)
	{
		queue.addModelInstance(asset);
	}

	void GearEngine::queueModels(std::vector<ModelInstance>* models)
	{
		staticModels = models;
	}

	void GearEngine::queueDynamicModels(std::vector<ModelInstance>* models)
	{
		dynamicModels = models;
	}

	void GearEngine::queueAnimModels(std::vector<Dummy>* models)
	{

	}

	void GearEngine::queueParticles(std::vector<ParticleSystem>* particles)
	{
		particleSystems = particles;
	}

	void GearEngine::queueLights(std::vector<Light>* lights)
	{

	}

	void GearEngine::draw(Camera* camera)
	{
		float* pt = transformArray ? (*transformArray) : nullptr;
		//int* pti = transformIndexArray ? (*transformIndexArray) : nullptr;
		queue.update(*transformActiveArray, *transformCount, *allTrans);
		queue.updateUniforms(camera);

		queue.forwardPass(staticModels, dynamicModels);
		queue.particlePass(particleSystems);

		updateDebug(camera);

		//--TEMP---
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
		//---------

		//Clear lists
		staticModels = &defaultModelList;
		dynamicModels = &defaultModelList;
		particleSystems = &defaultParticleList;

		text.print("test", 50.f, 50.f);
		text.draw();
	}

	void GearEngine::allocateWorlds(int n)
	{
		queue.allocateWorlds(n);
	}

	int GearEngine::generateWorldMatrix()
	{
		return queue.generateWorldMatrix();
	}

	void GearEngine::updateDebug(Camera* camera) {
		ShaderProgram* tempProgram;
		
		tempProgram = queue.getShaderProgram(ShaderType::DEBUG);
		for (size_t i = 0; i < debuggers.size(); i++)
		{
			debuggers.at(i)->drawAll(camera->getProjectionMatrix(), camera->getViewMatrix(), tempProgram);
		}
	}

	void GearEngine::addDebugger(Debug* debugger) {
		this->debuggers.push_back(debugger);
	}
}