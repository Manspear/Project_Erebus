#pragma once
#include "BaseIncludes.h"
#include "ShaderProgram.h"
#include "Light.h"
#include "Camera.h"
class CascadedShadowMap
{
private:
	const static int NUM_CASCADEDS = 4;
	GLuint textureIDs[NUM_CASCADEDS];
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
	void Init(int windowWidth, int windowHeight, Lights::DirLight light);
	void bind(int cascadeIndex);
	void unBind();
	void bindTexture(ShaderProgram *shader, const char *name, GLuint textureLoc, GLuint textureid);
	void calcOrthoProjs(Camera* mainCam);
	int getNumCascades() { return this->NUM_CASCADEDS; }
	glm::mat4 viewMatrices[NUM_CASCADEDS+1];
	glm::mat4 projectionMatrices[NUM_CASCADEDS+1];
	glm::mat4 cropMatrices[NUM_CASCADEDS];
	glm::mat4 textureMatrices[NUM_CASCADEDS];
	glm::vec3 frustumCorners[8];

	glm::vec3 pos;
	float sinCount;

	glm::vec3 minAABB[NUM_CASCADEDS];
	glm::vec3 maxAABB[NUM_CASCADEDS];

	float farbound[NUM_CASCADEDS];

	glm::mat4 bias = glm::mat4(
		0.5f, 0.0f, 0.0f, 0.0f,
		0.0f, 0.5f, 0.0f, 0.0f,
		0.0f, 0.0f, 0.5f, 0.0f,
		0.5f, 0.5f, 0.5f, 1.0f
	);


};

