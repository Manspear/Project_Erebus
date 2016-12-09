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

void TextRenderer::createQuads(std::string s, float baseX, float baseY)
{
	float quadWidth = 1.f;
	float quadHeight = 1.f;
	float x = baseX;
	float y = baseY;
	for (auto c : s)
	{
		sTextVertex vert;

		glm::vec2 offsets = font->getOffset(c);
		glm::vec4 uvs = font->getUV(c);

		vert.pos = glm::vec2(x, y);
		vert.tex = glm::vec2(uvs.x, uvs.y);
		vertices.push_back(vert);

		vert.pos = glm::vec2(x + quadWidth, y);
		vert.tex = glm::vec2(uvs.z, uvs.y);
		vertices.push_back(vert);

		vert.pos = glm::vec2(x, y + quadHeight);
		vert.tex = glm::vec2(uvs.x, uvs.w);
		vertices.push_back(vert);

		vert.pos = glm::vec2(x + quadWidth, y + quadHeight);
		vert.tex = glm::vec2(uvs.z, uvs.w);
		vertices.push_back(vert);

		x += quadWidth;
		y += quadHeight;
	}
}