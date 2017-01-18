#include "AABBCollider.h"



AABBCollider::AABBCollider() : HitBox()
{
	this->minPos = glm::vec3(-1,-1,-1);
	this->maxPos = glm::vec3(1,1,1);
	this->pos = glm::vec3();
	this->maxPosTotal = glm::vec3();
	this->minPosTotal = glm::vec3();
	this->typeFlag = 1;
}

AABBCollider::AABBCollider(int IDTransform) : HitBox(IDTransform)
{
	this->minPos = glm::vec3(1, 1, 1);
	this->maxPos = glm::vec3(-1, -1, -1);
	this->pos = glm::vec3();
	this->maxPosTotal = glm::vec3();
	this->minPosTotal = glm::vec3();
	this->typeFlag = 1;
}

AABBCollider::AABBCollider(int IDTransform, glm::vec3 minPos, glm::vec3 maxPos) : HitBox(IDTransform)
{
	this->minPos = minPos;
	this->maxPos = maxPos;
	this->minPosTotal = minPos;
	this->maxPosTotal = maxPos;
	this->pos = glm::vec3();
	this->typeFlag = 1;
}

AABBCollider::AABBCollider(glm::vec3 minPos, glm::vec3 maxPos, glm::vec3 centerPos) : HitBox()
{
	this->minPos = minPos;
	this->maxPos = maxPos;
	this->pos = centerPos;
	this->minPosTotal = minPos + this->pos;
	this->maxPosTotal = maxPos + this->pos;
	this->typeFlag = 1;
	
}


AABBCollider::~AABBCollider()
{
	if (this->children != nullptr)
	{
		for (size_t i = 0; i < this->children->size(); i++)
		{
			delete this->children->at(0);
		}
	}
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

const glm::vec3& AABBCollider::getMaxPos() const
{
	return this->maxPosTotal;
}

const glm::vec3& AABBCollider::getMinPos() const
{
	return this->minPosTotal;
}

const glm::vec3 & AABBCollider::getCenterPos() const
{
	return this->pos;
}

unsigned int AABBCollider::getID() const
{
	return this->ID;
}

int AABBCollider::getIDTransform() const
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
	this->pos = pos;
	this->maxPosTotal = this->maxPos + this->pos;
	this->minPosTotal = this->minPos + this->pos;
}

void AABBCollider::setMinPos(glm::vec3 minPos)
{
	this->minPos = minPos;
}

void AABBCollider::setMaxPos(glm::vec3 maxPos)
{
	this->maxPos = maxPos;
}
