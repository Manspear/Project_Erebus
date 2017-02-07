// influenced by LightHouse3D frustum culling tutorial
#pragma once
#include "PlaneFrustum.h"
#include "glm\ext.hpp"
#include "AABBCollider.h"
#include "DebugHandler.h"
class Frustum
{
public:
	Frustum();
	~Frustum();

	void setCameraParameters(float fov, float aspectRatio, float nearDistance, float farDistance);
	void updateFrustum(const glm::vec3& position, const glm::vec3& direction, const glm::vec3& up);

	bool pointCollision(glm::vec3& point);
	bool aabbCollision(AABBCollider* aabb, Debug* debugger);
private:
	enum
	{
		FRUSTUM_TOP,
		FRUSTUM_BOTTOM,
		FRUSTUM_LEFT,
		FRUSTUM_RIGHT,
		FRUSTUM_NEAR,
		FRUSTUM_FAR,
		FRUSTUM_PLANE_AMOUNT
	};
	PlaneFrustum planes[6];

	//helper functions
	bool pointPlaneCollision(int plane, glm::vec3& point);
public:

	glm::vec3 nearTopLeft, nearTopRight, nearBottomRight, nearBottomLeft,
		farTopLeft, farTopRight, farBottomRight, farBottomLeft;
	float nearDistance, farDistance, aspectRatio, fov, tang;
	float nearWidth, nearHeight, farWidth, farHeight;
	const float ONE_DEGREE_RADIAN = 3.14159265358979323846f / 180;

};

