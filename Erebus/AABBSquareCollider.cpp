#include "AABBSquareCollider.h"



AABBSquareCollider::AABBSquareCollider() : HitBox()
{
	this->pos = glm::vec3();
	this->halfSize = 1.0f;
}

AABBSquareCollider::AABBSquareCollider(unsigned int ID, unsigned int IDTransform, glm::vec3 pos, float halfSize) : HitBox(ID, IDTransform)
{
	this->pos = pos;
	this->halfSize = halfSize;
}


AABBSquareCollider::~AABBSquareCollider()
{
}

unsigned int AABBSquareCollider::getID() const
{
	return this->ID;
}

unsigned int AABBSquareCollider::getIDTransform() const
{
	return this->IDTransform;
}

std::vector<unsigned int>* AABBSquareCollider::getIDCollisionsRef()
{
	return &this->IDCollisions;
}

void AABBSquareCollider::insertCollisionID(unsigned int collisionID)
{
	this->IDCollisions.push_back(collisionID);
}

void AABBSquareCollider::clearCollisionIDs()
{
	this->IDCollisions.clear();
}

const glm::vec3 * AABBSquareCollider::getPos()
{
	return &this->pos;
}

float AABBSquareCollider::getHalfsize() const
{
	return this->halfSize;
}

void AABBSquareCollider::setPos(glm::vec3 pos)
{
	this->pos = pos;
}
