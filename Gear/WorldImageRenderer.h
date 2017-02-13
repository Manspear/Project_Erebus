#pragma once

#include "TextureAsset.h"
#include "ShaderProgram.h"
#include "Importer.h"
#include <vector>
#include "Camera.h"

struct sWorldImage
{
	sWorldImage()
	{
		glm::vec2 pos(0, 0);
		width = 0;
		height = 0;
	}
	sWorldImage(glm::vec2 pos, float width, float height)
	{
		this->pos = pos;
		this->width = width;
		this->height = height;
	}

	glm::vec2 pos;
	float width;
	float height;
};

namespace Gear
{
	class WorldImageRenderer
	{
	public:
		GEAR_API WorldImageRenderer();
		GEAR_API ~WorldImageRenderer();

		GEAR_API void init(int screenWidth = 800, int screenHeight = 600);

		GEAR_API void showImage(const sWorldImage & quad, Importer::TextureAsset* texture);

		GEAR_API void showImage(const glm::vec2 &pos, const float &width, const float &height, Importer::TextureAsset* texture);

		GEAR_API void updateBuffer();
		GEAR_API void update(Camera* mainCamera);
		GEAR_API void draw();
		
		//GEAR_API bool getPicking(MousePos mousePos);

	private:
		std::vector<sWorldImage> quads;
		std::vector<Importer::TextureAsset*> textures;

		std::vector<sWorldImage> bufferQuads;
		std::vector<Importer::TextureAsset*> bufferTextures;

		ShaderProgram* shader;
		GLuint VAO, VBO, VertexVBO;
	};
}