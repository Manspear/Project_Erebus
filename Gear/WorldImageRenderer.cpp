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
	shader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "worldImage");
	shader->use();
	glGenVertexArrays(1, &VAO);
	glBindVertexArray(VAO);
	//glGenBuffers(1, &VBO);

	static const GLfloat g_vertex_buffer_data[] = {
		-0.5f, -0.5f, 0.0f,
		0.5f, -0.5f, 0.0f,
		-0.5f,  0.5f, 0.0f,
		0.5f,  0.5f, 0.0f,
	};

	glGenBuffers(1, &VertexVBO);
	glBindBuffer(GL_ARRAY_BUFFER, VertexVBO);
	glBufferData(GL_ARRAY_BUFFER, sizeof(g_vertex_buffer_data), g_vertex_buffer_data, GL_DYNAMIC_DRAW);

	shader->unUse();
}

void Gear::WorldImageRenderer::showImage(const sWorldImage & quad, Importer::TextureAsset* texture)
{
	quads.push_back(quad);
	textures.push_back(texture);
}

GEAR_API void Gear::WorldImageRenderer::update(Camera * mainCamera)
{
	shader->use();
	glm::mat4 view = mainCamera->getViewMatrix();
	glm::mat4 pers = mainCamera->getProjectionMatrix();

	glm::mat4 VM = pers * view;

	glm::vec3 right = glm::vec3(view[0][0], view[1][0], view[2][0]);
	glm::vec3 up = glm::vec3(view[0][1], view[1][1], view[2][1]);

	shader->setUniform(up, "CameraUp_worldspace");
	shader->setUniform(right, "CameraRight_worldspace");
	shader->setUniform4cfv(&VM[0][0], "VP");
	shader->unUse();
}

void Gear::WorldImageRenderer::showImage(const glm::vec3 &pos, const float &width, const float &height, Importer::TextureAsset* texture)
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
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	glBindVertexArray(VAO);

	glEnableVertexAttribArray(0);
	glBindBuffer(GL_ARRAY_BUFFER, VertexVBO);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, (void*)0);
	

	for (int i = 0; i < bufferQuads.size(); i++)
	{
		bufferTextures[i]->bind(GL_TEXTURE0);

		shader->setUniform(bufferQuads[i].pos, "pos");
		shader->setUniform(bufferQuads[i].width, "width");
		shader->setUniform(bufferQuads[i].height, "height");

		glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
	}
	bufferTextures.clear();
	bufferQuads.clear();

	/*glEnable(GL_DEPTH_TEST);*/
	glDisable(GL_BLEND);

	glBindVertexArray(0);

	shader->unUse();
}