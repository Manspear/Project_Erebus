#include "Gear.h"
//Temp
#include <random>
#include <math.h>

struct ScreenVertex
{
	float x, y, s, t;
};

namespace Gear
{
	GearEngine::GearEngine()
	{
		glewInit();
		queue.init();
		text.init(1280, 720);
		image.init(1280, 720);

		staticModels = &defaultModelList;
		dynamicModels = &defaultModelList;

		frameBufferInit();
		shaderInit();
		lightInit();
		skyboxInit();

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
		delete blurShader;
		delete effectShader;
		delete debugHandler;
		delete gloomCompute;
	}

	void GearEngine::lightInit()
	{
		//Generate buffers
		glGenBuffers(1, &lightBuffer); //Generate buffer to light data

									   //bind light buffer
		glBindBuffer(GL_SHADER_STORAGE_BUFFER, lightBuffer); //bind buffer
		glBufferData(GL_SHADER_STORAGE_BUFFER, NUM_LIGHTS * sizeof(Lights::PointLight), 0, GL_DYNAMIC_DRAW); //allocate size of buffer
		glBindBuffer(GL_SHADER_STORAGE_BUFFER, 0); //unbind buffer

		Lights::DirLight dirLight; //add one dir light
		dirLight.direction = glm::vec3(-0.0f, -0.5f, 0.5f);
		dirLight.color = glm::vec3(0.75, 0.75, 0.94);
		dirLight.projection = glm::ortho(-80.0f, 80.0f, -80.0f, 80.0f, -100.0f, 100.0f);

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

			light.pos = glm::vec4(position, 1);
			light.color = glm::vec4(dis(gen), dis(gen), dis(gen), 1); //give the light a random color between 0 and 1
			light.radius.x = LIGHT_RADIUS;														  //DISCO
																	  /*color[i] = glm::vec3(light.color);
																	  light.radius.z = LIGHT_RADIUS;*/
		}

		glUnmapBuffer(GL_SHADER_STORAGE_BUFFER); //close buffer
		glBindBuffer(GL_SHADER_STORAGE_BUFFER, 0);
	}

	void GearEngine::shaderInit()
	{
		quadShader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "quad"); //shader to draw texture to the screen
		lightPassShader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "lightPass"); //Shader for calculating lighting
		blurShader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "blur"); //Shader for bluring texture
		effectShader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "effects"); //Draw effect texture on screen
		gloomCompute = new ShaderProgram(shaderBaseType::COMPUTESHADER, "gloom");//Gloom computeshader
		
		glGenTextures(1, &gloomTexture);

		glActiveTexture(GL_TEXTURE0);
		glBindTexture(GL_TEXTURE_2D, gloomTexture);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
		glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA32F, WINDOW_WIDTH, WINDOW_HEIGHT, 0, GL_RGBA, GL_FLOAT, NULL);

	}

	void GearEngine::skyboxInit()
	{
		skybox.init();

		std::vector<const GLchar*> faces;
		faces.push_back("skybox/right.dds");
		faces.push_back("skybox/left.dds");
		faces.push_back("skybox/top.dds");
		faces.push_back("skybox/bottom.dds");
		faces.push_back("skybox/front.dds");
		faces.push_back("skybox/back.dds");
		skybox.loadCubemap(faces);
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
		glDepthMask(GL_FALSE);
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
		glDepthMask(GL_TRUE);
	}

	void GearEngine::effectPreProcess()
	{

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

	void GearEngine::bindAnimations(Animation** theAnims, int* n)
	{
		animationCount = n;
		allAnims = theAnims;
	}

	void GearEngine::setFont(FontAsset* font)
	{
		text.setFont(font);
	}

	void GearEngine::setWorkQueue( WorkQueue* workQueue )
	{
		work = workQueue;
		queue.setWorkQueue( workQueue );
	}

	void GearEngine::addModelInstance(ModelAsset* asset)
	{
		queue.addModelInstance(asset);
	}

	void GearEngine::print(const std::string &s, const float &baseX, const float &baseY, const float &scale, const glm::vec4 &color)
	{
		
		text.print(s, baseX, baseY, scale, color);
	}

	void GearEngine::showImage(const sScreenImage & quad, Importer::TextureAsset* texture)
	{
		image.showImage(quad, texture);
	}

	void GearEngine::showImage(const glm::vec2 &pos, const float &width, const float &height, Importer::TextureAsset* texture)
	{
		image.showImage(pos, width, height, texture);
	}

	glm::vec2 GearEngine::getTextDimensions( const char* t )
	{
		return text.getTextDimensions( t );
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

	void GearEngine::queueParticles(std::vector<Gear::ParticleSystem*> &ps)
	{
		particleSystem = &ps;
	}

	void GearEngine::queueLights(std::vector<Lights::PointLight>* lights)
	{
		glBindBuffer(GL_SHADER_STORAGE_BUFFER, lightBuffer); //bind light buffer
		Lights::PointLight *pointLightsPtr = (Lights::PointLight*)glMapBuffer(GL_SHADER_STORAGE_BUFFER, GL_READ_WRITE); //get pointer of the data in the buffer

		for (int i = 0; i < lights->size(); i++) {
			if (i < NUM_LIGHTS)
			{
				Lights::PointLight &light = pointLightsPtr[i]; //get light at pos i

				light.pos = lights->at(i).pos;
				light.color = lights->at(i).color;
				light.radius = lights->at(i).radius;
			}
			else {
				printf("ERROR: Too many lights : " + lights->size());
			}
		}

		glUnmapBuffer(GL_SHADER_STORAGE_BUFFER); //close buffer
		glBindBuffer(GL_SHADER_STORAGE_BUFFER, 0);
	}

	void GearEngine::queueLights(Lights::DirLight * lights)
	{
		this->dirLights.at(0).color = lights->color;
		this->dirLights.at(0).direction = lights->direction;
	}
	
	void GearEngine::draw(Camera* camera)
	{		
		//queue.update(*transformCount, *allTrans);
		Camera tempCamera;

		glm::vec3 offset;
		offset.x = camera->getDirection().x * 20.0f;
		offset.y = 0.0f;
		offset.z = camera->getDirection().z * 20.0f;

		glm::vec3 pos;
		pos.x = (camera->getPosition().x - (dirLights[0].direction.x * 20.0f)) + offset.x;
		pos.y = (camera->getPosition().y - (dirLights[0].direction.y * 20.0f)) + offset.y;
		pos.z = (camera->getPosition().z - (dirLights[0].direction.z * 20.0f)) + offset.z;
			
		glm::vec3 target;

		target.x = camera->getPosition().x + offset.x;
		target.y = 0.0f;
		target.z = camera->getPosition().z + offset.z;

		glm::mat4 view = glm::lookAt(pos, target, glm::vec3(0, 1, 0));

		tempCamera.setView(view);
		tempCamera.setprojection(dirLights[0].projection);

		glEnable(GL_CULL_FACE);
		glCullFace(GL_BACK);

		queue.updateUniforms(&tempCamera, ShaderType::GEOMETRYSHADOW);
		queue.updateUniforms(&tempCamera, ShaderType::ANIMSHADOW);		
		
		//shadowMap.use();
		//glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		//queue.geometryPass(dynamicModels, animatedModels, dirLights[0]); // renders the geometry into the gbuffer
		//shadowMap.unUse();
		//shadowMapBlur(&shadowMapTemp, &shadowMap, 0.9f);

		queue.updateUniforms(camera);

		gBuffer.use();
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		queue.geometryPass(dynamicModels, animatedModels); // renders the geometry into the gbuffer
		gBuffer.unUse();

		glBindFramebuffer(GL_READ_FRAMEBUFFER, gBuffer.getFramebufferID());
		glBindFramebuffer(GL_DRAW_FRAMEBUFFER, 0);
		glBlitFramebuffer(0, 0, 1280, 720, 0, 0, 1280, 720, GL_DEPTH_BUFFER_BIT, GL_NEAREST);

		glDisable(GL_CULL_FACE);

		bool blitOrNot = queue.particlePass(particleSystem);
		if (blitOrNot) 
		{
			glBindFramebuffer(GL_READ_FRAMEBUFFER, 0);
			glBindFramebuffer(GL_DRAW_FRAMEBUFFER, particleFBO.getFramebufferID());
			glBlitFramebuffer(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, GL_COLOR_BUFFER_BIT, GL_LINEAR);
			glBindFramebuffer(GL_FRAMEBUFFER, 0);
		}
		
		lightPass(camera, &tempCamera); //renders the texture with light calculations
		debugHandler->draw( camera, &queue );

		skybox.update(camera, gBuffer.getTextures()[2]);
		skybox.draw();

		if (blitOrNot)
		{
			effectShader->use();
			particleFBO.BindTexturesToProgram(effectShader, "tex", 0, 0);
			drawQuad();
			effectShader->unUse();
		}

		//gloomCompute->use();
		////glUniform1i(glGetUniformLocation(gloomCompute->getProgramID(), "destTex"), 0);
		////glUniform1i(glGetUniformLocation(gloomCompute->getProgramID(), "srcTex"), 1);
		//glBindImageTexture(1, gloomTexture, 0, GL_FALSE, 0, GL_WRITE_ONLY, GL_RGBA32F);
		//glBindImageTexture(0, this->particleFBO.getTextures()[0], 0, GL_FALSE, 0, GL_READ_ONLY, GL_RGBA32F);
		//glDispatchCompute(40, 40, 1);
		// 
		//gloomCompute->unUse();

		//effectShader->use();
		//GLuint uniform = glGetUniformLocation(effectShader->getProgramID(), "tex");
		//glActiveTexture(GL_TEXTURE0 + 0);
		//glUniform1i(uniform, 0);
		//glBindTexture(GL_TEXTURE_2D, gloomTexture);
		//drawQuad();
		//effectShader->unUse();

		//Clear lists
		staticModels = &defaultModelList;
		dynamicModels = &defaultModelList;
		
		image.draw();
		text.draw();
		
		if (blitOrNot) 
		{
			particleFBO.use();
			glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
			particleFBO.unUse();
		}
	}

	void GearEngine::update()
	{
		queue.update(*transformCount, *allTrans, *animationCount, *allAnims);
		debugHandler->update();
		debugHandler->reset();
		text.updateBuffer();
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

	void GearEngine::lightPass(Camera * camera, Camera* tempCam)
	{
		lightPassShader->use();
		glClear(GL_COLOR_BUFFER_BIT);
		gBuffer.BindTexturesToProgram(lightPassShader, "gAlbedoSpec", 0, 0); //binds textures
		gBuffer.BindTexturesToProgram(lightPassShader, "gNormal", 1, 1);
		gBuffer.BindTexturesToProgram(lightPassShader, "gDepth", 2, 2);
		//shadowMap.BindTexturesToProgram(lightPassShader, "gShadowMap", 3, 0);
		
		lightPassShader->addUniform(camera->getPosition(), "viewPos");
		lightPassShader->addUniform(tempCam->getViewPers(), "shadowVPM");
		lightPassShader->addUniform(drawMode, "drawMode"); //sets the draw mode to show diffrent lights calculations and textures for debugging  
		lightPassShader->addUniform(glm::inverse(camera->getViewMatrix()), "invView");
		lightPassShader->addUniform(glm::inverse(camera->getProjectionMatrix()), "invProj");

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

	void GearEngine::BlurFilter(ShaderProgram * dest, ShaderProgram * source, glm::vec3 blurScale)
	{
		dest->use();
		glClear(GL_DEPTH_BUFFER_BIT);

		blurShader->use();

		blurShader->addUniform(blurScale, "blurScale");
		source->BindTexturesToProgram(blurShader, "filterTexture", 0, 0);
		drawQuad();

		blurShader->unUse();
	}

	void GearEngine::shadowMapBlur(ShaderProgram * dest, ShaderProgram * source, float blurAmount)
	{
		glm::vec3 blurScale = glm::vec3(1.0 / (blurAmount * source->getWidth()), 0, 0);
		BlurFilter(dest, source, blurScale);

		blurScale = glm::vec3(0, 1.0 / (blurAmount * source->getHeight()), 0);
		BlurFilter(source, dest, blurScale);
	}

	void GearEngine::frameBufferInit()
	{
		GLuint internalFormat[] = { GL_RGBA,GL_RG16F, GL_R32F }; //Format for texture in gBuffer
		GLuint format[] = { GL_RGBA,GL_RG, GL_RED }; //Format for texture in gBuffer
		GLuint attachment[] = { GL_COLOR_ATTACHMENT0, GL_COLOR_ATTACHMENT1, GL_COLOR_ATTACHMENT2 }; //gBuffer attachements
		GLenum type[] = { GL_UNSIGNED_INT, GL_FLOAT, GL_FLOAT }; //data type for texture
		GLfloat filter[] = { GL_NEAREST, GL_NEAREST, GL_NEAREST};

		gBuffer.initFramebuffer(3, WINDOW_WIDTH, WINDOW_HEIGHT, filter, internalFormat, format, type, attachment, false);

		/*shadowMap.initFramebuffer(1, WINDOW_HEIGHT, WINDOW_HEIGHT, GL_LINEAR, GL_RG32F, GL_RGBA, GL_UNSIGNED_BYTE, GL_COLOR_ATTACHMENT0, true);
		shadowMapTemp.initFramebuffer(1, WINDOW_HEIGHT, WINDOW_HEIGHT, GL_LINEAR, GL_RG32F, GL_RGBA, GL_UNSIGNED_BYTE, GL_COLOR_ATTACHMENT0, true);*/

		particleFBO.initFramebuffer(1, WINDOW_WIDTH, WINDOW_HEIGHT, GL_LINEAR, GL_RGBA32F, GL_RGBA, GL_FLOAT, GL_COLOR_ATTACHMENT0, false);

	}

	void GearEngine::addDebugger(Debug* debugger) {
		debugHandler->addDebuger(debugger);
	}
}