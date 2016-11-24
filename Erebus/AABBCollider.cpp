#include "AABBCollider.h"



AABBCollider::AABBCollider()
{
	this->minPos = glm::vec3();
	this->maxPos = glm::vec3();
}

AABBCollider::AABBCollider(glm::vec3 minPos, glm::vec3 maxPos)
{
	this->minPos = minPos;
	this->maxPos = maxPos;
}


AABBCollider::~AABBCollider()
{
}

bool AABBCollider::AabbToAabb(const AABBCollider* aabb)
{
	return (this->maxPos.x >= aabb->minPos.x &&
			this->minPos.x <= aabb->maxPos.x &&
			this->maxPos.y >= aabb->minPos.y &&
			this->minPos.y <= aabb->maxPos.y &&
			this->maxPos.z >= aabb->minPos.z &&
			this->minPos.z <= aabb->maxPos.z);
}
