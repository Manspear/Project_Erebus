#include "Skybox.h"

Gear::Skybox::Skybox()
{

	
}

Gear::Skybox::~Skybox()
{
	delete skyboxShader;
}

void Gear::Skybox::init()
{
	glGenVertexArrays(1, &skyboxVAO);
	glGenBuffers(1, &skyboxVBO);
	glBindVertexArray(skyboxVAO);
	glBindBuffer(GL_ARRAY_BUFFER, skyboxVBO);
	glBufferData(GL_ARRAY_BUFFER, sizeof(skyboxVertices), &skyboxVertices, GL_STATIC_DRAW);
	glEnableVertexAttribArray(0);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(GLfloat), (GLvoid*)0);
	glBindVertexArray(0);

	skyboxShader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "skybox");
	skyboxShader->addUniform("skybox");
	skyboxShader->addUniform("view");
	skyboxShader->addUniform("projection");
}

GLuint Gear::Skybox::loadTexture(GLchar * path, GLboolean alpha)
{
	return NULL;
}

GLuint Gear::Skybox::loadCubemap(std::vector<const GLchar*> faces)
{
	GLuint textureID;
	glGenTextures(1, &textureID);

	//int width, height;

	glBindTexture(GL_TEXTURE_CUBE_MAP, textureID);
	Importer::ImageAsset image;
	for (GLuint i = 0; i < faces.size(); i++)
	{
		image.load(faces[i], NULL);

		if (image.getFormat() == GL_RGBA)
			glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X + i, 0, GL_RGBA, image.getWidth(), image.getHeight(), 0, image.getFormat(), GL_UNSIGNED_BYTE, image.getPixels());
		else
			glCompressedTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X + i, 0, image.getFormat(), image.getWidth(), image.getHeight(), 0, image.getSize(), image.getPixels());

		
		image.unload();
	}
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);
	glBindTexture(GL_TEXTURE_CUBE_MAP, 0);

	this->textureID = textureID;

	return textureID;
}

GEAR_API void Gear::Skybox::addUniform(std::string uniform)
{
	skyboxShader->addUniform(uniform);
}

void Gear::Skybox::draw()
{
	glDepthFunc(GL_LEQUAL);  // Change depth function so depth test passes when values are equal to depth buffer's content
	skyboxShader->use();
	
	// skybox cube
	glBindVertexArray(skyboxVAO);

	glActiveTexture(GL_TEXTURE0 + TEXTURE_LOC);
	skyboxShader->setUniform(TEXTURE_LOC, "skybox");
	glBindTexture(GL_TEXTURE_CUBE_MAP, textureID);

	glDrawArrays(GL_TRIANGLES, 0, 36);
	glBindVertexArray(0);
	glDepthFunc(GL_LESS); // Set depth function back to default
	skyboxShader->unUse();
}

void Gear::Skybox::update(Camera* camera)
{
	skyboxShader->use();

	glm::mat4 view = glm::mat4(glm::mat3(camera->getViewMatrix()));

	skyboxShader->setUniform(view, "view");
	skyboxShader->setUniform(camera->getProjectionMatrix(), "projection");

	skyboxShader->unUse();
}
