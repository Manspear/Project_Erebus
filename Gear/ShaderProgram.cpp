#include "ShaderProgram.h"
#include "ShaderCreator.h"

ShaderProgram::ShaderProgram():programID(0), shaderIDs(nullptr), textureIDs(nullptr), nrOfShaders(0), nrOfTextures(0), totalAttributes(0), framebufferID(0), nrOfUniforms(0)
{
	
}

ShaderProgram::ShaderProgram(int nrShaders, std::string* paths, GLuint* shaderTypes): ShaderProgram()
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

void ShaderProgram::use()
{
	glUseProgram(programID);
	if (framebufferID != 0)
	{
		glBindFramebuffer(GL_FRAMEBUFFER, framebufferID);
		for (int i = 0; i < nrOfTextures; i++)
		{
			glActiveTexture(GL_TEXTURE0 + i);
			glBindTexture(GL_TEXTURE_2D, textureIDs[i]);
		}
	}
	for (int i = 0; i < totalAttributes; i++)
		glEnableVertexAttribArray(i);
}

void ShaderProgram::unUse()
{
	glUseProgram(0);
	for (int i = 0; i < totalAttributes; i++) 
		glDisableVertexAttribArray(i);	
	glBindFramebuffer(GL_FRAMEBUFFER, 0);	
}

void ShaderProgram::bindTexToLocation(GLuint* textures)
{
	for (int i = 0; i < nrOfUniforms; i++)
	{

	}
}

GLuint ShaderProgram::getProgramID()
{
	return programID;
}

GLuint* ShaderProgram::getTextures()
{
	return textureIDs;
}