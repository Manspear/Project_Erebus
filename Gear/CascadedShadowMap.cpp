#include "CascadedShadowMap.h"



CascadedShadowMap::CascadedShadowMap()
{
}


CascadedShadowMap::~CascadedShadowMap()
{

}

void CascadedShadowMap::Init(int textureWidth, int textureHeight, Lights::DirLight light)
{
	this->width = textureWidth;
	this->height = textureHeight;
	this->light = light;
	this->expC = 120.0f;
	this->splitLambda = 0.5f; 
	this->nearPlane = 0.1f;
	this->farPlane = 2000.f;
	this->initFramebuffer(textureWidth, textureHeight);
}

void CascadedShadowMap::bind(int cascadeIndex)
{
	assert(cascadeIndex < NUM_CASCADEDS);
	glBindFramebuffer(GL_DRAW_FRAMEBUFFER, framebufferID);
	glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, textureIDs[cascadeIndex], 0);
	glViewport(0, 0, height, height);

}

void CascadedShadowMap::unBind() {
	glBindFramebuffer(GL_FRAMEBUFFER, 0);
	glViewport(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT);
}

void CascadedShadowMap::bindTexture(ShaderProgram * shader, const char * name, GLuint textureLoc, GLuint textureid)
{
	GLuint uniform = glGetUniformLocation(shader->getProgramID(), name);
	glActiveTexture(GL_TEXTURE0 + textureLoc);
	glUniform1i(uniform, textureLoc);
	glBindTexture(GL_TEXTURE_2D, textureIDs[textureid]);
}

void CascadedShadowMap::calcOrthoProjs(Camera* mainCam)
{
	if (!splitIsInit)
	{
		this->nearPlane = mainCam->getNearPlaneDistance();
		this->farPlane = mainCam->getFarPlaneDistance();


		for (int i = 0; i < NUM_CASCADEDS; i++)
		{
			float splitNear = i > 0 ? glm::mix(nearPlane + (static_cast<float>(i) / (float)NUM_CASCADEDS) * (farPlane - nearPlane), nearPlane * pow(farPlane / nearPlane, static_cast<float>(i) / (float)NUM_CASCADEDS), splitLambda) : nearPlane;
			float splitFar = i < NUM_CASCADEDS - 1 ? glm::mix(nearPlane + (static_cast<float>(i + 1) / (float)NUM_CASCADEDS) * (farPlane - nearPlane), nearPlane * pow(farPlane / nearPlane, static_cast<float>(i + 1) / (float)NUM_CASCADEDS), splitLambda) : farPlane;

			splitPlanes[i] = glm::vec2(splitNear, splitFar);
			splitDistance[i] = splitFar;
		}
	}

	glm::mat4 lightM;
	float fov = 55;//mainCam->getFov();
	float aspectRatio = (float)WINDOW_WIDTH / (float)WINDOW_HEIGHT;
	glm::mat4 camInv = glm::inverse(mainCam->getViewMatrix());
	float tang = (float)tan(fov*ONE_DEGREE_RADIAN * 0.5);

	for (int CascadeID = 0; CascadeID < NUM_CASCADEDS; CascadeID++)
	{
		float yn = splitPlanes[CascadeID].x * tang;
		float xn = yn * aspectRatio;
		float yf = splitPlanes[CascadeID].y * tang;
		float xf = yf * aspectRatio;

		glm::vec4 frustumCorners[8] = {
			// near face
			glm::vec4(xn, yn, -splitPlanes[CascadeID].x, 1.0),
			glm::vec4(-xn, yn, -splitPlanes[CascadeID].x, 1.0),
			glm::vec4(xn, -yn, -splitPlanes[CascadeID].x, 1.0),
			glm::vec4(-xn, -yn, -splitPlanes[CascadeID].x, 1.0),

			// far face
			glm::vec4(xf, yf, -splitPlanes[CascadeID].y, 1.0),
			glm::vec4(-xf, yf, -splitPlanes[CascadeID].y, 1.0),
			glm::vec4(xf, -yf, -splitPlanes[CascadeID].y, 1.0),
			glm::vec4(-xf, -yf, -splitPlanes[CascadeID].y, 1.0)
		};

		glm::vec4 frustumMin(std::numeric_limits<float>::max());
		glm::vec4 frustumMax(std::numeric_limits<float>::lowest());

		glm::vec3 center;

		for (int j = 0; j < 8; j++) {
			glm::vec3 vW = glm::vec3(camInv * frustumCorners[j]);
			center += vW;
		}
		center = center / 8.0f;

		glm::vec3 lightCenter = center;
		glm::vec3 lightPos = center + light.direction;
		glm::vec3 lightUp = glm::vec3(0, 1.0f, 0);

		lightM = glm::lookAt(lightCenter, lightPos, lightUp);

		for (int j = 0; j < 8; j++) {

			glm::vec3 vW = glm::vec3(camInv * frustumCorners[j]);
			glm::vec4 frustumCorner = lightM * glm::vec4(vW, 1);

			frustumMin.x = std::fmin(frustumMin.x, frustumCorner.x);
			frustumMax.x = std::fmax(frustumMax.x, frustumCorner.x);
			frustumMin.y = std::fmin(frustumMin.y, frustumCorner.y);
			frustumMax.y = std::fmax(frustumMax.y, frustumCorner.y);
			frustumMin.z = std::fmin(frustumMin.z, frustumCorner.z);
			frustumMax.z = std::fmax(frustumMax.z, frustumCorner.z);
		}

		glm::mat4 projection = glm::ortho(frustumMin.x, frustumMax.x, frustumMin.y, frustumMax.y, frustumMin.z - 50, frustumMax.z + 50);

		shadowWVPMatrices[CascadeID] = projection * lightM;
	}
}

glm::mat4 * CascadedShadowMap::getShadowMatrix()
{
	return shadowWVPMatrices;
}

float * CascadedShadowMap::getSplitDistance()
{
	return splitDistance;
}

void CascadedShadowMap::initFramebuffer(int textureWidth, int textureHeight)
{
	glGenFramebuffers(1, &framebufferID);

	glGenTextures(NUM_CASCADEDS, textureIDs);
	for (int i = 0; i < NUM_CASCADEDS; i++)
	{
		
		glBindTexture(GL_TEXTURE_2D, textureIDs[i]);
		glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
		glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
		glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
		glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

		glTexImage2D(GL_TEXTURE_2D, 0, GL_RG32F, textureWidth, textureHeight, 0, GL_RG, GL_UNSIGNED_BYTE, NULL);
	}
	
	glBindFramebuffer(GL_FRAMEBUFFER, framebufferID);
	glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, textureIDs[0], 0);

	glGenRenderbuffers(1, &framebufferID);
	glBindRenderbuffer(GL_RENDERBUFFER, framebufferID);
	glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH_COMPONENT, textureWidth, textureHeight);
	glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, framebufferID);

	//glDrawBuffer(GL_NONE);
	//glReadBuffer(GL_NONE);

	GLenum Status = glCheckFramebufferStatus(GL_FRAMEBUFFER);

	if (Status != GL_FRAMEBUFFER_COMPLETE) {
		printf("FB error, status: 0x%x\n", Status);
	}
}
