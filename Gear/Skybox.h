#pragma once
#include "BaseIncludes.h"
#include "Assets.h"
#include "TextureAsset.h" 
#include "ShaderProgram.h"
#include "Camera.h"
#include <math.h>
#include "Light.h"
#include "CascadedShadowMap.h"

namespace Gear 
{
	enum DayPhase
	{
		Night = 0,
		Dawn = 1,
		Day = 2,
		Dusk = 3
	};
	class Skybox {
	public:
		GEAR_API Skybox();
		GEAR_API ~Skybox();
		GEAR_API void init();
		GEAR_API GLuint loadTexture(GLchar* path, GLboolean alpha = false);
		GEAR_API GLuint loadCubemap(std::vector<const GLchar*> faces);
		GEAR_API void addUniform(std::string uniform);
		GEAR_API void draw();
		GEAR_API void update(Camera* camera);
		GEAR_API void update(float dt);
		GEAR_API glm::vec3 getFogColor();
		GEAR_API glm::vec3 getAmbient();
		GEAR_API Lights::DirLight& getDirLight();

		GEAR_API void setTime(int hours, bool force);
		GEAR_API void overrideLua(bool luaOverride);
		GEAR_API void setFogColor(glm::vec3 color);
		GEAR_API void setAmbient(glm::vec3 color);
		GEAR_API void setPhase(DayPhase phase);
		GEAR_API void setBlend(float blend);
		GEAR_API void setColor(glm::vec3 color);
		GEAR_API void setDirection(glm::vec3 direction);

		GEAR_API int getHours();
		GEAR_API int getMinutes();

		GEAR_API void readyShadowForDraw(int cascadeIndex, ShaderProgram* geomerty, ShaderProgram* animation);
		GEAR_API void unbindShadow();
		GEAR_API void updateCascadeShadows(Camera* camera);
		GEAR_API void updateLightPass(ShaderProgram* shader);
		GEAR_API bool isShadowsEnabled();
		GEAR_API void setShadowsEnabled(bool enabled);
		GEAR_API int numCascades();
		GEAR_API void blurShadow();

		GEAR_API CascadedShadowMap* getShadow() { return &this->shadowMap; }

	private:

		//Lua target values
		bool luaOverride = true;
		float targetTime = 0.0f;
		glm::vec3 targetFog = glm::vec3(0,0,0);
		float targetBlend = 0.0f;

		//Length of the day in real seconds
		float dayCycleLength = 1440;
		//The current cycle time in seconds
		float currentCycleTime = 0;
		//Number of hours on a day
		float hoursPerDay;
		//The current Day phase (Dusk, Day, Dawn, Night)
		DayPhase currentPhase;
		// Dawn occurs at currentCycleTime = 0.0f, so this offsets the WorldHour time to make  
		// dawn occur at a specified hour. A value of 3 results in a 5am dawn for a 24 hour world clock.  
		float dawnTimeOffset;
		//Calculated hour of day
		int worldTimeHour;
		//Calculated minutes of day
		int minutes;
		//number of minutes per hour
		float timePerHour;

		//Diffrent colors to occur at diffrent times
		glm::vec3 fullLight = glm::vec3(253.0f / 255.0f, 248.0f / 255.0f, 223.0f / 255.0f);
		glm::vec3 fullDark = glm::vec3(32.0f / 255.0f, 28.0f / 255.0f, 46.0f / 255.0f);
		glm::vec3 dawnDuskFog = glm::vec3(133.0f / 255.0f, 124.0f / 255.0f, 102.0f / 255.0f);
		glm::vec3 dayFog = glm::vec3(180.0f / 255.0f, 208.0f / 255.0f, 209.0f / 255.0f);
		glm::vec3 nightFog = glm::vec3(12.0f / 255.0f, 15.0f / 255.0f, 91.0f / 255.0f);
		//Calculated when the diffrent phases occur 1/4 of the day
		float dawnTime;

		float dayTime;

		float duskTime;

		float nightTime;
		//Calculated from dayCycleLength
		float quarterDay;
		float halfquarterDay;
		//Currently not used
		float lightIntensity;
		//How much the skybox should blend
		float skyboxBlendFactor = 0.0f;

		void SetDawn();
		void SetDay();
		void SetDusk();
		void SetNight();
		void UpdateWorldTime();
		void UpdateLight();
		void UpdateFog();
		void UpdateBlendFactor();
		void LoadTextures();

		//The rotation on the skybox
		const float ROTATE_SPEED = 1.0f;
		float rotation = 0.0f;

		glm::vec3 fogColor;

		glm::vec3 ambient = fullDark;

		//The basic sun
		Lights::DirLight sun;
		//The sun updated with rotation and color
		Lights::DirLight currentSun;

		const float CASCADE_TEXTURE_SIZE = 720.f;
		CascadedShadowMap shadowMap;
		bool shadowsEnabled = true;

		GLuint skyboxVAO;
		GLuint skyboxVBO;
		GLuint dayTextureID;
		GLuint nightTextureID;
		ShaderProgram* skyboxShader;

		std::map<std::string, int> uniforms;
		int TEXTURE_LOC_DAY = 0;
		int TEXTURE_LOC_NIGHT = 1;

		const GLfloat skyboxVertices[108] = {
			// Positions          
			-1.0f,  1.0f, -1.0f,
			-1.0f, -1.0f, -1.0f,
			1.0f, -1.0f, -1.0f,
			1.0f, -1.0f, -1.0f,
			1.0f,  1.0f, -1.0f,
			-1.0f,  1.0f, -1.0f,

			-1.0f, -1.0f,  1.0f,
			-1.0f, -1.0f, -1.0f,
			-1.0f,  1.0f, -1.0f,
			-1.0f,  1.0f, -1.0f,
			-1.0f,  1.0f,  1.0f,
			-1.0f, -1.0f,  1.0f,

			1.0f, -1.0f, -1.0f,
			1.0f, -1.0f,  1.0f,
			1.0f,  1.0f,  1.0f,
			1.0f,  1.0f,  1.0f,
			1.0f,  1.0f, -1.0f,
			1.0f, -1.0f, -1.0f,

			-1.0f, -1.0f,  1.0f,
			-1.0f,  1.0f,  1.0f,
			1.0f,  1.0f,  1.0f,
			1.0f,  1.0f,  1.0f,
			1.0f, -1.0f,  1.0f,
			-1.0f, -1.0f,  1.0f,

			-1.0f,  1.0f, -1.0f,
			1.0f,  1.0f, -1.0f,
			1.0f,  1.0f,  1.0f,
			1.0f,  1.0f,  1.0f,
			-1.0f,  1.0f,  1.0f,
			-1.0f,  1.0f, -1.0f,

			-1.0f, -1.0f, -1.0f,
			-1.0f, -1.0f,  1.0f,
			1.0f, -1.0f, -1.0f,
			1.0f, -1.0f, -1.0f,
			-1.0f, -1.0f,  1.0f,
			1.0f, -1.0f,  1.0f
		};
	};
}
