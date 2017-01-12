#include "Skybox.h"

Gear::Skybox::Skybox()
{
	glGenVertexArrays(1, &skyboxVAO);
	glGenBuffers(1, &skyboxVBO);
	glBindVertexArray(skyboxVAO);
	glBindBuffer(GL_ARRAY_BUFFER, skyboxVBO);
	glBufferData(GL_ARRAY_BUFFER, sizeof(skyboxVertices), &skyboxVertices, GL_STATIC_DRAW);
	glEnableVertexAttribArray(0);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(GLfloat), (GLvoid*)0);
	glBindVertexArray(0);
}

GLuint Gear::Skybox::loadTexture(GLchar * path, GLboolean alpha)
{
	
}

GLuint Gear::Skybox::loadCubemap(std::vector<const GLchar*> faces)
{
	GLuint textureID;
	glGenTextures(1, &textureID);

	int width, height;

	glBindTexture(GL_TEXTURE_CUBE_MAP, textureID);
	Importer::ImageAsset image;
	for (GLuint i = 0; i < faces.size(); i++)
	{
		image.load(faces[i], NULL);
		glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X + i, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, image.getPixels());
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

GEAR_API void Gear::Skybox::BindTexturesToProgram(ShaderProgram * shader, const char * name, GLuint textureLoc)
{
	GLuint uniform = glGetUniformLocation(shader->getProgramID(), name);
	glActiveTexture(GL_TEXTURE0 + textureLoc);
	glUniform1i(uniform, textureLoc);
	glBindTexture(GL_TEXTURE_2D,textureID);
}
