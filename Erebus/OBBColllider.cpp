#include "OBBColllider.h"



OBBColllider::OBBColllider()
{
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
