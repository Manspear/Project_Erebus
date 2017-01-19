#include "RayCollider.h"



RayCollider::RayCollider()
{
	this->position = glm::vec3(0,0,0);
	this->direction = glm::vec3(1, 0, 0);

	this->intersectionPoint = glm::vec3(0, 0, 0);
	this->hitDistance = -1;

	this->ID = -1;
	this->IDTransform = -1;
	this->IDCollisions.reserve(RESERVE_COLLISIONS);
	this->active = true;
}

RayCollider::RayCollider(glm::vec3 position, glm::vec3 direction)
{
	this->position = position;
	this->direction = glm::normalize(direction);

	this->intersectionPoint = glm::vec3(0, 0, 0);
	this->hitDistance = -1;

	this->ID = -1;
	this->IDTransform = -1;
	this->IDCollisions.reserve(RESERVE_COLLISIONS);
	this->active = true;
}

RayCollider::RayCollider(int IDTransform, glm::vec3 direction)
{
	this->position = glm::vec3(0, 0, 0);
	this->direction = direction;

	this->intersectionPoint = glm::vec3(0, 0, 0);
	this->hitDistance = -1;

	this->ID = -1;
	this->IDTransform = IDTransform;
	this->IDCollisions.reserve(RESERVE_COLLISIONS);
	this->active = true;
}


RayCollider::~RayCollider()
{
}

void RayCollider::setPosition(glm::vec3 position)
{
	this->position = position;
}

void RayCollider::setDirection(glm::vec3 direction)
{
	this->direction = glm::normalize(direction);
}

void RayCollider::hit(glm::vec3 intersectionPoint, float hitDistance)
{
	this->intersectionPoint = intersectionPoint;
	this->hitDistance = hitDistance;
}

void RayCollider::insertCollisionID(unsigned int collisionID)
{
	this->IDCollisions.push_back(collisionID);
}

void RayCollider::clearCollisionIDs()
{
	this->IDCollisions.clear();
}

void RayCollider::clearHitData()
{
	this->hitDistance = -1;
	this->intersectionPoint = glm::vec3(0, 0, 0);
}

const glm::vec3 & RayCollider::getDirection() const
{
	return this->direction;
}

const glm::vec3 & RayCollider::getPosition() const
{
	return this->position;
}

const glm::vec3 & RayCollider::getIntersectionPoint() const
{
	return this->intersectionPoint;
}

int RayCollider::getIDTransform() const
{
	return this->IDTransform;
}

int RayCollider::getID() const
{
	return this->ID;
}

float RayCollider::hitdistance() const
{
	return this->hitDistance;
}

bool RayCollider::checkCollision()
{
	bool collision = false;
	if (this->IDCollisions.size() > 0)
		collision = true;
	if (this->hitDistance != -1)
		collision = true;

	return collision;
}

bool RayCollider::isActive()
{
	return this->active;
}

std::vector<unsigned int>* RayCollider::getIDCollisionsRef()
{
	return &this->IDCollisions;
}

void RayCollider::setIDTransform(unsigned int ID)
{
	this->IDTransform = ID;
}

void RayCollider::setID(unsigned int ID)
{
	this->ID = ID;
}

void RayCollider::setActive(bool active)
{
	this->active = active;
}
