#include "TextRenderer.h"

TextRenderer::TextRenderer()
{
	shader = nullptr;
}

TextRenderer::~TextRenderer()
{
	if(shader)
		delete shader;
}

void TextRenderer::init(int screenWidth, int screenHeight)
{
	shader = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "text");
	shader->use();
	glGenVertexArrays(1, &VAO);
	glGenBuffers(1, &VBO);
	shader->addUniform(glm::ortho(0.0f, (float)screenWidth, 0.0f, (float)screenHeight), "projectionMatrix");
	shader->unUse();
}

void TextRenderer::setFont(Importer::FontAsset* font)
{
	this->font = font;
}

void TextRenderer::print(const std::string &s, const float &baseX, const float &baseY, const float &scale)
{
	float x = baseX;
	float y = baseY;
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
	shader->use();

	glBindVertexArray(VBO);
	font->getTexture()->bind(GL_TEXTURE5);
	glUniform1f(glGetUniformLocation(shader->getProgramID(), "height"), font->getInfo()->size);

	for (auto v : vertices)
	{
		

	}

	vertices.clear();

	shader->unUse();
}