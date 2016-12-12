#include "TextRenderer.h"

TextRenderer::TextRenderer()
{

}

TextRenderer::~TextRenderer()
{

}

void TextRenderer::setFont(Importer::FontAsset* font)
{
	this->font = font;
}

void TextRenderer::print(std::string s, float x, float y, float scale)
{
	for (auto c : s)
	{
		sTextVertex vert;

		vert.pos = glm::vec2(x, y);
		vert.UV = font->getUV(c);
		vert.width = font->getWidth(c) * scale;

		x += vert.width;

		vertices.push_back(vert);
	}
}

void TextRenderer::draw()
{

}