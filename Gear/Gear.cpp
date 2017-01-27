#include "Gear.h"
//Temp
#include <random>
#include <math.h>
#include <glm/gtx/string_cast.hpp> 

struct ScreenVertex
{
	float x, y, s, t;
};

namespace Gear
{

	void Gear::GearEngine::resetEngine()
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

		glewInit();
		//renderQueue.init();
		queue.init();
		text.init(WINDOW_WIDTH, WINDOW_HEIGHT);
		image.init(WINDOW_WIDTH, WINDOW_HEIGHT);
		//screenQuad.init(WINDOW_WIDTH, WINDOW_HEIGHT);

		staticModels = &defaultModelList;
		dynamicModels = &defaultModelList;

		frameBufferPickInit();
		frameBufferInit();
		shaderInit();
		lightInit();
		skyboxInit();

		debugHandler = new DebugHandler();
		debugHandler->addDebuger(Debugger::getInstance());
	}
	GearEngine::GearEngine()
	{
		glewInit();
		queue.init();
		text.init(WINDOW_WIDTH, WINDOW_HEIGHT);
		image.init(WINDOW_WIDTH, WINDOW_HEIGHT);
		//screenQuad.init(WINDOW_WIDTH, WINDOW_HEIGHT);

		staticModels = &defaultModelList;
		dynamicModels = &defaultModelList;

		frameBufferPickInit();
		frameBufferInit();
		shaderInit();
		lightInit();
		uniformLocationInit();
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
		delete[] lightPassUniformLocations;
	}
#pragma region init functions
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

	void GearEngine::uniformLocationInit()
	{
		lightPassUniformLocations = new GLuint[5];
		lightPassShader->use();
		lightPassUniformLocations[0] = lightPassShader->getUniformLocation("viewPos");
		lightPassUniformLocations[1] = lightPassShader->getUniformLocation("shadowVPM");
		lightPassUniformLocations[2] = lightPassShader->getUniformLocation("drawMode");
		lightPassUniformLocations[3] = lightPassShader->getUniformLocation("invView");
		lightPassUniformLocations[4] = lightPassShader->getUniformLocation("invProj");

		for (int i = 0; i < dirLights.size(); i++)
		{
			GLuint loc = lightPassShader->getUniformLocation(("dirLights[" + std::to_string(i) + "].direction"));
			lightDirectionLocations.push_back(loc);
			loc = lightPassShader->getUniformLocation(("dirLights[" + std::to_string(i) + "].color"));
			lightColorLocations.push_back(loc);
		}
		lightPassShader->unUse();
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
#pragma endregion
#pragma region bluh
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
#pragma region queue functions
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

	void GearEngine::queueLights(std::vector<Lights::PointLight*> * lights)
	{
		glBindBuffer(GL_SHADER_STORAGE_BUFFER, lightBuffer); //bind light buffer
		Lights::PointLight *pointLightsPtr = (Lights::PointLight*)glMapBuffer(GL_SHADER_STORAGE_BUFFER, GL_READ_WRITE); //get pointer of the data in the buffer

		for (size_t i = 0; i < NUM_LIGHTS; i++)
		{
			Lights::PointLight &light = pointLightsPtr[i]; //get light at pos i

			light.pos = { 0,0,0,0 };
			light.color = { 0,0,0,0 };
			light.radius = { 0,0,0,0 };
		}

		for (int i = 0; i < lights->size(); i++) {
			if (i < NUM_LIGHTS)
			{
				Lights::PointLight &light = pointLightsPtr[i]; //get light at pos i

				light.pos = lights->at(i)->pos;
				light.color = lights->at(i)->color;
				light.radius = lights->at(i)->radius;
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
#pragma endregion
	
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
		glBlitFramebuffer( 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, GL_DEPTH_BUFFER_BIT, GL_NEAREST );

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

	glm::vec3 Gear::GearEngine::getPixelColor(MousePos mouse, GLenum colorAttach) {

		glReadBuffer(colorAttach);

		glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
		float data[3];
		glReadPixels(mouse.x, WINDOW_HEIGHT - mouse.y, 1, 1, GL_RGB, GL_FLOAT, data);
		return glm::vec3(data[0], data[1], data[2]);
	}

	void Gear::GearEngine::pickActorFromWorld(std::vector<ModelInstance>* models, std::vector<std::vector<std::pair<int, unsigned int>>> *ModelInstanceAgentIDs, Camera* camera, MousePos mouse, int& actorID, glm::vec3& hitPos, glm::vec3& hitNormal)
		
	{
		actorID = 0;

		if (models->size() > 0) {

#pragma region drawPicking
			queue.update(*transformCount, *allTrans, *animationCount, *allAnims);
			queue.updateUniforms(camera);
			gBufferPicking.use();
			glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
			queue.pickingPass(models, ModelInstanceAgentIDs);

			//queue.geometryPass(dynamicModels, animatedModels); // renders the geometry into the gbuffer

			//queue.pickingPass(dynamicModels);

			glFlush();
			glFinish();
#pragma endregion


			glm::vec3 colorAgentID = getPixelColor(mouse, GL_COLOR_ATTACHMENT1);
			glm::vec3 colorPosition = getPixelColor(mouse, GL_COLOR_ATTACHMENT0);
			glm::vec3 colorNormal = getPixelColor(mouse, GL_COLOR_ATTACHMENT2);

			int pickedID = colorAgentID[0] * 256 +
				colorAgentID[1] * 256 * 256 +
				colorAgentID[2] * 256 * 256 * 256;


			actorID = pickedID;
			hitPos = colorPosition;
			hitNormal = colorNormal;
			//if (pickedID == 0x00000000) {
			//	std::cout << "looking at background!" << std::endl;
			//}
			//else
			//	std::cout << "Looking at something :): " << pickedID << std::endl;
			//gBufferPicking.unUse();
			gBufferPicking.unUse();
			/*


			#pragma region draw

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



			#pragma endregion

			lightPass(camera, &tempCamera); //renders the texture with light calculations
			glBindFramebuffer(GL_READ_FRAMEBUFFER, gBuffer.getFramebufferID());
			glBindFramebuffer(GL_DRAW_FRAMEBUFFER, 0);
			glBlitFramebuffer(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, GL_DEPTH_BUFFER_BIT, GL_NEAREST);

			updateDebug(camera);

			skybox.update(camera);
			skybox.draw();
			queue.particlePass(particleSystems);

			//Clear lists
			staticModels = &defaultModelList;
			dynamicModels = &defaultModelList;

			image.draw();
			text.draw();
			*/

		}

		if (actorID == 0) {

			glm::vec3 ray_ndc, ray_world;
			glm::vec4 ray_clip, ray_eye;
			ray_ndc = glm::vec3((2.f*mouse.x / WINDOW_WIDTH - 1.f),
				1.f - (2.f*mouse.y) / WINDOW_HEIGHT,
				1.f);

			ray_clip = glm::vec4(ray_ndc.x, ray_ndc.y, -1.f, 1.f);
			ray_eye = glm::inverse(camera->getProjectionMatrix()) * ray_clip;
			ray_eye = glm::vec4(ray_eye.x, ray_eye.y, -1.f, 0.f);
			ray_world = glm::vec3(glm::inverse(camera->getViewMatrix())* ray_eye);
			ray_world = glm::normalize(ray_world);


			hitPos = camera->getPosition() + (ray_world * 10.f);


		}

	}

	void GearEngine::allocateWorlds(int n)
	{
		queue.allocateWorlds(n);
	}

	int GearEngine::generateWorldMatrix()
	{
		return queue.generateWorldMatrix();
	}
#pragma endregion

	void GearEngine::lightPass(Camera * camera, Camera* tempCam)
	{
		lightPassShader->use();
		glClear(GL_COLOR_BUFFER_BIT);
		gBuffer.BindTexturesToProgram(lightPassShader, "gAlbedoSpec", 0, 0); //binds textures
		gBuffer.BindTexturesToProgram(lightPassShader, "gNormal", 1, 1);
		gBuffer.BindTexturesToProgram(lightPassShader, "gDepth", 2, 2);
		//shadowMap.BindTexturesToProgram(lightPassShader, "gShadowMap", 3, 0);
		
		//lightPassShader->addUniform(camera->getPosition(), "viewPos");
		//lightPassShader->addUniform(tempCam->getViewPers(), "shadowVPM");
		//lightPassShader->addUniform(drawMode, "drawMode"); //sets the draw mode to show diffrent lights calculations and textures for debugging  
		//lightPassShader->addUniform(glm::inverse(camera->getViewMatrix()), "invView");
		//lightPassShader->addUniform(glm::inverse(camera->getProjectionMatrix()), "invProj");

		lightPassShader->addUniform(camera->getPosition(), lightPassUniformLocations[0]); // viewPos
		lightPassShader->addUniform(tempCam->getViewPers(), lightPassUniformLocations[1]); //shadowVPM
		lightPassShader->addUniform(drawMode, lightPassUniformLocations[2]); //sets the draw mode to show diffrent lights calculations and textures for debugging  
		lightPassShader->addUniform(glm::inverse(camera->getViewMatrix()), lightPassUniformLocations[3]); // invView
		lightPassShader->addUniform(glm::inverse(camera->getProjectionMatrix()), lightPassUniformLocations[4]); // invProj

		//for (GLuint i = 0; i < dirLights.size(); i++) //adds dir light
		//{
		//	lightPassShader->addUniform(dirLights[i].direction, ("dirLights[" + std::to_string(i) + "].direction").c_str());
		//	lightPassShader->addUniform(dirLights[i].color, ("dirLights[" + std::to_string(i) + "].color").c_str());
		//}

		for (GLuint i = 0; i < dirLights.size(); i++)
		{
			lightPassShader->addUniform(dirLights[i].direction, lightDirectionLocations[i]);
			lightPassShader->addUniform(dirLights[i].color, lightColorLocations[i]);
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

	void GearEngine::frameBufferPickInit() {
		GLuint internalFormat[] = { GL_RGB16F,GL_RGB, GL_RGB16F }; //Format for texture in gBuffer
		GLuint format[] = { GL_RGB,GL_RGB, GL_RGB }; //Format for texture in gBuffer
		GLuint attachment[] = { GL_COLOR_ATTACHMENT0, GL_COLOR_ATTACHMENT1, GL_COLOR_ATTACHMENT2 }; //gBuffer attachements
		GLenum type[] = { GL_FLOAT, GL_UNSIGNED_INT, GL_FLOAT }; //data type for texture
		GLfloat filter[] = { GL_NEAREST, GL_NEAREST, GL_NEAREST };

		gBufferPicking.initFramebuffer(3, WINDOW_WIDTH, WINDOW_HEIGHT, filter, internalFormat, format, type, attachment, false);
	}
}

//Lol Max! Du kommer aldrig hitta mig här!!!! n0000000000000b