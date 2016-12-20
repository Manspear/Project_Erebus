#pragma once

#include "FontAsset.h"
#include "ShaderProgram.h"
#include<string>
#include<vector>
#include<iostream>

#define loop(i, n) for(int i = 0; i < n; i++)
#define TEXTRENDER_MAXLINESIZE 100

struct sTextVertex
{
	glm::vec2 pos;
	glm::vec4 UV;
	int width;
};

struct sTextLine
{
	sTextVertex characters[TEXTRENDER_MAXLINESIZE];
	size_t numberOfCharacters;
	float scale;
	glm::vec4 color;
};

class TextRenderer
{
public:
	TextRenderer();
	~TextRenderer();

	void init(int screenWidth = 800, int screenHeight = 600);

	void setFont(Importer::FontAsset* font);

	void print(const std::string &s, const float &baseX, const float &baseY, const float &scale, const glm::vec4 &color);

	void draw();

private:
	Importer::FontAsset* font;
	std::vector<sTextLine> lines;

	ShaderProgram* shader;
	GLuint VAO, VBO;
};

