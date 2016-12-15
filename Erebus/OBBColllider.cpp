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

OBBColllider::OBBColllider(glm::vec3 pos, float xHalfLength, float yHalfLength, float zHalfLength) : HitBox()
{
	this->pos = pos;
	this->xHalfLength = xHalfLength;
	this->yHalfLength = yHalfLength;
	this->zHalfLength = zHalfLength;
	this->xAxis = glm::vec3(1,0,0);
	this->yAxis = glm::vec3(0, 1, 0);
	this->zAxis = glm::vec3(0, 0, 1);
}

OBBColllider::OBBColllider(int transformID, float xHalfLength, float yHalfLength, float zHalfLength) : HitBox(transformID)
{
	this->pos = glm::vec3(0, 0, 0);
	this->xHalfLength = xHalfLength;
	this->yHalfLength = yHalfLength;
	this->zHalfLength = zHalfLength;
	this->xAxis = glm::vec3(1, 0, 0);
	this->yAxis = glm::vec3(0, 1, 0);
	this->zAxis = glm::vec3(0, 0, 1);
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

void OBBColllider::setPos(glm::vec3 pos)
{
	this->pos = pos;
}
