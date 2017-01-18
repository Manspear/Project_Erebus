#include "SphereCollider.h"



SphereCollider::SphereCollider() : HitBox(-1,-1)
{
	this->radius = 1.0f;
	this->pos = glm::vec3(0, 0, 0);
	this->radiusSquared = radius*radius;
	this->typeFlag = 0;
}

SphereCollider::SphereCollider(glm::vec3 pos, float radius) : HitBox()
{
	this->pos = pos;
	this->radius = radius;
	this->radiusSquared = radius*radius;
	this->typeFlag = 0;
}

SphereCollider::SphereCollider(int IDTransform, glm::vec3 pos, float radius) : HitBox(IDTransform)
{
	this->pos = pos;
	this->radius = radius;
	this->radiusSquared = radius*radius;
	this->typeFlag = 0;
}

SphereCollider::SphereCollider(int IDTransform, float x, float y, float z, float radius) : HitBox(ID, IDTransform)
{
	this->pos.x = x;
	this->pos.y = y;
	this->pos.z = z;
	this->radius = radius;
	this->radiusSquared = radius*radius;
	this->typeFlag = 0;
}

SphereCollider::SphereCollider(int IDTransform) : HitBox(IDTransform)
{
	this->radius = 1.0f;
	this->pos = glm::vec3(0, 0, 0);
	this->radiusSquared = radius*radius;
	this->typeFlag = 0;
}


SphereCollider::~SphereCollider()
{
	if (this->children != nullptr)
	{
		for (size_t i = 0; i < this->children->size(); i++)
		{
			delete this->children->at(0);
		}
	}
}

//overrides
unsigned int SphereCollider::getID() const
{
	return this->ID;
}

int SphereCollider::getIDTransform() const
{
	return this->IDTransform;
}

std::vector<unsigned int>* SphereCollider::getIDCollisionsRef()
{
	return &this->IDCollisions;
}

void SphereCollider::insertCollisionID(unsigned int collisionID)
{
	this->IDCollisions.push_back(collisionID);
}

void SphereCollider::clearCollisionIDs()
{
	this->IDCollisions.clear();
}

const glm::vec3 & SphereCollider::getPos()
{
	return this->pos;
}

const float & SphereCollider::getRadius()
{
	return this->radius;
}

float SphereCollider::getRadiusSquared() const
{
	return this->radiusSquared;
}

void SphereCollider::setPos(glm::vec3 pos)
{
	this->pos = pos;
}

void SphereCollider::setRadius(float radius)
{
	this->radius = radius;
	this->radiusSquared = radius*radius;
}