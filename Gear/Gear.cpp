#include "Gear.h"
//Temp
#include <random>
#include <math.h>

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
		text.init(1280, 720);



		staticModels = &defaultModelList;
		dynamicModels = &defaultModelList;
		particleSystems = &defaultParticleList;

		GLuint internalFormat[] = { GL_RGB16F,GL_RGB16F,GL_RGBA };
		GLuint format[] = { GL_RGB,GL_RGB,GL_RGBA };
		GLuint attachment[] = { GL_COLOR_ATTACHMENT0, GL_COLOR_ATTACHMENT1, GL_COLOR_ATTACHMENT2 };
		GLuint type[] = { GL_FLOAT, GL_FLOAT, GL_UNSIGNED_INT };

		gBuffer.deferredInit(3, WINDOW_WIDTH, WINDOW_HEIGHT, internalFormat, format, attachment, type);
		quadShader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "quad");
		lightPassShader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "lightPass");

		/*Lights::PointLight light;

		light.pos = glm::vec3(0, 0, 0);

		light.color = glm::vec3(1, 0.05, 0.5);

		light.radius = 30;
		pointLights.push_back(light);

		light.pos = glm::vec3(2, 0, 0);

		light.color = glm::vec3(1, 0.4, 0);

		light.radius = 30;*/
		/*pointLights.push_back(light);*/

		Lights::DirLight dirLight;
		dirLight.direction = glm::vec3(-0.2f, -1.0f, -0.3f);
		dirLight.color = glm::vec3(0.75, 0.75, 0.94);

		dirLights.push_back(dirLight);

		//TEMP LIGHT INIT:

		std::random_device rd;
		std::mt19937 gen(rd());
		std::uniform_real_distribution<> dis(0, 1);

		const int LIGHT_RADIUS = 30;

		for (int i = 0; i < NUM_LIGHTS; i++) {
			Lights::PointLight light;

			glm::vec3 position = glm::vec3(0.0);
			for (int i = 0; i < 3; i++) {
				float min = LIGHT_MIN_BOUNDS[i];
				float max = LIGHT_MAX_BOUNDS[i];
				position[i] = (GLfloat)dis(gen) * (max - min) + min;
			}

			light.pos = position;
			light.color = glm::vec3(dis(gen), dis(gen), dis(gen));
			light.radius = LIGHT_RADIUS;

			pointLights.push_back(light);
		}
	}

	GearEngine::~GearEngine()
	{

		glfwTerminate();
		for (size_t i = 0; i < statModels.size(); i++) {
			delete statModels.at(i);
		}
		delete quadShader;
		delete lightPassShader;

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

		gBuffer.use();
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		queue.geometryPass(instances, animatedModels);
		gBuffer.unUse();

		lightPass(camera);

		//renderQueue.process( renderElements );
		//for (size_t i = 0; i < statModels.size(); i++)
		//{
		//	ShaderProgram* tempProgram = statModels.at(i)->getShaderProgram();
		//	tempProgram->use();
		//	tempProgram->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
		//	tempProgram->addUniform(camera->getViewMatrix(), "viewMatrix");
		//	tempProgram->addUniform(camera->getPosition(), "viewPos");
		//	tempProgram->addUniform(statModels.at(i)->getWorldMat(), "worldMatrix");
		//	statModels.at(i)->draw();
		//	tempProgram->unUse();
		//}

		
	}

	bool GearEngine::isRunning() {
		return true;//window->isWindowOpen();
	}

	GEAR_API void GearEngine::setDrawMode(int drawMode)
	{
		this->drawMode = drawMode;
	}

	void GearEngine::drawQuad()
	{
		if (quadVAO == 0) {
			GLfloat quadVertices[] = {
				-1.0f, 1.0f, 0.0f, 0.0f, 1.0f,
				-1.0f, -1.0f, 0.0f, 0.0f, 0.0f,
				1.0f, 1.0f, 0.0f, 1.0f, 1.0f,
				1.0f, -1.0f, 0.0f, 1.0f, 0.0f,
			};

			glGenVertexArrays(1, &quadVAO);
			glGenBuffers(1, &quadVBO);
			glBindVertexArray(quadVAO);
			glBindBuffer(GL_ARRAY_BUFFER, quadVBO);
			glBufferData(GL_ARRAY_BUFFER, sizeof(quadVertices), &quadVertices, GL_STATIC_DRAW);
			glEnableVertexAttribArray(0);
			glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(GLfloat), (GLvoid*)0);
			glEnableVertexAttribArray(1);
			glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(GLfloat), (GLvoid*)(3 * sizeof(GLfloat)));
		}

		glBindVertexArray(quadVAO);
		glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
		glBindVertexArray(0);
	}

	void GearEngine::addStaticNonModel(staticNonModels* model) {
		model->addShaderProgramRef(this->queue.getShaderProgram(model->getShaderType()));
		this->statModels.push_back(model);
	}

	void GearEngine::bindTransforms(TransformStruct** theTrans, int* n)
	{
		transformCount = n;
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

	void GearEngine::print(const std::string &s, const float &baseX, const float &baseY)
	{
		text.print(s, baseX, baseY);
	}

	void GearEngine::queueModels(std::vector<ModelInstance>* models)
	{
		staticModels = models;
	}

	void GearEngine::queueDynamicModels(std::vector<ModelInstance>* models)
	{
		dynamicModels = models;
	}

	void GearEngine::queueAnimModels(std::vector<AnimatedInstance>* models)
	{
		animatedModels = models;
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
		
		queue.update(*transformCount, *allTrans);
		queue.updateUniforms(camera);

		//queue.forwardPass(staticModels, dynamicModels);
		//queue.particlePass(particleSystems);
		//Disco party!!!
		for (int i = 0; i < NUM_LIGHTS; i++) {

			float min = LIGHT_MIN_BOUNDS[1];
			float max = LIGHT_MAX_BOUNDS[1];

			pointLights[i].pos.y = fmod((pointLights[i].pos.y + (-0.5f) - min + max), max) + min;
		}


		gBuffer.use();
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		
		queue.geometryPass(dynamicModels, animatedModels);
		
		
		
		//--TEMP---
		/*for (size_t i = 0; i < statModels.size(); i++)
		{
			ShaderProgram* tempProgram = statModels.at(i)->getShaderProgram();
			tempProgram->use();
			tempProgram->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
			tempProgram->addUniform(camera->getViewMatrix(), "viewMatrix");
			tempProgram->addUniform(camera->getPosition(), "viewPos");
			tempProgram->addUniform(statModels.at(i)->getWorldMat(), "worldMatrix");

			statModels.at(i)->draw();
			tempProgram->unUse();
		}*/
		//---------

		gBuffer.unUse();

		lightPass(camera);

		glDisable(GL_DEPTH_TEST);
		updateDebug(camera);
		glEnable(GL_DEPTH_TEST);

		//Clear lists
		staticModels = &defaultModelList;
		dynamicModels = &defaultModelList;
		particleSystems = &defaultParticleList;

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
	GEAR_API void GearEngine::lightPass(Camera * camera)
	{
		lightPassShader->use();
		glClear(GL_COLOR_BUFFER_BIT);
		gBuffer.BindTexturesToProgram(lightPassShader, "gPosition", 0);
		gBuffer.BindTexturesToProgram(lightPassShader, "gNormal", 1);
		gBuffer.BindTexturesToProgram(lightPassShader, "gAlbedoSpec", 2);
		lightPassShader->addUniform(camera->getPosition(), "viewPos");
		lightPassShader->addUniform(drawMode, "drawMode");

		for (GLuint i = 0; i < pointLights.size(); i++)
		{
			lightPassShader->addUniform(pointLights[i].pos, ("pointLights[" + std::to_string(i) + "].pos").c_str());
			lightPassShader->addUniform(pointLights[i].color, ("pointLights[" + std::to_string(i) + "].color").c_str());

			lightPassShader->addUniform(pointLights[i].radius, ("pointLights[" + std::to_string(i) + "].radius").c_str());
		}

		for (GLuint i = 0; i < dirLights.size(); i++)
		{
			lightPassShader->addUniform(dirLights[i].direction, ("dirLights[" + std::to_string(i) + "].direction").c_str());
			lightPassShader->addUniform(dirLights[i].color, ("dirLights[" + std::to_string(i) + "].color").c_str());
		}

		drawQuad();

		lightPassShader->unUse();
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