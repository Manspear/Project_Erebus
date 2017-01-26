// influenced by LightHouse3D frustum culling tutorial
#pragma once
#include "PlaneFrustum.h"
#include "glm\ext.hpp"

class Frustum
{
public:
	Frustum();
	~Frustum();

	void setCameraParameters(float fov, float aspectRatio, float nearDistance, float farDistance);
	void updateFrustum(const glm::vec3& position, const glm::vec3& direction, const glm::vec3& up);
private:
	enum 
	{
		TOP,
		BOTTOM,
		LEFT,
		RIGHT,
		NEAR,
		FAR
	};
	PlaneFrustum planes[6];

	glm::vec3 nearTopLeft, nearTopRight, nearBottomRight, nearBottomLeft,
		farTopLeft, farTopRight, farBottomRight, farBottomLeft;
	float nearDistance, farDistance, aspectRatio, fov, tang;
	float nearWidth, nearHeight, farWidth, farHeight;
	const float ONE_DEGREE_RADIAN = glm::pi<float>() / 180;
	const short PLANE_AMOUNT = 6;

};

