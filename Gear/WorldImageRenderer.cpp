#include "WorldImageRenderer.h"

Gear::WorldImageRenderer::WorldImageRenderer()
{
	shader = nullptr;
	VAO = 0;
	VBO = 0;
}

Gear::WorldImageRenderer::~WorldImageRenderer()
{
	if (shader)
		delete shader;
}

void Gear::WorldImageRenderer::init(int screenWidth, int screenHeight)
{
	shader = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "worldImage");
	shader->use();
	glGenVertexArrays(1, &VAO);
	glGenBuffers(1, &VBO);

	static const GLfloat g_vertex_buffer_data[] = {
		-0.5f, -0.5f, 0.0f,
		0.5f, -0.5f, 0.0f,
		-0.5f,  0.5f, 0.0f,
		0.5f,  0.5f, 0.0f,
	};

	glGenBuffers(1, &VertexVBO);
	glBindBuffer(GL_ARRAY_BUFFER, VertexVBO);
	glBufferData(GL_ARRAY_BUFFER, sizeof(g_vertex_buffer_data), g_vertex_buffer_data, GL_STATIC_DRAW);

	shader->unUse();
}

void Gear::WorldImageRenderer::showImage(const sWorldImage & quad, Importer::TextureAsset* texture)
{
	quads.push_back(quad);
	textures.push_back(texture);
}

GEAR_API void Gear::WorldImageRenderer::update(Camera * mainCamera)
{

}

void Gear::WorldImageRenderer::showImage(const glm::vec2 &pos, const float &width, const float &height, Importer::TextureAsset* texture)
{
	sWorldImage quad;
	quad.pos = pos;
	quad.width = width;
	quad.height = height;

	quads.push_back(quad);
	textures.push_back(texture);
}

void Gear::WorldImageRenderer::updateBuffer()
{
	for( int i=0; i<quads.size(); i++ )
		bufferQuads.push_back(quads.at(i));
	for( int i=0; i<textures.size(); i++ )
		bufferTextures.push_back(textures[i]);

	quads.clear();
	textures.clear();
}

void Gear::WorldImageRenderer::draw()
{
	shader->use();

	glBindVertexArray(VAO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);

	glDisable(GL_DEPTH_TEST);
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, sizeof(sWorldImage), (GLvoid*)0);
	glVertexAttribPointer(1, 1, GL_FLOAT, GL_FALSE, sizeof(sWorldImage), (GLvoid*)(sizeof(float) * 2));
	glVertexAttribPointer(2, 1, GL_FLOAT, GL_FALSE, sizeof(sWorldImage), (GLvoid*)(sizeof(float) * 3));

	glEnableVertexAttribArray(0);
	glEnableVertexAttribArray(1);
	glEnableVertexAttribArray(2);

	glBindBuffer(GL_ARRAY_BUFFER, VertexVBO);
	glVertexAttribPointer(3, 3, GL_FLOAT, GL_FALSE, 0, (GLvoid*)0);
	glEnableVertexAttribArray(3);

	for (int i = 0; i < bufferQuads.size(); i++)
	{
		bufferTextures[i]->bind(GL_TEXTURE0);
		glBufferData(GL_ARRAY_BUFFER, sizeof(sWorldImage), &(bufferQuads[i]), GL_STATIC_DRAW);
		glDrawArrays(GL_POINTS, 0, 1);
	}
	bufferTextures.clear();
	bufferQuads.clear();

	glEnable(GL_DEPTH_TEST);
	glDisable(GL_BLEND);

	glBindVertexArray(0);

	shader->unUse();
}