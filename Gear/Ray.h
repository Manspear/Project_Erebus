#pragma once
#include "BaseIncludes.h"
#include "Importer.h"


class Ray
{
private:
	GLFWwindow* windowRef;
	glm::mat4* projectionMatrixRef;
	double mousePosX, mousePosY;
	glm::vec3 ray_ndc, ray_world;
	glm::vec4 ray_clip, ray_eye;
	glm::vec4* objVertices;
	int totalVertices;
	

public:
	glm::vec3 rayDirection, rayPosition;
	GEAR_API Ray(GLFWwindow* window, glm::mat4* projectionMatrix);
	GEAR_API ~Ray();
	GEAR_API void updateRay(const glm::mat4& viewMat, const glm::vec3& cameraPos);
private:
	int triangleIntersection(const glm::vec3 vert1, const glm::vec3 vert2, const glm::vec3 vert3,
		const glm::vec3 rayO, const glm::vec3 rayD, float& out);
};

