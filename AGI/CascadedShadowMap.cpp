#include "CascadedShadowMap.h"



CascadedShadowMap::CascadedShadowMap()
{

	GLuint internalFormat[] = { GL_RGB16F,GL_RGB16F,GL_RGBA }; //Format for texture in gBuffer
	GLuint format[] = { GL_RGB,GL_RGB,GL_RGBA }; //Format for texture in gBuffer
	GLuint attachment[] = { GL_COLOR_ATTACHMENT0, GL_COLOR_ATTACHMENT1, GL_COLOR_ATTACHMENT2 }; //gBuffer attachements
	GLenum type[] = { GL_FLOAT, GL_FLOAT, GL_UNSIGNED_INT }; //data type for texture
	GLfloat filter[] = { GL_NEAREST, GL_NEAREST, GL_NEAREST };

	gBuffer.initFramebuffer(3, WINDOW_WIDTH, WINDOW_HEIGHT, filter, internalFormat, format, type, attachment, false);
	framebuffer.initFramebuffer();

	shadowMap.initFramebuffer(1, WINDOW_WIDTH, WINDOW_HEIGHT, GL_LINEAR, GL_RG32F, GL_RGBA, GL_UNSIGNED_BYTE, GL_COLOR_ATTACHMENT0, true);
}


CascadedShadowMap::~CascadedShadowMap()
{
}

void CascadedShadowMap::Init(int windowWidth, int windowHeight, Lights::DirLight light, Camera * mainCam)
{
}

void CascadedShadowMap::bind()
{
}

void CascadedShadowMap::bindTexture(ShaderProgram * shader, const char * name, GLuint textureLoc, GLuint textureid)
{
}

void CascadedShadowMap::calcOrthoProjs()
{
}
