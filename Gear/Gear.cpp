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

		GLuint internalFormat[] = { GL_RGB16F,GL_RGB16F,GL_RGBA }; //Format for texture in gBuffer
		GLuint format[] = { GL_RGB,GL_RGB,GL_RGBA }; //Format for texture in gBuffer
		GLuint attachment[] = { GL_COLOR_ATTACHMENT0, GL_COLOR_ATTACHMENT1, GL_COLOR_ATTACHMENT2 }; //gBuffer attachements
		GLuint type[] = { GL_FLOAT, GL_FLOAT, GL_UNSIGNED_INT }; //data type for texture

		gBuffer.deferredInit(3, WINDOW_WIDTH, WINDOW_HEIGHT, internalFormat, format, attachment, type);//initize gBuffer with the textures
		quadShader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "quad"); //shader to draw texture to the screen
		lightPassShader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "lightPass"); //Shader for calculating lighting

		//Generate buffers
		glGenBuffers(1, &lightBuffer); //Generate buffer to light data

		//bind light buffer
		glBindBuffer(GL_SHADER_STORAGE_BUFFER, lightBuffer); //bind buffer
		glBufferData(GL_SHADER_STORAGE_BUFFER, NUM_LIGHTS * sizeof(Lights::PointLight), 0, GL_DYNAMIC_DRAW); //allocate size of buffer
		glBindBuffer(GL_SHADER_STORAGE_BUFFER, 0); //unbind buffer

		Lights::DirLight dirLight; //add one dir light
		dirLight.direction = glm::vec3(-0.2f, -1.0f, -0.3f);
		dirLight.color = glm::vec3(0.75, 0.75, 0.94);

		dirLights.push_back(dirLight); //save it to buffer

		//TEMP LIGHT INIT:

		std::random_device rd;
		std::mt19937 gen(rd());
		std::uniform_real_distribution<> dis(0, 1);

		const int LIGHT_RADIUS = 30; //Radius of lights

		if (lightBuffer == 0) {
			return;
		}

		glBindBuffer(GL_SHADER_STORAGE_BUFFER, lightBuffer); //bind light buffer
		Lights::PointLight *pointLightsPtr = (Lights::PointLight*)glMapBuffer(GL_SHADER_STORAGE_BUFFER, GL_READ_WRITE); //get pointer of the data in the buffer

		for (int i = 0; i < NUM_LIGHTS; i++) {
			Lights::PointLight &light = pointLightsPtr[i]; //get light at pos i

			glm::vec3 position = glm::vec3(0.0);
			for (int i = 0; i < 3; i++) { // calculate random pos for light
				float min = LIGHT_MIN_BOUNDS[i];
				float max = LIGHT_MAX_BOUNDS[i];
				position[i] = (GLfloat)dis(gen) * (max - min) + min;
			}

			light.pos = glm::vec4(position,1);
			light.color = glm::vec4(dis(gen), dis(gen), dis(gen),1); //give the light a random color between 0 and 1
			//DISCO
			/*color[i] = glm::vec3(light.color);
			light.radius.z = LIGHT_RADIUS;*/
		}

		glUnmapBuffer(GL_SHADER_STORAGE_BUFFER); //close buffer
		glBindBuffer(GL_SHADER_STORAGE_BUFFER, 0); 

		debugHandler = new DebugHandler();
		debugHandler->addDebuger(Debugger::getInstance());
	}

	GearEngine::~GearEngine()
	{

		glfwTerminate();
		for (size_t i = 0; i < statModels.size(); i++) {
			delete statModels.at(i);
		}
		delete quadShader;
		delete lightPassShader;

		delete debugHandler;

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
		if (quadVAO == 0) { //just draws a quad on the screen
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

	void GearEngine::queueParticles(std::vector<ParticleSystem*>* particles)
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

		//Disco party!!! moves the lights around and is fun
		/*
		glBindBuffer(GL_SHADER_STORAGE_BUFFER, lightBuffer);
		Lights::PointLight *pointLightsPtr = (Lights::PointLight*)glMapBuffer(GL_SHADER_STORAGE_BUFFER, GL_READ_WRITE);
		for (int i = 0; i < NUM_LIGHTS; i++) {
			Lights::PointLight &light = pointLightsPtr[i];
			float min = LIGHT_MIN_BOUNDS[1];
			float max = LIGHT_MAX_BOUNDS[1];

			glm::vec3 pos;

			pos.y = fmod((light.pos.y + (-1.f) - min + max), max) + min;

			min = LIGHT_MIN_BOUNDS[0];
			max = LIGHT_MAX_BOUNDS[0];

			pos.x = fmod((light.pos.x + (-1.f) - min + max), max) + min;

			min = LIGHT_MIN_BOUNDS[2];
			max = LIGHT_MAX_BOUNDS[2];

			pos.z = fmod((light.pos.z + (-1.f) - min + max), max) + min;

			light.pos = glm::vec4(pos,1);
			endPos[i] = pos;

		}
		glUnmapBuffer(GL_SHADER_STORAGE_BUFFER);
		glBindBuffer(GL_SHADER_STORAGE_BUFFER, 0);
		*/

		gBuffer.use();
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		
		queue.geometryPass(dynamicModels, animatedModels); // renders the geometry into the gbuffer
		
		gBuffer.unUse();

		lightPass(camera); //renders the texture with light calculations
		//DISCO debuger lines
		/*for (int i = 0; i < NUM_LIGHTS; i++) {
			if(i < NUM_LIGHTS/2)
				Debugger::getInstance()->drawLine(glm::vec3(0, 50, 255), endPos[i], color[i]);
			else
				Debugger::getInstance()->drawLine(glm::vec3(255, 50, 255), endPos[i], color[i]);
		}*/

		//glDisable(GL_DEPTH_TEST);

		glBindFramebuffer( GL_READ_FRAMEBUFFER, gBuffer.getFramebufferID() );
		glBindFramebuffer( GL_DRAW_FRAMEBUFFER, 0 );
		glBlitFramebuffer( 0, 0, 1280, 720, 0, 0, 1280, 720, GL_DEPTH_BUFFER_BIT, GL_NEAREST );
		
		updateDebug(camera);
		queue.particlePass(particleSystems);
		//glEnable(GL_DEPTH_TEST);

		//Clear lists
		staticModels = &defaultModelList;
		dynamicModels = &defaultModelList;
		text.draw();
	}

	void GearEngine::drawParticle(Camera* camera)
	{
		queue.updateUniforms(camera);

		gBuffer.use();
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

		gBuffer.unUse();

		lightPass(camera); 

		glBindFramebuffer(GL_READ_FRAMEBUFFER, gBuffer.getFramebufferID());
		glBindFramebuffer(GL_DRAW_FRAMEBUFFER, 0);
		glBlitFramebuffer(0, 0, 1280, 720, 0, 0, 1280, 720, GL_DEPTH_BUFFER_BIT, GL_NEAREST);

		updateDebug(camera);
		queue.particlePass(particleSystems);
	}

	void GearEngine::pickingPass() {
		gBuffer.use();
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		queue.pickingPass(dynamicModels);
		
		glFlush();
		glFinish();

		glPixelStorei(GL_UNPACK_ALIGNMENT, 1);

		unsigned char data[3];
		glReadPixels(1024 / 2, 768 / 2, 1, 1, GL_RGB, GL_UNSIGNED_BYTE, data);

		int pickedID = data[0] +
			data[1] * 256 +
			data[2] * 256 * 256;
		std::cout << "Color: R: " << (int)data[0] << " | G: " << (int)data[1] << " | B: " << (int)data[2] << std::endl;
		//if (pickedID == 0x00000000) {
		//	std::cout << "looking at background!" << std::endl;
		//}
		//else
		//	std::cout << "Looking at something :): " << pickedID << std::endl;
		gBuffer.unUse();
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
		gBuffer.BindTexturesToProgram(lightPassShader, "gPosition", 0); //binds textures
		gBuffer.BindTexturesToProgram(lightPassShader, "gNormal", 1);
		gBuffer.BindTexturesToProgram(lightPassShader, "gAlbedoSpec", 2);
		lightPassShader->addUniform(camera->getPosition(), "viewPos");
		lightPassShader->addUniform(drawMode, "drawMode"); //sets the draw mode to show diffrent lights calculations and textures for debugging  

		for (GLuint i = 0; i < dirLights.size(); i++) //adds dir light
		{
			lightPassShader->addUniform(dirLights[i].direction, ("dirLights[" + std::to_string(i) + "].direction").c_str());
			lightPassShader->addUniform(dirLights[i].color, ("dirLights[" + std::to_string(i) + "].color").c_str());
		}

		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 0, lightBuffer); //binds the light buffer to the shader
		drawQuad(); //draws quad

		lightPassShader->unUse();
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 0, 0);
	}
	void GearEngine::updateDebug(Camera* camera) {
		debugHandler->update(camera, &queue);

	}

	void GearEngine::addDebugger(Debug* debugger) {
		debugHandler->addDebuger(debugger);
	}
}