#include "CascadedShadowMap.h"



CascadedShadowMap::CascadedShadowMap()
{
	blurShader = 0;
	quadShader = 0;
}


CascadedShadowMap::~CascadedShadowMap()
{
	for (int i = 0; i < num_cascades; i++)
	{
		glDeleteTextures(1, &textureIDs[i]);
	}
	glDeleteFramebuffers(1, &framebufferID);

	if (blurShader)
		delete blurShader;

	if (quadShader)
		delete quadShader;
}

void CascadedShadowMap::Init(int textureWidth, int textureHeight, Lights::DirLight* light)
{
	this->width = textureWidth;
	this->height = textureHeight;
	this->light = light;
	this->expC = 120.0f;
	this->splitLambda = 0.5f; 
	this->nearPlane = 0.1f;
	this->farPlane = 2000.f;
	this->initFramebuffer(textureWidth, textureHeight);

	blurShader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "blur");
	quadShader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "quad");
	initBlurFramebuffer(textureWidth, textureHeight);
}

void CascadedShadowMap::bind(int cascadeIndex)
{
	assert(cascadeIndex < MAX_NUM_CASCADEDS);
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


		for (int i = 0; i < num_cascades; i++)
		{
			float splitNear = i > 0 ? glm::mix(nearPlane + (static_cast<float>(i) / (float)num_cascades) * (farPlane - nearPlane), nearPlane * pow(farPlane / nearPlane, static_cast<float>(i) / (float)num_cascades), splitLambda) : nearPlane;
			float splitFar = i < num_cascades - 1 ? glm::mix(nearPlane + (static_cast<float>(i + 1) / (float)num_cascades) * (farPlane - nearPlane), nearPlane * pow(farPlane / nearPlane, static_cast<float>(i + 1) / (float)num_cascades), splitLambda) : farPlane;

			splitPlanes[i] = glm::vec2(splitNear, splitFar);
			splitDistance[i] = splitFar;

			splitIsInit = true;

			glm::vec4 View = { 0.0f, 0.0f, -splitDistance[i], 1.0f };
			glm::vec4 Clip = mainCam->getProjectionMatrix() * View;

			Clip.z /= Clip.w;
			splitDistance[i] = Clip.z;
		}
	}

	glm::mat4 lightM;
	float fov = mainCam->getFov();
	float aspectRatio = mainCam->getAspectRatio();
	glm::mat4 camInv = glm::inverse(mainCam->getViewMatrix());
	float tang = (float)tan(fov*ONE_DEGREE_RADIAN * 0.5);

	for (int CascadeID = 0; CascadeID < num_cascades; CascadeID++)
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

		glm::vec4 minExtent(std::numeric_limits<float>::max());
		glm::vec4 maxExtent(std::numeric_limits<float>::lowest());

		glm::vec3 center;

		glm::vec3 radiusVec;

		for (int j = 0; j < 8; j++) {
			glm::vec3 vW = glm::vec3(camInv * frustumCorners[j]);
			center += vW;

			glm::vec4 frustumCorner = lightM * glm::vec4(vW, 1);
			frustumMin.x = std::fmin(frustumMin.x, frustumCorner.x);
			frustumMax.x = std::fmax(frustumMax.x, frustumCorner.x);
			frustumMin.y = std::fmin(frustumMin.y, frustumCorner.y);
			frustumMax.y = std::fmax(frustumMax.y, frustumCorner.y);
			frustumMin.z = std::fmin(frustumMin.z, frustumCorner.z);
			frustumMax.z = std::fmax(frustumMax.z, frustumCorner.z);

			minExtent.x = std::fmin(minExtent.x, vW.x);
			maxExtent.x = std::fmax(maxExtent.x, vW.x);
			minExtent.y = std::fmin(minExtent.y, vW.y);
			maxExtent.y = std::fmax(maxExtent.y, vW.y);
			minExtent.z = std::fmin(minExtent.z, vW.z);
			maxExtent.z = std::fmax(maxExtent.z, vW.z);

			if (j == 0)
			{
				radiusVec = vW;
			}
			else if (j == 6)
			{
				radiusVec -= vW;
			}
		}
		center = center / 8.0f;

		float radius = glm::length(radiusVec) / 2.0f;

		glm::vec3 lightCenter = center;
		glm::vec3 lightPos = center + light->direction;

		glm::vec3 lightUp;
		if (light->direction == glm::vec3(0.f,-1.f,0.f))
			lightUp = glm::vec3(0.f, 0.f, 1.f);
		else
			lightUp = glm::vec3(0.f, 1.f, 0.f);

		lightM = glm::lookAt(lightCenter, lightPos, lightUp);

		lightM[3][0] -= glm::mod(lightM[3][0], 2.f * radius / width);
		lightM[3][1] -= glm::mod(lightM[3][1], 2.f * radius / width);
		lightM[3][2] -= glm::mod(lightM[3][2], 2.f * radius / width);

		/*glm::mat4 projection = glm::ortho(frustumMin.x, frustumMax.x, frustumMin.y, frustumMax.y, frustumMin.z * 6, frustumMax.z * 6);*/
		glm::mat4 projection = glm::ortho(-radius, radius, -radius, radius, -radius * 2, radius * 2);

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

void CascadedShadowMap::blur()
{

	GLuint uniformBlur = glGetUniformLocation(blurShader->getProgramID(), "filterTexture");
	GLuint uniformQuad = glGetUniformLocation(quadShader->getProgramID(), "diffuse");

	////Downsample
	//quadShader->use();
	//glBindFramebuffer(GL_FRAMEBUFFER, blurVerticalFramebufferID);
	//bindTexture(quadShader, "diffuse", 0, 0);
	glViewport(0, 0, width, height);
	//drawQuad();
	//quadShader->unUse();

	//Horizontal Blur
	blurShader->use();

	glActiveTexture(GL_TEXTURE0);
	glUniform1i(uniformBlur, 0);

	glBindFramebuffer(GL_FRAMEBUFFER, blurHorizontalFramebufferID);
	bindTexture(blurShader, "filterTexture", 0, 0);
	//glBindTexture(GL_TEXTURE_2D, blurVerticalTextureID);
	glm::vec3 blurScale = glm::vec3(0, 1.0 / (0.9f * (height)), 0);
	//glm::vec3 blurScale = glm::vec3(1.0 / (0.9f * width), 0, 0);
	blurShader->setUniform(blurScale, "blurScale");
	drawQuad();

	//Vertical Blur
	//glBindFramebuffer(GL_FRAMEBUFFER, blurVerticalFramebufferID);
	glBindTexture(GL_TEXTURE_2D, blurHorizontalTextureID);
	bind(0);
	blurScale = glm::vec3(1.0 / (0.9f * width), 0, 0);
	blurShader->setUniform(blurScale, "blurScale");
	drawQuad();

	blurShader->unUse();

	////Upsample
	//quadShader->use();
	//bind(0);
	//glActiveTexture(GL_TEXTURE0);
	//glUniform1i(uniformQuad, 0);
	//glBindTexture(GL_TEXTURE_2D, blurVerticalTextureID);

	//drawQuad();
	//quadShader->unUse();
}

void CascadedShadowMap::drawQuad()
{
	glDepthMask(GL_FALSE);
	if (quadVAO == 0) { //just draws a quad on the screen
		GLfloat quadVertices[] = {
			-1.0f, 1.0f, 0.0f, 0.0f, 1.0f,
			-1.0f, -1.0f, 0.0f, 0.0f, 0.0f,
			1.0f, 1.0f, 0.0f, 1.0f, 1.0f,
			1.0f, -1.0f, 0.0f, 1.0f, 0.0f,
		};

		glGenVertexArrays(1, &quadVAO);
		glGenBuffers(1, &quadVBO);
		glBindVertexArray(quadVAO);
		glBindBuffer(GL_ARRAY_BUFFER, quadVBO);
		glBufferData(GL_ARRAY_BUFFER, sizeof(quadVertices), &quadVertices, GL_STATIC_DRAW);
		glEnableVertexAttribArray(0);
		glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(GLfloat), (GLvoid*)0);
		glEnableVertexAttribArray(1);
		glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(GLfloat), (GLvoid*)(3 * sizeof(GLfloat)));
	}

	glBindVertexArray(quadVAO);
	glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
	glBindVertexArray(0);
	glDepthMask(GL_TRUE);
}

void CascadedShadowMap::initFramebuffer(int textureWidth, int textureHeight)
{
	glGenFramebuffers(1, &framebufferID);

	glGenTextures(num_cascades, textureIDs);
	for (int i = 0; i < num_cascades; i++)
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

void CascadedShadowMap::initBlurFramebuffer(int textureWidth, int textureHeight)
{
	glGenFramebuffers(1, &blurVerticalFramebufferID);

	glGenTextures(1, &blurVerticalTextureID);

	glBindTexture(GL_TEXTURE_2D, blurVerticalTextureID);
	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RG32F, textureWidth, textureHeight, 0, GL_RG, GL_UNSIGNED_BYTE, NULL);

	glBindFramebuffer(GL_FRAMEBUFFER, blurVerticalFramebufferID);
	glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, blurVerticalTextureID, 0);

	GLenum Status = glCheckFramebufferStatus(GL_FRAMEBUFFER);

	if (Status != GL_FRAMEBUFFER_COMPLETE) {
		printf("FB error, status: 0x%x\n", Status);
	}


	glGenFramebuffers(1, &blurHorizontalFramebufferID);

	glGenTextures(1, &blurHorizontalTextureID);

	glBindTexture(GL_TEXTURE_2D, blurHorizontalTextureID);
	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RG32F, textureWidth, textureHeight, 0, GL_RG, GL_UNSIGNED_BYTE, NULL);

	glBindFramebuffer(GL_FRAMEBUFFER, blurHorizontalFramebufferID);
	glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, blurHorizontalTextureID, 0);

	Status = glCheckFramebufferStatus(GL_FRAMEBUFFER);

	if (Status != GL_FRAMEBUFFER_COMPLETE) {
		printf("FB error, status: 0x%x\n", Status);
	}
}
