#pragma once
#include "BaseIncludes.h"
#include "Assets.h"
#include "TextureAsset.h" 
#include "ShaderProgram.h"
#include "Camera.h"

namespace Gear 
{
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
		GEAR_API void updateRotation(float dt);
		GEAR_API void updateFog(float dt);
		GEAR_API void setFogColor(glm::vec3 color);
		GEAR_API glm::vec3 getFogColor();
	private:
		const float ROTATE_SPEED = 1.0f;
		float rotation = 0.0f;
		glm::vec3 fogColor;
		glm::vec3 targetFogColor;
		bool fogColorChanged = false;

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
