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

void TextRenderer::createQuads(std::string s, float x, float y)
{
	for (auto c : s)
	{
		sTextVertex vert;

		vert.pos = glm::vec2(x, y);
		vert.UV = font->getUV(c);
		vert.width = font->getWidth(c);

		x += font->getWidth(c);

		vertices.push_back(vert);
	}
}

void TextRenderer::drawAllText()
{

}