#pragma once
#include "BaseIncludes.h"


class ShaderProgram
{
public:
	ShaderProgram();
	ShaderProgram(int nrShaders, std::string* paths, GLuint* shaderTypes);
	~ShaderProgram();

	void framebufferInit(int nrTex, int width, int height, GLuint* internalFormat, GLuint* format, GLuint* type, GLuint* attachments);
	void use();
	void unUse();
	void bindTexToLocation(GLuint* textures);

	GLuint getProgramID();
	GLuint* getTextures();
	void addUniform(glm::mat4 &matrix4x4, std::string position,  int count = 1);
	void addUniform(glm::vec3 &vec3, std::string position,  int count = 1);
private:
	GLuint programID;
	GLuint* shaderIDs;
	GLuint* textureIDs;
	GLuint framebufferID;
	std::vector<int> uniformLocations;
	int nrOfShaders;
	int nrOfTextures;
	int totalAttributes;
	int nrOfUniforms;
	GLuint getUniformLocation(std::string pos);
};