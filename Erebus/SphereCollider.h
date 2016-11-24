#pragma once
#include "BaseIncludes.h"
#include "AABBCollider.h"
class SphereCollider
{
public:
	SphereCollider();
	SphereCollider(glm::vec3 pos, float radius);
	SphereCollider(float x, float y, float z, float radius);
	~SphereCollider();
	bool sphereToSphereCollision(const SphereCollider * sphere);

private:
	glm::vec3 pos;
	float radius;

	float SquaredDistancePointAabb(const AABBCollider* aabb);
	float closestDistanceAabbToCenter(float point, float aabbMin, float aabbMax);

};

