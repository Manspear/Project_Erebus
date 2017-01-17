#pragma once
#include "BaseIncludes.h"
#include "ShaderProgram.h"
#include "Light.h"
#include "Camera.h"
class CascadedShadowMap
{
public:
	CascadedShadowMap();
	~CascadedShadowMap();
	void Init(int windowWidth, int windowHeight, Lights::DirLight light, Camera* mainCam);
	void bind(int cascadeIndex);
	void bindTexture(ShaderProgram *shader, const char *name, GLuint textureLoc, GLuint textureid);
	void calcOrthoProjs();
private:
	const static int NUM_CASCADEDS = 3;
	GLuint* textureIDs;
	GLuint framebufferID;
	GLuint renderBuffer;
	int width, height;

	ShaderProgram shader;
	Lights::DirLight light;
	float devideDist[NUM_CASCADEDS];

	void initFramebuffer(int windowWidth, int windowHeight);
};

