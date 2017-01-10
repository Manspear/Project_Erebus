#include "ScreenQuadRenderer.h"

ScreenQuadRenderer::ScreenQuadRenderer()
{
	shader = nullptr;
	VAO = 0;
	VBO = 0;
}

ScreenQuadRenderer::~ScreenQuadRenderer()
{
	if (shader)
		delete shader;
}

void ScreenQuadRenderer::init(int screenWidth, int screenHeight)
{
	shader = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "screenQuad");
	shader->use();
	glGenVertexArrays(1, &VAO);
	glGenBuffers(1, &VBO);
	shader->addUniform(glm::ortho(0.0f, (float)screenWidth, (float)screenHeight, 0.0f), "projectionMatrix");
	shader->unUse();
}

void ScreenQuadRenderer::showImage(const glm::vec2 &pos, const float &width, const float &height, Importer::TextureAsset* texture)
{
	sScreenQuad quad;
	quad.pos = pos;
	quad.width = width;
	quad.height = height;

	quads.push_back(quad);
	textures.push_back(texture);
}

void ScreenQuadRenderer::draw()
{
	shader->use();

	glBindVertexArray(VAO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);

	glDisable(GL_DEPTH_TEST);
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, sizeof(sScreenQuad), (GLvoid*)0);
	glVertexAttribPointer(1, 1, GL_FLOAT, GL_FALSE, sizeof(sScreenQuad), (GLvoid*)(sizeof(float) * 2));
	glVertexAttribPointer(2, 1, GL_FLOAT, GL_FALSE, sizeof(sScreenQuad), (GLvoid*)(sizeof(float) * 3));

	glEnableVertexAttribArray(0);
	glEnableVertexAttribArray(1);
	glEnableVertexAttribArray(2);

	for (int i = 0; i < quads.size(); i++)
	{
		textures[i]->bind(GL_TEXTURE0);
		glBufferData(GL_ARRAY_BUFFER, sizeof(sScreenQuad), &(quads[i]), GL_STATIC_DRAW);
		glDrawArrays(GL_POINTS, 0, 1);
	}

	quads.clear();

	glEnable(GL_DEPTH_TEST);
	glDisable(GL_BLEND);

	glBindVertexArray(0);

	shader->unUse();
}