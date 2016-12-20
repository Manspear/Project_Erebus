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
	shader->addUniform(glm::ortho(0.0f, (float)screenWidth, (float)screenHeight, 0.0f), "projectionMatrix");
	shader->unUse();
}

void TextRenderer::setFont(Importer::FontAsset* font)
{
	this->font = font;
}

void TextRenderer::print(const std::string &s, const float &baseX, const float &baseY)
{
	float x = baseX;
	float y = baseY;
	for (auto c : s)
	{
		sTextVertex vert;

		vert.pos = glm::vec2(x, y);
		vert.UV = font->getUV(c);
		vert.width = font->getWidth(c);

		x += vert.width;
		//x += font->getInfo()->size;

		vertices.push_back(vert);
	}
}

void TextRenderer::draw()
{
	shader->use();

	glBindVertexArray(VAO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);

	glDisable(GL_DEPTH_TEST);
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	font->getTexture()->bind(GL_TEXTURE0);
	glUniform1f(glGetUniformLocation(shader->getProgramID(), "height"), (int)font->getInfo()->size);

	glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, sizeof(sTextVertex), (GLvoid*)0);
	glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, sizeof(sTextVertex), (GLvoid*)(sizeof(float) * 2));
	glVertexAttribPointer(2, 1, GL_INT, GL_FALSE, sizeof(sTextVertex), (GLvoid*)(sizeof(float) * 6));

	glEnableVertexAttribArray(0);
	glEnableVertexAttribArray(1);
	glEnableVertexAttribArray(2);

	for (auto v : vertices)
	{
		glBufferData(GL_ARRAY_BUFFER, sizeof(sTextVertex), &v, GL_STATIC_DRAW);		
		glDrawArrays(GL_POINTS, 0, 1);
	}

	glEnable(GL_DEPTH_TEST);
	glDisable(GL_BLEND);

	glBindVertexArray(0);

	vertices.clear();

	shader->unUse();
}