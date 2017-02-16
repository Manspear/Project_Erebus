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
		glm::vec3 FOG_COLOR = glm::vec3(0.50f, 0.50f, 0.50f);

		GEAR_API Skybox();
		GEAR_API ~Skybox();
		GEAR_API void init();
		GEAR_API GLuint loadTexture(GLchar* path, GLboolean alpha = false);
		GEAR_API GLuint loadCubemap(std::vector<const GLchar*> faces);
		GEAR_API GLuint getTextureID() { return textureID; }
		GEAR_API void addUniform(std::string uniform);
		GEAR_API void draw();
		GEAR_API void update(Camera* camera);
	private:
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
