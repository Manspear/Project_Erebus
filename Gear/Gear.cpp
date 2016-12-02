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

		GLuint internalFormat[] = {GL_RGB16F,GL_RGB16F,GL_RGBA};
		GLuint format[] = { GL_RGB,GL_RGB,GL_RGBA };
		GLuint attachment[] = { GL_COLOR_ATTACHMENT0, GL_COLOR_ATTACHMENT1, GL_COLOR_ATTACHMENT2 };
		GLuint type[] = { GL_FLOAT, GL_FLOAT, GL_UNSIGNED_INT};

		gBuffer.deferredInit(3, WINDOW_WIDTH, WINDOW_HEIGHT, internalFormat, format, attachment, type);
		quadShader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "quad");
		lightPassShader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "lightPass");

		Lights::PointLight light;

		light.pos = glm::vec3(0, 0, 0);

		light.color = glm::vec3(1, 0.6, 0.16);

		light.radius = 30;
		pointLights.push_back(light);

		light.pos = glm::vec3(2, 0, 0);

		light.color = glm::vec3(0.65, 0, 1);

		light.radius = 30;
		pointLights.push_back(light);

		Lights::DirLight dirLight;
		dirLight.direction = glm::vec3(1, 1, 1);
		dirLight.color = glm::vec3(0.25, 0.61, 1);

		dirLights.push_back(dirLight);
	}

	GearEngine::~GearEngine()
	{

		glfwTerminate();
		for (size_t i = 0; i < statModels.size(); i++) {
			delete statModels.at(i);
		}
		delete quadShader;
		delete lightPassShader;

	}

	void GearEngine::draw(Camera* camera)
	{
		/* Render here */
		
		//TEMP--------
		//renderElements[0]->id = RenderQueueId(FORWARD, 0);
		//renderElements[1]->id = RenderQueueId(FORWARD, 0);
		//renderElements[3]->id = RenderQueueId(FORWARD, 0);
		//------------
		
		//glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		renderQueue.updateUniforms(camera);
		//GLfloat positions[] = { 0.5, 0.5, 0.0 };

		gBuffer.use();
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		renderQueue.draw();
		gBuffer.unUse();

		lightPassShader->use();
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		gBuffer.BindTexturesToProgram(lightPassShader, "gPosition", 0);
		gBuffer.BindTexturesToProgram(lightPassShader, "gNormal", 1);
		gBuffer.BindTexturesToProgram(lightPassShader, "gAlbedoSpec", 2);
		lightPassShader->addUniform(camera->getPosition(), "viewPos");
		lightPassShader->addUniform(drawMode, "drawMode");

		for (GLuint i = 0; i < pointLights.size(); i++)
		{
			lightPassShader->addUniform(pointLights[i].pos, ("lights[" + std::to_string(i) + "].pos").c_str());
			lightPassShader->addUniform(pointLights[i].color, ("lights[" + std::to_string(i) + "].color").c_str());

			lightPassShader->addUniform(pointLights[i].radius, ("lights[" + std::to_string(i) + "].radius").c_str());
		}

		for (GLuint i = 0; i < dirLights.size(); i++)
		{
			lightPassShader->addUniform(dirLights[i].direction, ("dirLights[" + std::to_string(i) + "].direction").c_str());
			lightPassShader->addUniform(dirLights[i].color, ("dirLights[" + std::to_string(i) + "].color").c_str());
		}

		drawQuad();

		lightPassShader->unUse();


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

	bool GearEngine::isRunning(){
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
		model->addShaderProgramRef(this->renderQueue.getShaderProgram(model->getShaderType()));
		this->statModels.push_back(model);
	}
}