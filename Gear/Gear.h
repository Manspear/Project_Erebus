#pragma once
#include "BaseIncludes.h"
#include "Camera.h"
#include "RenderQueue.h"
#include "Light.h"
#include "Inputs.h"
#include "Debug.h"
#include "TextRenderer.h"
#include "ImageRenderer.h"
#include "DebugHandler.h"
#include "Skybox.h"
#include "WorkQueue.h"
#include "CascadedShadowMap.h"
#include "WorldImageRenderer.h"

namespace Gear
{
	class GearEngine {
	public:
		GEAR_API GearEngine();
		GEAR_API ~GearEngine();

		//Temporay debug function
		GEAR_API void setDrawMode(int drawMode);

		GEAR_API void addDebugger(Debug* debugger);

		//--TODO: Implement API--
		GEAR_API void bindAnimations(Animation** theAnims, int* n);

		GEAR_API glm::vec2 getTextDimensions( const char* text );
		GEAR_API void print(const std::string	&s, 
							const float			&baseX, 
							const float			&baseY,
							const float			&scale = 1.0f, 
							const glm::vec4		&color = glm::vec4(1.0f, 1.0f, 1.0f, 1.0f));

		GEAR_API void showImage(const sScreenImage & quad, Importer::TextureAsset* texture);
		GEAR_API void showImage(const glm::vec2 &pos, 
								const float &width, 
								const float &height, 
								Importer::TextureAsset* texture);

		GEAR_API void showWorldImage(const sWorldImage & quad, Importer::TextureAsset* texture);
		GEAR_API void showWorldImage(const glm::vec3 &pos,
			const float &width,
			const float &height,
			Importer::TextureAsset* texture);

		GEAR_API void queueModels(std::vector<ModelInstance>* models);
		GEAR_API void queueDynamicModels(std::vector<ModelInstance>* models);
		GEAR_API void queueAnimModels(std::vector<ModelInstance>* models);
		GEAR_API void queueForwardModels(std::vector<ModelInstance>* models);
		GEAR_API void queueParticles(std::vector<Gear::ParticleSystem*> &ps);
		GEAR_API void queueEmitters(std::vector<Gear::ParticleEmitter*> &emitters);
		GEAR_API void queueLights(std::vector<Lights::PointLight>* lights);
		GEAR_API void queueLights(Lights::DirLight* lights);
		GEAR_API void queueAddLights(Lights::PointLight* lights);
		GEAR_API void queueUpdateLights(Lights::PointLight* lights);
		GEAR_API void queueRemoveLights(Lights::PointLight* lights);
		GEAR_API void queueTextureBlendings(std::vector<ModelInstance>* blendingModels);
		GEAR_API void draw(Camera* camera);
		GEAR_API void update(float dt);

		GEAR_API void addLight();
		GEAR_API void updateLight();
		GEAR_API void removeLight();

		GEAR_API void queueAddDynamicLights(Lights::PointLight* lights);
		GEAR_API void queueUpdateDynamicLights(Lights::PointLight* lights);
		GEAR_API void queueRemoveDynamicLights(Lights::PointLight* lights);

		GEAR_API void addDynamicLight();
		GEAR_API void updateDynamicLight();
		GEAR_API void removeDynamicLight();

		GEAR_API void resetLightbuffer();

		GEAR_API void setFont(FontAsset* font);
		GEAR_API void setWorkQueue( WorkQueue* workQueue );
		GEAR_API Skybox* getSkybox();
		std::vector<UniformValues> uniValues;
		std::vector<TextureBlendings> textureBlend;
		//----------------------

	private:
		void updateTransforms( std::vector<ModelInstance>* models );

		const int NUM_LIGHTS = 50; //number of lights should be the same in lightPass.frag
		const int NUM_DYNAMIC_LIGHTS = 10; //number of lights should be the same in lightPass.frag
		const glm::vec3 LIGHT_MIN_BOUNDS = glm::vec3(-0.0f, 10.0f, -0.0f); //the bounds that the lights can get randomly positioned at
		const glm::vec3 LIGHT_MAX_BOUNDS = glm::vec3(255.0f, 25.0f, 255.0f);

		std::vector<Lights::PointLight*> addLightQueue;
		std::vector<Lights::PointLight*> updateLightQueue;
		std::vector<Lights::PointLight*> removeLightQueue;

		CascadedShadowMap shadow;
		bool debugCam = false;
		Lights::PointLight *l = new Lights::PointLight(glm::vec4(5, 5, 5, 0), glm::vec4(1, 0, 0, 0), glm::vec4(20, 2, 0, 0));

		GLuint lightBuffer = 0; //StorageBuffer for point lights
		int drawMode = 1; //Texture draw mode

		//Screen quad data
		GLuint quadVAO = 0;
		GLuint quadVBO;

		//Renderer
		RenderQueue queue;

		std::vector<Lights::DirLight> dirLights;
		std::vector<Lights::PointLight*> dynamicPointlights;

		std::vector<Lights::PointLight*> addDynamicLightQueue;
		std::vector<Lights::PointLight*> updateDynamicLightQueue;
		std::vector<Lights::PointLight*> removeDynamicLightQueue;

		//Framebuffers
		ShaderProgram shadowMap;
		ShaderProgram shadowMapTemp;
		ShaderProgram gBuffer;
		ShaderProgram particleFBO;

		//Shaders
		ShaderProgram *effectShader;
		ShaderProgram *gloomCompute;

		//Effects stuff
		GLuint gloomTexture;

		std::vector<GLuint> lightDirectionLocations;
		std::vector<GLuint> lightColorLocations;
		GLuint *lightPassUniformLocations;
		
		//Models
		std::vector<ModelInstance>* staticModels;
		std::vector<ModelInstance>* dynamicModels;
		std::vector<ModelInstance>* animatedModels;
		std::vector<Gear::ParticleSystem*>* particleSystem;
		std::vector<ParticleEmitter*>* particleEmitters;
		std::vector<ModelInstance>* forwardModels;
		std::vector<ModelInstance>* blendModels;

		//Transform data
		int* animationCount;
		Animation** allAnims;
		WorkQueue* work;

		//Skybox object
		Skybox *skybox;

		//Default values, to avoid nullptrs
		std::vector<ModelInstance> defaultModelList = std::vector<ModelInstance>(0);

		//Debug Draw handler
		DebugHandler* debugHandler;
		TextRenderer text;
		ImageRenderer image;
		WorldImageRenderer worldImage;

		void lightPass(Camera* camera, Camera* tempCam); //Final lighting pass
		void pickingPass();
		void drawQuad(); //Draw Screen quad
		void BlurFilter(ShaderProgram * dest, ShaderProgram * source, glm::vec3 blurScale); //Blur texture post processing
		void shadowMapBlur(ShaderProgram * dest, ShaderProgram * source, float blurAmount); //ShadowMap bluring
		void frameBufferInit(); //Init all framebuffers
		void shaderInit();
		void lightInit();
		void skyboxInit();
	};
}