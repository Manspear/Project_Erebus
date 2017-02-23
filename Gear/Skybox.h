#pragma once
#include "BaseIncludes.h"
#include "Assets.h"
#include "TextureAsset.h" 
#include "ShaderProgram.h"
#include "Camera.h"
#include <math.h>
#include "Light.h"

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
		GEAR_API GLuint getTextureID() { return textureID; }
		GEAR_API void addUniform(std::string uniform);
		GEAR_API void draw();
		GEAR_API void update(Camera* camera);
		GEAR_API void update(float dt);
		GEAR_API void setFogColor(glm::vec3 color);
		GEAR_API glm::vec3 getFogColor();
		GEAR_API Lights::DirLight& getDirLight();
	private:
		float dayCycleLength = 1440;
		float currentCycleTime = 0;
		float hoursPerDay;

		DayPhase currentPhase;

		float dawnTimeOffset;

		int worldTimeHour;

		int minutes;

		float timePerHour;

		glm::vec3 fullLight = glm::vec3(253.0f / 255.0f, 248.0f / 255.0f, 223.0f / 255.0f);
		glm::vec3 fullDark = glm::vec3(32.0f / 255.0f, 28.0f / 255.0f, 46.0f / 255.0f);
		glm::vec3 dawnDuskFog = glm::vec3(133.0f / 255.0f, 124.0f / 255.0f, 102.0f / 255.0f);
		glm::vec3 dayFog = glm::vec3(180.0f / 255.0f, 208.0f / 255.0f, 209.0f / 255.0f);
		glm::vec3 nightFog = glm::vec3(12.0f / 255.0f, 15.0f / 255.0f, 91.0f / 255.0f);

		float dawnTime;

		float dayTime;

		float duskTime;

		float nightTime;

		float quarterDay;
		float halfquarterDay;

		float lightIntensity;

		float skyboxBlendFactor = 0.0f;

		void SetDawn();
		void SetDay();
		void SetDusk();
		void SetNight();
		void UpdateWorldTime();
		void UpdateLight();
		void UpdateFog();
		void UpdateBlendFactor();

		const float ROTATE_SPEED = 1.0f;
		float rotation = 0.0f;
		glm::vec3 fogColor;
		Lights::DirLight sun;
		Lights::DirLight currentSun;

		GLuint skyboxVAO;
		GLuint skyboxVBO;
		GLuint textureID;
		ShaderProgram* skyboxShader;

		std::map<std::string, int> uniforms;
		int TEXTURE_LOC = 0;

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
