#pragma once

#include "FontAsset.h"
#include<string>
#include<vector>

#define loop(i, n) for(int i = 0; i < n; i++)

struct sTextVertex
{
	glm::vec2 pos;
	glm::vec4 UV;
	uint8_t width;
};

class TextRenderer
{
public:
	TextRenderer();
	~TextRenderer();

	void setFont(Importer::FontAsset* font);

	void print(std::string s, float baseX, float baseY, float scale = 1.0f);

	void draw();

private:
	Importer::FontAsset* font;
	std::vector<sTextVertex> vertices;
	std::string testString = "Hello world";


};

