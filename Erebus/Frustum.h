// influenced by LightHouse3D frustum culling tutorial
/*
	This frustum is locked on Y-Axis
	This is because on big AABB:s you get lots of false positives otherwise
	To get rid of false positives you can either make the AABB:s small compared to the frustum or you can
	do the separating axis theorem to calculate collision instead, but this is too slow.
*/
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

	// geometric solution
	void updateFrustum(const glm::vec3& position, const glm::vec3& direction, const glm::vec3& up);
	bool pointCollision(glm::vec3& point);
	bool aabbCollision(AABBCollider* aabb, Debug* debugger);
	bool aabbCollisionOptimized(AABBCollider* aabb);


	//clip space
	void updateClipSpaceFrustum(const glm::mat4 viewProjectionMatrix);
	bool clipSpaceAabbCollision(AABBCollider* aabb); //Clip space collision does not use exactly the same algorithm as regular aabbCollision

	//Helper functions
	bool pointAABBCollision(glm::vec3 point, AABBCollider* aabb); // https://developer.mozilla.org/en-US/docs/Games/Techniques/3D_collision_detection

	void drawMeSelf(Debug* debugger);


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
	glm::vec4 clipSpacePlanes[6];
	const int LUA_HARDCODED = 5;
	const int WIDEN_FRUSTUM = 35;

	//helper functions
	bool pointPlaneCollision(int plane, glm::vec3& point);
public:

	glm::vec3 nearTopLeft, nearTopRight, nearBottomRight, nearBottomLeft,
		farTopLeft, farTopRight, farBottomRight, farBottomLeft;
	float nearDistance, farDistance, aspectRatio, fov, tang;
	float nearWidth, nearHeight, farWidth, farHeight;
	const float ONE_DEGREE_RADIAN = 3.14159265358979323846f / 180;

};

