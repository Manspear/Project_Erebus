#include "ShaderProgram.h"
#include "ShaderCreator.h"

ShaderProgram::ShaderProgram() :programID(0), shaderIDs(nullptr), textureIDs(nullptr), nrOfShaders(0), nrOfTextures(0), totalAttributes(0), framebufferID(0), nrOfUniforms(0)
{

}

ShaderProgram::ShaderProgram(int nrShaders, std::string* paths, GLuint* shaderTypes) : ShaderProgram()
{

	nrOfShaders = nrShaders;
	shaderIDs = new GLuint[nrOfShaders];
	programID = createShaderProgram();
	std::string* shaderContent = new std::string[nrOfShaders];
	for (int i = 0; i < nrShaders; i++)
	{
		shaderContent[i] = readShader(paths[i]);
		shaderIDs[i] = createShader(shaderTypes[i], shaderContent[i], programID, totalAttributes);
		glAttachShader(programID, shaderIDs[i]);
	}
	glLinkProgram(programID);

	for (int i = 0; i < nrShaders; i++)
	{
		glDetachShader(programID, shaderIDs[i]);
		glDeleteShader(shaderIDs[i]);
	}
	delete[] shaderContent;
}

ShaderProgram::ShaderProgram(shaderBaseType type, std::string shaderName) : ShaderProgram() {

	nrOfShaders = getNumShaders(type);
	std::string* paths = getPaths(type, shaderName);
	GLuint* shaderTypes = getTypes(type);

	shaderIDs = new GLuint[nrOfShaders];
	programID = createShaderProgram();
	std::string* shaderContent = new std::string[nrOfShaders];
	for (int i = 0; i < nrOfShaders; i++)
	{
		shaderContent[i] = readShader(paths[i]);
		shaderIDs[i] = createShader(shaderTypes[i], shaderContent[i], programID, totalAttributes);
		glAttachShader(programID, shaderIDs[i]);
	}
	glLinkProgram(programID);

	for (int i = 0; i < nrOfShaders; i++)
	{
		glDetachShader(programID, shaderIDs[i]);
		glDeleteShader(shaderIDs[i]);
	}
	delete[] shaderContent;
	delete[] paths;
	delete[] shaderTypes;
}

ShaderProgram::~ShaderProgram()
{
	glDeleteProgram(programID);
	if (textureIDs != nullptr)
		delete textureIDs;
	if (shaderIDs != nullptr)
		delete shaderIDs;
}

void ShaderProgram::framebufferInit(int nrTex, int width, int height, GLuint* internalFormat, GLuint* format, GLuint* type, GLuint* attachments)
{
	nrOfTextures = nrTex;
	textureIDs = new GLuint[nrOfTextures];
	glGenFramebuffers(1, &framebufferID);
	glBindFramebuffer(GL_FRAMEBUFFER, framebufferID);
	for (int i = 0; i < nrOfTextures; i++)
	{
		textureIDs[i] = addTexture(width, height, internalFormat[i], format[i], type[i]);
	}
	bindFramebuffer(nrOfTextures, attachments, textureIDs, framebufferID);
}

void ShaderProgram::deferredInit(int nrTex, int width, int height, GLuint * internalFormat, GLuint * format, GLuint * type, GLuint * attachments)
{
	nrOfTextures = nrTex;
	textureIDs = new GLuint[nrOfTextures];
	glGenFramebuffers(1, &framebufferID);
	glBindFramebuffer(GL_FRAMEBUFFER, framebufferID);
	GLuint gPosition, gNormal, gColorSpec;

	// - Position color buffer
	glGenTextures(1, &gPosition);
	glBindTexture(GL_TEXTURE_2D, gPosition);
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB16F, width, height, 0, GL_RGB, GL_FLOAT, NULL);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
	glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, gPosition, 0);

	this->textureIDs[0] = gPosition;

	// - Normal color buffer
	glGenTextures(1, &gNormal);
	glBindTexture(GL_TEXTURE_2D, gNormal);
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB16F, width, height, 0, GL_RGB, GL_FLOAT, NULL);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
	glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT1, GL_TEXTURE_2D, gNormal, 0);

	this->textureIDs[1] = gNormal;

	// - Color + Specular color buffer
	glGenTextures(1, &gColorSpec);
	glBindTexture(GL_TEXTURE_2D, gColorSpec);
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, NULL);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
	glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT2, GL_TEXTURE_2D, gColorSpec, 0);

	this->textureIDs[2] = gColorSpec;

	// - Tell OpenGL which color attachments we'll use (of this framebuffer) for rendering 
	GLuint attachment[3] = { GL_COLOR_ATTACHMENT0, GL_COLOR_ATTACHMENT1, GL_COLOR_ATTACHMENT2 };
	glDrawBuffers(3, attachment);

	GLuint rboDepth;
	glGenRenderbuffers(1, &rboDepth);
	glBindRenderbuffer(GL_RENDERBUFFER, rboDepth);
	glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH_COMPONENT, width, height);
	glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, rboDepth);
	// - Finally check if framebuffer is complete
	if (glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE)
		std::cout << "Framebuffer not complete!" << std::endl;
	glBindFramebuffer(GL_FRAMEBUFFER, 0);
	
}

void ShaderProgram::use()
{
	if (programID != 0)
	{
		glUseProgram(programID);
	}
	if (framebufferID != 0)
	{
		glBindFramebuffer(GL_FRAMEBUFFER, framebufferID);
		/*for (int i = 0; i < nrOfTextures; i++)
		{
			glActiveTexture(GL_TEXTURE0 + i);
			glBindTexture(GL_TEXTURE_2D, textureIDs[i]);
		}*/
	}
	for (int i = 0; i < totalAttributes; i++)
		glEnableVertexAttribArray(i);
}

void ShaderProgram::unUse()
{
	glUseProgram(0);
	for (int i = 0; i < totalAttributes; i++)
		glDisableVertexAttribArray(i);
	if( framebufferID != 0 )
		glBindFramebuffer(GL_FRAMEBUFFER, 0);
}

void ShaderProgram::bindTexToLocation(GLuint* textures)
{
	for (int i = 0; i < nrOfUniforms; i++)
	{

	}
}

void ShaderProgram::BindTexturesToProgram(ShaderProgram *shader, const char *name, GLuint texture)
{
	GLuint uniform = glGetUniformLocation(shader->getProgramID(), name);
	glActiveTexture(GL_TEXTURE0 + texture);
	glUniform1i(uniform, texture);
	glBindTexture(GL_TEXTURE_2D, textureIDs[texture]);
}

GLuint ShaderProgram::getProgramID()
{
	return programID;
}

GLuint* ShaderProgram::getTextures()
{
	return textureIDs;
}

GLuint ShaderProgram::getFramebufferID()
{
	return framebufferID;
}

GLuint ShaderProgram::getUniformLocation(std::string pos)
{
	return glGetUniformLocation(programID, pos.c_str());
}

void ShaderProgram::addUniform(glm::mat4 &matrix4x4, std::string position, int count)
{
	glUniformMatrix4fv(getUniformLocation(position), count, GL_FALSE, glm::value_ptr(matrix4x4));
}

void ShaderProgram::addUniform(glm::vec3 &vec3, std::string position, int count)
{
	glUniform3fv(getUniformLocation(position), count, glm::value_ptr(vec3));
}
void ShaderProgram::addUniform(float &floatValue, std::string position)
{
	glUniform1f(getUniformLocation(position), floatValue);
}
void ShaderProgram::addUniform(int &intValue, std::string position)
{
	glUniform1i(getUniformLocation(position), intValue);
}

std::string* ShaderProgram::getPaths(const shaderBaseType& type, const std::string& path) {
	std::string* returnVal;
	switch (type)
	{
	case shaderBaseType::VERTEX_FRAGMENT:
		returnVal = new std::string[2];
		returnVal[0] = baseFolder + path + vertEnd;
		returnVal[1] = baseFolder + path + fragEnd;
		break;
	case shaderBaseType::VERTEX_GEOMETRY_FRAGMENT:
		returnVal = new std::string[3];
		returnVal[0] = baseFolder + path + vertEnd;
		returnVal[1] = baseFolder + path + fragEnd;
		returnVal[2] = baseFolder + path + geomEnd;
		break;
	case shaderBaseType::COMPUTESHADER:
		returnVal = new std::string[1];
		returnVal[0] = baseFolder + path + compEnd;
		break;
	default:
		break;
	}
	return returnVal;
}

GLuint* ShaderProgram::getTypes(const shaderBaseType& type) {
	GLuint* returnVal;

	/*
	types[0] = GL_VERTEX_SHADER;
	types[1] = GL_FRAGMENT_SHADER;
	types[2] = GL_GEOMETRY_SHADER;
	*/
	switch (type)
	{
	case shaderBaseType::VERTEX_FRAGMENT:
		returnVal = new GLuint[2];
		returnVal[0] = GL_VERTEX_SHADER;
		returnVal[1] = GL_FRAGMENT_SHADER;
		break;
	case shaderBaseType::VERTEX_GEOMETRY_FRAGMENT:
		returnVal = new GLuint[3];
		returnVal[0] = GL_VERTEX_SHADER;
		returnVal[1] = GL_FRAGMENT_SHADER;
		returnVal[2] = GL_GEOMETRY_SHADER;
		break;
	case shaderBaseType::COMPUTESHADER:
		returnVal = new GLuint[1];
		returnVal[0] = GL_COMPUTE_SHADER;
		break;
	default:
		break;
	}

	return returnVal;
}

int ShaderProgram::getNumShaders(const shaderBaseType& type) {
	int returnValue = 0;
	switch (type)
	{
	case shaderBaseType::VERTEX_FRAGMENT:
		returnValue = 2;
		break;
	case shaderBaseType::VERTEX_GEOMETRY_FRAGMENT:
		returnValue = 3;
		break;
	case shaderBaseType::COMPUTESHADER:
		returnValue = 1;
		break;
	default:
		break;
	}

	return returnValue;
}