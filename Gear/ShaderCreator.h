#pragma once
#include "BaseIncludes.h"


void compileShader(const std::string& content, GLuint shaderID);
GLuint createShader(GLuint shaderType, std::string fileContent, GLuint programID, int &nrOfAttrib);
std::string readShader(const std::string& filePath);
int findAttribute(const std::string& content, GLuint programID);

GLuint addTexture(int width, int height, GLuint internalFormat, GLuint format, GLuint type);
void bindFramebuffer(int n, GLuint* attachments, GLuint* textures, GLuint frameBuffer);


GLuint createShaderProgram()
{
	GLuint programID = glCreateProgram();
	return programID;
}

GLuint createShader(GLuint shaderType, std::string fileContent, GLuint programID, int &nrOfAttrib)
{
	GLuint shaderID = glCreateShader(shaderType);
	compileShader(fileContent, shaderID);
	GLint success = 0;
	glGetShaderiv(shaderID, GL_COMPILE_STATUS, &success);
	if (success == GL_FALSE)
	{
		GLint maxLength = 0;
		glGetShaderiv(shaderID, GL_INFO_LOG_LENGTH, &maxLength);
		std::vector<char> errorLog(maxLength);
		glGetShaderInfoLog(shaderID, maxLength, &maxLength, &errorLog[0]);
		glDeleteShader(shaderID);
		std::printf("%s\n", &(errorLog[0]));
	}

	if (shaderType == GL_VERTEX_SHADER)
		nrOfAttrib = findAttribute(fileContent, programID);
	return shaderID;
}

void compileShader(const std::string& content, GLuint shaderID)
{
	const char* contentsPtr = content.c_str();
	glShaderSource(shaderID, 1, &contentsPtr, nullptr);
	glCompileShader(shaderID);
	GLint success = 0;
	glGetShaderiv(shaderID, GL_COMPILE_STATUS, &success);
	if (success == GL_FALSE)
	{
		GLint maxLength = 0;
		glGetShaderiv(shaderID, GL_INFO_LOG_LENGTH, &maxLength);
		std::vector<char> errorLog(maxLength);
		glGetShaderInfoLog(shaderID, maxLength, &maxLength, &errorLog[0]);
		glDeleteShader(shaderID);
		std::printf("%s\n", &(errorLog[0]));
	}
}

std::string readShader(const std::string& filePath)
{
	std::ifstream shaderFile(filePath);
	if (shaderFile.fail()) {
		std::cout << "Fil fel: " + filePath;
	}
	std::stringstream fileContent;
	std::string line;
	while (std::getline(shaderFile, line)) {
		fileContent << line << "\n";
	}

	shaderFile.close();
	return fileContent.str();
}

int findAttribute(const std::string& content, GLuint programID)
{
	std::istringstream s;
	s.str(content);
	std::string temp, attributeName;
	std::istringstream s2;
	int nrOfAttrib = 0;

	while (getline(s, temp))
	{
		if (temp.substr(0, 3) == "in ")
		{
			s2.str(temp);
			s2 >> temp >> temp >> attributeName;
			glBindAttribLocation(programID, nrOfAttrib++, attributeName.c_str());
		}
	}
	return nrOfAttrib;
}

void detachAndDeleteShader(GLuint programID, GLuint shaderID)
{
	glDetachShader(programID, shaderID);
	glDeleteShader(shaderID);
}

GLuint addTexture(int width, int height, GLuint internalFormat, GLuint format, GLuint type)
{
	GLuint textureID;

	glEnable(GL_TEXTURE_2D);
	glGenTextures(1, &textureID);
	glBindTexture(GL_TEXTURE_2D, textureID);
	glTexImage2D(GL_TEXTURE_2D, 0, internalFormat, width, height, 0, format, type, 0);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glBindTexture(GL_TEXTURE_2D, 0);

	return textureID;
}

void bindFramebuffer(int n, GLuint* attachments, GLuint* textures, GLuint frameBuffer)
{
	GLenum* drawBuffers = new GLuint[n];
	glBindFramebuffer(GL_FRAMEBUFFER, frameBuffer);
	for (int i = 0; i < n; i++)
	{
		glFramebufferTexture(GL_FRAMEBUFFER, attachments[i], textures[i], 0);
		if (attachments[i] != GL_DEPTH_ATTACHMENT)
			drawBuffers[i] = attachments[i];
	}
	glDrawBuffers(n, drawBuffers);
	if (glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE)
		std::cout << "No framebuffer!!!!";
	glBindFramebuffer(GL_FRAMEBUFFER, 0);
	delete drawBuffers;
}

