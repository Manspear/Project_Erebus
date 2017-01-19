#pragma once
#include "BaseIncludes.h"
#include "ShaderProgram.h"
#include "Light.h"
#include "Camera.h"
class CascadedShadowMap
{
private:
	const static int NUM_CASCADEDS = 4;
	GLuint* textureIDs;
	GLuint framebufferID;
	GLuint renderBuffer;
	int width, height;
	float expC;
	float splitLambda;
	float nearPlane;
	float farPlane;
	glm::vec2 splitPlanes[NUM_CASCADEDS];

	ShaderProgram shader;
	Lights::DirLight light;
	float devideDist[NUM_CASCADEDS];

	void initFramebuffer(int windowWidth, int windowHeight);
public:
	CascadedShadowMap();
	~CascadedShadowMap();
	void Init(int windowWidth, int windowHeight, Lights::DirLight light, Camera* mainCam);
	void bind(int cascadeIndex);
	void bindTexture(ShaderProgram *shader, const char *name, GLuint textureLoc, GLuint textureid);
	void calcOrthoProjs(Camera* mainCam);
	glm::mat4 viewMatrices[NUM_CASCADEDS+1];
	glm::mat4 projectionMatrices[NUM_CASCADEDS+1];
	glm::vec3 frustumCorners[8];

	glm::vec3 pos;

	glm::vec3 minAABB[NUM_CASCADEDS];
	glm::vec3 maxAABB[NUM_CASCADEDS];

};

