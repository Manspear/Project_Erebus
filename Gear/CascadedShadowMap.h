#pragma once
#include "BaseIncludes.h"
#include "ShaderProgram.h"
#include "Light.h"
#include "Camera.h"
#include "GearStructs.h"
#include "glm\gtx\string_cast.hpp"
#include <glm\gtc\matrix_transform.hpp>
#include <glm\gtx\transform.hpp>
class CascadedShadowMap
{
private:
	const float ONE_DEGREE_RADIAN = 3.14159265358979323846f / 180;
	const static int NUM_CASCADEDS = 3;

	bool splitIsInit = false;

	int width, height;
	float expC;
	float splitLambda;
	float nearPlane;
	float farPlane;

	glm::vec4 frustumCorners[8];

	glm::mat4 shadowWVPMatrices[NUM_CASCADEDS];
	glm::vec2 splitPlanes[NUM_CASCADEDS];
	float splitDistance[NUM_CASCADEDS];

	GLuint textureIDs[NUM_CASCADEDS];
	GLuint framebufferID;
	GLuint renderBuffer;

	ShaderProgram shader;
	Lights::DirLight light;

	void initFramebuffer(int textureWidth, int textureHeight);

public:
	CascadedShadowMap();
	~CascadedShadowMap();
	void Init(int textureWidth, int textureHeight, Lights::DirLight light);
	void bind(int cascadeIndex);
	void unBind();
	void bindTexture(ShaderProgram *shader, const char *name, GLuint textureLoc, GLuint textureid);
	void calcOrthoProjs(Camera* mainCam);
	int getNumCascades() { return this->NUM_CASCADEDS; }
	glm::mat4* getShadowMatrix();
	float* getSplitDistance();
};

