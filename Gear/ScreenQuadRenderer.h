#pragma once

#include "TextureAsset.h"
#include "ShaderProgram.h"
#include "Importer.h"
#include <vector>

struct sScreenQuad
{
	glm::vec2 pos;
	float width;
	float height;
};

class ScreenQuadRenderer
{
public:
	ScreenQuadRenderer();
	~ScreenQuadRenderer();

	void init(int screenWidth = 800, int screenHeight = 600);

	void showImage(const glm::vec2 &pos, const float &width, const float &height, Importer::TextureAsset* texture);

	void draw();

private:
	std::vector<sScreenQuad> quads;
	std::vector<Importer::TextureAsset*> textures;

	ShaderProgram* shader;
	GLuint VAO, VBO;
};