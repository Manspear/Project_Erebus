#include "CascadedShadowMap.h"



CascadedShadowMap::CascadedShadowMap()
{
	pos = glm::vec3(50.0f, 50.0f, 0.0f);
	sinCount = 0.0f;
}


CascadedShadowMap::~CascadedShadowMap()
{

}

void CascadedShadowMap::Init(int windowWidth, int windowHeight, Lights::DirLight light)
{
	this->width = windowWidth;
	this->height = windowHeight;
	this->light = light;
	this->expC = 120.0f;
	this->splitLambda = 0.5f; 
	this->nearPlane = 0.1f;
	this->farPlane = 2000.f;
	this->initFramebuffer(windowWidth, windowHeight);
}

void CascadedShadowMap::bind(int cascadeIndex)
{
	assert(cascadeIndex < NUM_CASCADEDS);
	glBindFramebuffer(GL_DRAW_FRAMEBUFFER, framebufferID);
	glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, textureIDs[cascadeIndex], 0);

}

void CascadedShadowMap::unBind() {
	glBindFramebuffer(GL_FRAMEBUFFER, 0);
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
	if (true)
	{

		pos.z = 100 * sinf(sinCount) + 50;

		sinCount += 0.003f;

		this->nearPlane = mainCam->getNearPlaneDistance();
		this->farPlane = mainCam->getFarPlaneDistance();

		for (int i = 0; i < NUM_CASCADEDS; i++)
		{
			float splitNear = i > 0 ? glm::mix(nearPlane + (static_cast<float>(i) / (float)NUM_CASCADEDS) * (farPlane - nearPlane), nearPlane * pow(farPlane / nearPlane, static_cast<float>(i) / (float)NUM_CASCADEDS), splitLambda) : nearPlane;
			float splitFar = i < NUM_CASCADEDS - 1 ? glm::mix(nearPlane + (static_cast<float>(i + 1) / (float)NUM_CASCADEDS) * (farPlane - nearPlane), nearPlane * pow(farPlane / nearPlane, static_cast<float>(i + 1) / (float)NUM_CASCADEDS), splitLambda) : farPlane;

			splitPlanes[i] = glm::vec2(splitNear, splitFar);
		}

		//for (int i = 0; i < NUM_CASCADEDS; i++)
		//{
		//	farbound[i] = (farPlane + nearPlane - 2.0 * nearPlane * farPlane / splitPlanes[i].y) / (farPlane - nearPlane);
		//	farbound[i] = (farbound[i] + 1) / 2.0;
		//	//farbound[i] = 0.5f * (-splitPlanes[i].y * mainCam->getProjectionMatrix()[2][2] + mainCam->getProjectionMatrix()[3][2]) / splitPlanes[i].y + 0.5f;
		//}

		//pos = mainCam->getPosition();
		glm::vec3 direction = mainCam->getDirection();
		glm::vec3 right = glm::normalize(glm::cross(glm::normalize(direction), glm::vec3(0.0f, 1.0f, 0.0f)));
		glm::vec3 up = glm::normalize(glm::cross(right, glm::normalize(direction)));

		//printf("right: %s up: %s\n", glm::to_string(right).c_str(), glm::to_string(up).c_str());

		glm::vec3 lookat((pos + direction));
		glm::mat4 camView = glm::lookAt(pos, lookat, up);
		glm::mat4 view = mainCam->getViewMatrix();
		glm::mat4 camInv = glm::inverse(view);

		viewMatrices[NUM_CASCADEDS] = view;

		for (int CascadeID = 0; CascadeID < NUM_CASCADEDS; CascadeID++)
		{

			float nearHeight = tanf(glm::radians(mainCam->getFov() / 2)) * splitPlanes[CascadeID].x;
			float nearWidth = nearHeight * (float)WINDOW_WIDTH / (float)WINDOW_HEIGHT;
			float farHeight = tanf(glm::radians(mainCam->getFov() / 2)) * splitPlanes[CascadeID].y;
			float farWidth = farHeight * (float)WINDOW_WIDTH / (float)WINDOW_HEIGHT;

			glm::vec3 nc = (mainCam->getPosition() - (-direction * splitPlanes[CascadeID].x));
			glm::vec3 fc = (mainCam->getPosition() - (-direction * splitPlanes[CascadeID].y));

			glm::vec4 vertices[8] = {
				glm::vec4(nc - up * nearHeight * 0.5f - right * nearWidth * 0.5f, 1), // nbl (near, bottom, left)
				glm::vec4(nc - up * nearHeight * 0.5f + right * nearWidth * 0.5f, 1), // nbr
				glm::vec4(nc + up * nearHeight * 0.5f + right * nearWidth * 0.5f, 1), // ntr
				glm::vec4(nc + up * nearHeight * 0.5f - right * nearWidth * 0.5f, 1), // ntl
				glm::vec4(fc - up * farHeight  * 0.5f - right * farWidth * 0.5f, 1), // fbl (far, bottom, left)
				glm::vec4(fc - up * farHeight  * 0.5f + right * farWidth * 0.5f, 1), // fbr
				glm::vec4(fc + up * farHeight  * 0.5f + right * farWidth * 0.5f, 1), // ftr
				glm::vec4(fc + up * farHeight  * 0.5f - right * farWidth * 0.5f, 1), // ftl
			};

			glm::vec4 frustumMin(std::numeric_limits<float>::max());
			glm::vec4 frustumMax(std::numeric_limits<float>::lowest());

			glm::vec3 minExtents(std::numeric_limits<float>::max());
			glm::vec3 maxExtents(std::numeric_limits<float>::lowest());

			for (int j = 0; j < 8; j++) {

				glm::vec3 vW = glm::vec3(vertices[j]);

				minExtents.x = std::fmin(minExtents.x, vW.x);
				maxExtents.x = std::fmax(maxExtents.x, vW.x);
				minExtents.y = std::fmin(minExtents.y, vW.y);
				maxExtents.y = std::fmax(maxExtents.y, vW.y);
				minExtents.z = std::fmin(minExtents.z, vW.z);
				maxExtents.z = std::fmax(maxExtents.z, vW.z);
			}
			aminAABB[CascadeID] = minExtents;
			amaxAABB[CascadeID] = maxExtents;

			glm::vec3 center = nc + ((fc - nc) / 2.0f);

			aminAABB[NUM_CASCADEDS+ CascadeID] = center;

			glm::mat4 t_modelview = glm::lookAt(center - light.direction, center, glm::vec3(0, 1, 0));
			
			glm::vec4 t_transf = t_modelview * vertices[0];

			for (int i = 1; i < 8; i++)
			{
				t_transf = t_modelview * vertices[i];
				if (t_transf.z > frustumMax.z) { frustumMax.z = t_transf.z; }
				if (t_transf.z < frustumMin.z) { frustumMin.z = t_transf.z; }
			}
			frustumMax.z += 50;

			glm::mat4 t_ortho = glm::ortho(-1.0f, 1.0f, -1.0f, 1.0f, -frustumMax.z, -frustumMin.z);
			glm::mat4 t_shad_mvp = t_ortho * t_modelview;

			for (int i = 0; i < 8; i++)
			{
				t_transf = t_shad_mvp * vertices[i];

				t_transf.x /= t_transf.w;
				t_transf.y /= t_transf.w;

				if (t_transf.x > frustumMax.x) { frustumMax.x = t_transf.x; }
				if (t_transf.x < frustumMin.x) { frustumMin.x = t_transf.x; }
				if (t_transf.y > frustumMax.y) { frustumMax.y = t_transf.y; }
				if (t_transf.y < frustumMin.y) { frustumMin.y = t_transf.y; }
			}

			glm::vec2 tscale(2.0f/(frustumMax.x - frustumMin.x), 2.0f / (frustumMax.y - frustumMin.y));
			glm::vec2 toffset(-0.5f * (frustumMax.x + frustumMin.x) * tscale.x, -0.5f * (frustumMax.y + frustumMin.y) * tscale.y);

			glm::mat4 t_shad_crop;
			t_shad_crop[0][0] = tscale.x;
			t_shad_crop[1][1] = tscale.y;
			t_shad_crop[0][3] = toffset.x;
			t_shad_crop[1][3] = toffset.y;
			t_shad_crop = glm::transpose(t_shad_crop);

			glm::mat4 t_projection = t_shad_crop * t_ortho;

			projectionMatrices[CascadeID] = t_projection;// glm::ortho<float>(-50, 50, -50, 50, -50, 50);// t_projection;
			viewMatrices[CascadeID] = t_modelview;

			cropMatrices[CascadeID] = t_projection * t_modelview;

			textureMatrices[CascadeID] = bias * cropMatrices[CascadeID] * camInv;

		}
	}
}

void CascadedShadowMap::calculateShadowMatrices(Camera * cam)
{
	
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

		glTexImage2D(GL_TEXTURE_2D, 0, GL_RG32F, windowHeight, windowHeight, 0, GL_RG, GL_UNSIGNED_BYTE, NULL);
	}
	
	glBindFramebuffer(GL_FRAMEBUFFER, framebufferID);
	glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, textureIDs[0], 0);

	//glDrawBuffer(GL_NONE);
	//glReadBuffer(GL_NONE);

	GLenum Status = glCheckFramebufferStatus(GL_FRAMEBUFFER);

	if (Status != GL_FRAMEBUFFER_COMPLETE) {
		printf("FB error, status: 0x%x\n", Status);
	}
}
