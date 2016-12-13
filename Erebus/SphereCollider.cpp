#include "SphereCollider.h"



SphereCollider::SphereCollider() : HitBox(-1,-1)
{
	this->radius = 1.0f;
	this->pos = glm::vec3(0, 0, 0);
}

SphereCollider::SphereCollider(unsigned int ID, int IDTransform, glm::vec3 pos, float radius) : HitBox(ID, IDTransform)
{
	this->pos = pos;
	this->radius = radius;
}

SphereCollider::SphereCollider(int IDTransform, glm::vec3 pos, float radius) : HitBox(IDTransform)
{
	this->pos = pos;
	this->radius = radius;
}

SphereCollider::SphereCollider(unsigned int ID, unsigned int IDTransform, float x, float y, float z, float radius) : HitBox(ID, IDTransform)
{
	this->pos.x = x;
	this->pos.y = y;
	this->pos.z = z;
	this->radius = radius;
}

SphereCollider::SphereCollider(unsigned int IDTransform, float x, float y, float z, float radius) : HitBox(ID, IDTransform)
{
	this->pos.x = x;
	this->pos.y = y;
	this->pos.z = z;
	this->radius = radius;
}

SphereCollider::SphereCollider(unsigned int IDTransform) : HitBox(IDTransform)
{
	this->radius = 1.0f;
	this->pos = glm::vec3(0, 0, 0);
}


SphereCollider::~SphereCollider()
{
}

bool SphereCollider::sphereToSphereCollision(const SphereCollider * sphere)
{
	bool collision = false;

	glm::vec3 distanceVector = this->pos - sphere->pos;
	float distanceSquared = glm::dot(distanceVector, distanceVector); // dot with itself = length^2

	float radiusSquared = (this->radius + sphere->radius);
	radiusSquared *= radiusSquared;

	//if distance squared is less than radius squared = collision
	if (distanceSquared <= radiusSquared)
		collision = true;
	return collision;
}

bool SphereCollider::SphereToAabbCollision(AABBCollider * aabb)
{
	bool collision = false;

	float squaredDistance = SquaredDistancePointAabb(aabb);
	float radiusSquared = (this->radius*this->radius);
	if (squaredDistance <= radiusSquared) // if squared distance between aabb and sphere center is closer than squared radius of spheres
		collision = true;


	return collision;
}

float SphereCollider::SquaredDistancePointAabb(AABBCollider * aabb)
{
	float squaredDistance = 0;
	const glm::vec3 minPos = aabb->getMinPos();
	const glm::vec3 maxPos = aabb->getMaxPos();

	squaredDistance += closestDistanceAabbToCenter(this->pos.x, minPos.x, maxPos.x);
	squaredDistance += closestDistanceAabbToCenter(this->pos.y, minPos.y, maxPos.y);
	squaredDistance += closestDistanceAabbToCenter(this->pos.z, minPos.z, maxPos.z);

	return squaredDistance;
}

float SphereCollider::closestDistanceAabbToCenter(const float& point, const float aabbMin, const float aabbMax)
{
	float val = 0;
	float returnValue = 0;
	if (point < aabbMin)
	{
		val = (aabbMin - point);
		returnValue = val* val;
	}
	if (point > aabbMax)
	{
		val = (point - aabbMax);
		returnValue = val*val;
	}
	return returnValue;
}

//overrides
unsigned int SphereCollider::getID() const
{
	return this->ID;
}

unsigned int SphereCollider::getIDTransform() const
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
	return this->radius*this->radius;
}

void SphereCollider::setPos(glm::vec3 pos)
{
	this->pos = pos;
}

void SphereCollider::setRadius(float radius)
{
	this->radius = radius;
}