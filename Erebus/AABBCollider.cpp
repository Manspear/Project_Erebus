#include "AABBCollider.h"



AABBCollider::AABBCollider() : HitBox()
{
	this->minPos = glm::vec3();
	this->maxPos = glm::vec3();
}

AABBCollider::AABBCollider(unsigned int ID, unsigned int IDTransform, glm::vec3 minPos, glm::vec3 maxPos) : HitBox(ID,IDTransform)
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

const glm::vec3 * AABBCollider::getMaxPos()
{
	return &this->maxPos;
}

const glm::vec3* AABBCollider::getMinPos()
{
	return &this->minPos;
}

unsigned int AABBCollider::getID() const
{
	return this->ID;
}

unsigned int AABBCollider::getIDTransform() const
{
	return this->IDTransform;
}

std::vector<unsigned int>* AABBCollider::getIDCollisionsRef()
{
	return &this->IDCollisions;
}

void AABBCollider::insertCollisionID(unsigned int collisionID)
{
	this->IDCollisions.push_back(collisionID);
}

void AABBCollider::clearCollisionIDs()
{
	this->IDCollisions.clear();
}
