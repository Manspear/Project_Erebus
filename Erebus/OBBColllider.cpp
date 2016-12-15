#include "OBBColllider.h"



OBBColllider::OBBColllider() : HitBox()
{
	this->pos = glm::vec3(0, 0, 0);
	this->xAxis = glm::vec3(1,0,0);
	this->yAxis = glm::vec3(0, 1, 0);
	this->zAxis = glm::vec3(0, 0, 1);
	this->xHalfLength = 1.0f;
	this->yHalfLength = 1.0f;
	this->zHalfLength = 1.0f;
}

OBBColllider::OBBColllider(int transformID) : HitBox(transformID)
{
	this->pos = glm::vec3(0, 0, 0);
	this->xAxis = glm::vec3(1, 0, 0);
	this->yAxis = glm::vec3(0, 1, 0);
	this->zAxis = glm::vec3(0, 0, 1);
	this->xHalfLength = 1.0f;
	this->yHalfLength = 1.0f;
	this->zHalfLength = 1.0f;
}


OBBColllider::~OBBColllider()
{
}

unsigned int OBBColllider::getID() const
{
	return this->ID;
}

int OBBColllider::getIDTransform() const
{
	return this->IDTransform;
}

std::vector<unsigned int>* OBBColllider::getIDCollisionsRef()
{
	return &this->IDCollisions;
}

void OBBColllider::insertCollisionID(unsigned int collisionID)
{
	this->IDCollisions.push_back(collisionID);
}

void OBBColllider::clearCollisionIDs()
{
	this->IDCollisions.clear();
}
