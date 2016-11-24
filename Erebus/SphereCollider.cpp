#include "SphereCollider.h"



SphereCollider::SphereCollider()
{
	this->radius = 0.0f;
	this->pos = glm::vec3(0, 0, 0);
}

SphereCollider::SphereCollider(glm::vec3 pos, float radius)
{
	this->pos = pos;
	this->radius = radius;
}

SphereCollider::SphereCollider(float x, float y, float z, float radius)
{
	this->pos.x = x;
	this->pos.y = y;
	this->pos.z = z;
	this->radius = radius;
}


SphereCollider::~SphereCollider()
{
}

bool SphereCollider::sphereToSphereCollision(const SphereCollider * sphere)
{
	bool collision = false;

	glm::vec3 distanceVector = this->pos - sphere->pos;
	float distanceSquared = glm::dot(distanceVector, distanceVector); // dot with itself = length^2

	float radiusSquared = (this->radius + sphere->radius);
	radiusSquared *= radiusSquared;

	//if distance squared is less than radius squared = collision
	if (distanceSquared <= radiusSquared)
		collision = true;


	return collision;
}

float SphereCollider::SquaredDistancePointAabb(const AABBCollider * aabb)
{
	float squaredDistance = 0;
	glm::vec3 minPos;
	squaredDistance += closestDistanceAabbToCenter(this->pos.x, aabb->);



	return squaredDistance;
}

float SphereCollider::closestDistanceAabbToCenter(float point, float aabbMin, float aabbMax)
{
	float val = 0;
	float returnValue = 0;
	if (point < aabbMin)
	{
		val = (aabbMin - point);
		returnValue = val* val;
	}
	if (point > aabbMax)
	{
		val = (point - aabbMax);
		returnValue = val*val;
	}
	return returnValue;
}
