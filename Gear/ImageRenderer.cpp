#include "ImageRenderer.h"

Gear::ImageRenderer::ImageRenderer()
{
	shader = nullptr;
	VAO = 0;
	VBO = 0;
}

Gear::ImageRenderer::~ImageRenderer()
{
	if (shader)
		delete shader;
}

void Gear::ImageRenderer::init(int screenWidth, int screenHeight)
{
	shader = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "image");
	shader->addUniform("projectionMatrix");
	shader->use();
	glGenVertexArrays(1, &VAO);
	glGenBuffers(1, &VBO);
	shader->setUniform(glm::ortho(0.0f, (float)screenWidth, (float)screenHeight, 0.0f), "projectionMatrix");

	glBindVertexArray(VAO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, sizeof(sScreenImage), (GLvoid*)0);
	glVertexAttribPointer(1, 1, GL_FLOAT, GL_FALSE, sizeof(sScreenImage), (GLvoid*)(sizeof(float) * 2));
	glVertexAttribPointer(2, 1, GL_FLOAT, GL_FALSE, sizeof(sScreenImage), (GLvoid*)(sizeof(float) * 3));
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);

	shader->unUse();
}

void Gear::ImageRenderer::showImage(const sScreenImage & quad, Importer::TextureAsset* texture)
{
	quads.push_back(quad);
	textures.push_back(texture);
}

void Gear::ImageRenderer::showImage(const glm::vec2 &pos, const float &width, const float &height, Importer::TextureAsset* texture)
{
	sScreenImage quad;
	quad.pos = pos;
	quad.width = width;
	quad.height = height;

	quads.push_back(quad);
	textures.push_back(texture);
}

void Gear::ImageRenderer::updateBuffer()
{
	for( int i=0; i<quads.size(); i++ )
		bufferQuads.push_back(quads.at(i));
	for( int i=0; i<textures.size(); i++ )
		bufferTextures.push_back(textures[i]);

	quads.clear();
	textures.clear();
}

void Gear::ImageRenderer::draw()
{
	shader->use();

	glBindVertexArray(VAO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);

	glDisable(GL_DEPTH_TEST);
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	glEnableVertexAttribArray(0);
	glEnableVertexAttribArray(1);
	glEnableVertexAttribArray(2);

	for (int i = 0; i < bufferQuads.size(); i++)
	{
		bufferTextures[i]->bind(GL_TEXTURE0);
		glBufferData(GL_ARRAY_BUFFER, sizeof(sScreenImage), &(bufferQuads[i]), GL_STREAM_DRAW);
		glDrawArrays(GL_POINTS, 0, 1);
	}
	bufferTextures.clear();
	bufferQuads.clear();

	glEnable(GL_DEPTH_TEST);
	glDisable(GL_BLEND);

	glBindVertexArray(0);

	shader->unUse();
}