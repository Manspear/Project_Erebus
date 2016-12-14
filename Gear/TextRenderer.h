#pragma once

#include "FontAsset.h"
#include "ShaderProgram.h"
#include<string>
#include<vector>
#include<iostream>

#define loop(i, n) for(int i = 0; i < n; i++)

struct sTextVertex
{
	glm::vec2 pos;
	glm::vec4 UV;
	int width;
};

class TextRenderer
{
public:
	TextRenderer();
	~TextRenderer();

	void init(int screenWidth = 800, int screenHeight = 600);

	void setFont(Importer::FontAsset* font);

	void print(const std::string &s, const float &baseX, const float &baseY);

	void draw();

private:
	Importer::FontAsset* font;
	std::vector<sTextVertex> vertices;
	std::string testString = "Hello world";

	ShaderProgram* shader;
	GLuint VAO, VBO;
};

