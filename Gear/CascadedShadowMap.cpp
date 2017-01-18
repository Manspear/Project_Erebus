#include "CascadedShadowMap.h"



CascadedShadowMap::CascadedShadowMap()
{
}


CascadedShadowMap::~CascadedShadowMap()
{
	//if (textureIDs != nullptr)
		//delete textureIDs;
}

void CascadedShadowMap::Init(int windowWidth, int windowHeight, Lights::DirLight light, Camera * mainCam)
{
	this->width = windowWidth;
	this->height = windowHeight;
	this->light = light;
	this->expC = 120.0f;
	this->splitLambda = 0.5f; 
	this->nearPlane = 0.1f;
	this->farPlane = 2000.f;

	for (int i = 0; i < NUM_CASCADEDS; i++)
	{
		float splitNear = i > 0 ? glm::mix(nearPlane + (static_cast<float>(i) / (float)NUM_CASCADEDS) * (farPlane - nearPlane), nearPlane * pow(farPlane / nearPlane, static_cast<float>(i) / (float)NUM_CASCADEDS), splitLambda) : nearPlane;
		float splitFar = i < NUM_CASCADEDS - 1 ? glm::mix(nearPlane + (static_cast<float>(i + 1) / (float)NUM_CASCADEDS) * (farPlane - nearPlane), nearPlane * pow(farPlane / nearPlane, static_cast<float>(i + 1) / (float)NUM_CASCADEDS), splitLambda) : farPlane;

		splitPlanes[i] = glm::vec2(splitNear, splitFar);
	}
}

void CascadedShadowMap::bind(int cascadeIndex)
{
	assert(cascadeIndex < NUM_CASCADEDS);
	glBindFramebuffer(GL_DRAW_FRAMEBUFFER, framebufferID);
	glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, textureIDs[cascadeIndex], 0);
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
	glm::vec3 lookat((mainCam->getPosition().x - mainCam->getDirection()).x, (mainCam->getPosition().y - mainCam->getDirection()).y, (mainCam->getPosition().z - mainCam->getDirection()).z);
	glm::mat4 camView = glm::lookAt(mainCam->getPosition(), lookat, glm::vec3(0, 1, 0));
	glm::mat4 view = mainCam->getViewMatrix();
	glm::mat4 camInv = glm::inverse(view);

	for (int i = 0; i < NUM_CASCADEDS; i++)
	{
		float splitNear = i > 0 ? glm::mix(nearPlane + (static_cast<float>(i) / (float)NUM_CASCADEDS) * (farPlane - nearPlane), nearPlane * pow(farPlane / nearPlane, static_cast<float>(i) / (float)NUM_CASCADEDS), splitLambda) : nearPlane;
		float splitFar = i < NUM_CASCADEDS - 1 ? glm::mix(nearPlane + (static_cast<float>(i + 1) / (float)NUM_CASCADEDS) * (farPlane - nearPlane), nearPlane * pow(farPlane / nearPlane, static_cast<float>(i + 1) / (float)NUM_CASCADEDS), splitLambda) : farPlane;

		splitPlanes[i] = glm::vec2(splitNear, splitFar);
	}

	float ar = WINDOW_HEIGHT / WINDOW_HEIGHT;
	float tanHalfHFOV = tanf(glm::radians(45.0f / 2.0f));
	float tanHalfVFOV = tanf(glm::radians((45.0f * ar) / 2.0f));

	for (int i = 0; i < NUM_CASCADEDS; i++)
	{
		float xn = splitPlanes[i].x * tanHalfHFOV;
		float xf = splitPlanes[i].y * tanHalfHFOV;
		float yn = splitPlanes[i].x * tanHalfVFOV;
		float yf = splitPlanes[i].y * tanHalfVFOV;

		glm::vec4 frustumCorners[8] = {
			// near face
			glm::vec4(xn, yn, splitPlanes[i].x, 1.0),
			glm::vec4(-xn, yn, splitPlanes[i].x, 1.0),
			glm::vec4(xn, -yn, splitPlanes[i].x, 1.0),
			glm::vec4(-xn, -yn, splitPlanes[i].x, 1.0),

			// far face
			glm::vec4(xf, yf, splitPlanes[i].y, 1.0),
			glm::vec4(-xf, yf, splitPlanes[i].y, 1.0),
			glm::vec4(xf, -yf, splitPlanes[i].y, 1.0),
			glm::vec4(-xf, -yf, splitPlanes[i].y, 1.0)
		};

		glm::vec4 frustumCornersL[8];
		glm::vec4 frustumCornersW[8];

		float minX = std::numeric_limits<float>::max();
		float maxX = std::numeric_limits<float>::min();
		float minY = std::numeric_limits<float>::max();
		float maxY = std::numeric_limits<float>::min();
		float minZ = std::numeric_limits<float>::max();
		float maxZ = std::numeric_limits<float>::min();

		glm::vec4 center;

		for (int j = 0; j < 8; j++) {
			glm::vec4 vW = camInv * frustumCorners[j];

			center += vW;

			minX = std::fmin(minX, vW.x);
			maxX = std::fmax(maxX, vW.x);
			minY = std::fmin(minY, vW.y);
			maxY = std::fmax(maxY, vW.y);
			minZ = std::fmin(minZ, vW.z);
			maxZ = std::fmax(maxZ, vW.z);
		}

		minAABB[i] = glm::vec3(minX, minY, minZ);
		maxAABB[i] = glm::vec3(maxX, maxY, maxZ);

		center /= 8;
		viewMatrices[i] = glm::lookAt(glm::vec3(center) - light.direction * (splitPlanes[i].y - splitPlanes[i].x), glm::vec3(center), glm::vec3(0.f, 1.f, 0.f));
		//viewMatrices[i] = glm::lookAt(glm::vec3(0), light.direction, glm::vec3(0,1,0));

		minX = std::numeric_limits<float>::max();
		maxX = std::numeric_limits<float>::min();
		minY = std::numeric_limits<float>::max();
		maxY = std::numeric_limits<float>::min();
		minZ = std::numeric_limits<float>::max();
		maxZ = std::numeric_limits<float>::min();

		for (int j = 0; j < 8; j++)
		{
			glm::vec4 vW = camInv * frustumCorners[j];
			frustumCornersL[j] = viewMatrices[i] * vW;

			minX = std::fmin(minX, frustumCornersL[j].x);
			maxX = std::fmax(maxX, frustumCornersL[j].x);
			minY = std::fmin(minY, frustumCornersL[j].y);
			maxY = std::fmax(maxY, frustumCornersL[j].y);
			minZ = std::fmin(minZ, frustumCornersL[j].z);
			maxZ = std::fmax(maxZ, frustumCornersL[j].z);
		}

		projectionMatrices[i] = glm::ortho(minX, maxX, minY, maxY, minZ, maxZ);

	}
}

void CascadedShadowMap::initFramebuffer(int windowWidth, int windowHeight)
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

		glTexImage2D(GL_TEXTURE_2D, 0, GL_RG32F, windowHeight, windowHeight, 0, GL_RGBA, GL_UNSIGNED_BYTE, NULL);
	}
	
	glBindFramebuffer(GL_FRAMEBUFFER, framebufferID);
	glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, textureIDs[0], 0);

	glDrawBuffer(GL_NONE);
	glReadBuffer(GL_NONE);

	GLenum Status = glCheckFramebufferStatus(GL_FRAMEBUFFER);

	if (Status != GL_FRAMEBUFFER_COMPLETE) {
		printf("FB error, status: 0x%x\n", Status);
	}
}
