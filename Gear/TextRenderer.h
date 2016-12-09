#pragma once

#include "FontAsset.h"
#include<string>
#include<vector>

#define loop(i, n) for(int i = 0; i < n; i++)

struct sTextVertex
{
	glm::vec2 pos;
	glm::vec2 tex;
};

class TextRenderer
{
public:
	TextRenderer();
	~TextRenderer();

	void setFont(Importer::FontAsset* font);

	void createQuads(std::string s, float baseX, float baseY);

private:
	Importer::FontAsset* font;
	std::vector<sTextVertex> vertices;
	std::string testString = "Hello world";
};

