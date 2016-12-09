#include "AABBCollider.h"



AABBCollider::AABBCollider() : HitBox()
{
	this->minPos = glm::vec3(1,1,1);
	this->maxPos = glm::vec3(-1,-1,-1);
	this->centerPos = glm::vec3();
	this->maxPosTotal = glm::vec3();
	this->minPosTotal = glm::vec3();
}

AABBCollider::AABBCollider(unsigned int ID, int IDTransform, glm::vec3 minPos, glm::vec3 maxPos) : HitBox(ID,IDTransform)
{
	this->minPos = minPos;
	this->maxPos = maxPos;
	this->minPosTotal = minPos;
	this->maxPosTotal = maxPos;
	this->centerPos = glm::vec3();
}

AABBCollider::AABBCollider(int IDTransform, glm::vec3 minPos, glm::vec3 maxPos) : HitBox(IDTransform)
{
	this->minPos = minPos;
	this->maxPos = maxPos;
	this->minPosTotal = minPos;
	this->maxPosTotal = maxPos;
	this->centerPos = glm::vec3();
}

AABBCollider::AABBCollider(unsigned int IDTransform) : HitBox(IDTransform)
{
	this->minPos = glm::vec3(1,1,1);
	this->maxPos = glm::vec3(-1,-1,-1);
	this->centerPos = glm::vec3();
	this->maxPosTotal = glm::vec3();
	this->minPosTotal = glm::vec3();
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

const glm::vec3& AABBCollider::getMaxPos()
{
	return this->maxPosTotal;
}

const glm::vec3& AABBCollider::getMinPos()
{
	return this->minPosTotal;
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

void AABBCollider::setPos(glm::vec3 pos)
{
	this->centerPos = pos;
	this->maxPosTotal = this->maxPos + this->centerPos;
	this->minPosTotal = this->minPos + this->centerPos;
}

void AABBCollider::setMinPos(glm::vec3 minPos)
{
	this->minPos = minPos;
}

void AABBCollider::setMaxPos(glm::vec3 maxPos)
{
	this->maxPos = maxPos;
}
