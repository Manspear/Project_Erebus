#include "SphereCollider.h"


namespace Collisions
{
	SphereCollider::SphereCollider() : HitBox(-1, -1)
	{
		this->radius = 1.0f;
		this->pos = glm::vec3(0, 0, 0);
		this->radiusSquared = radius*radius;
		this->typeFlag = FLAG;
	}

	SphereCollider::SphereCollider(const glm::vec3 & pos, const float & radius) : HitBox()
	{
		this->pos = pos;
		this->radius = radius;
		this->radiusSquared = radius*radius;
		this->typeFlag = FLAG;
	}

	SphereCollider::SphereCollider(const int & IDTransform, const glm::vec3 & pos, const float & radius) : HitBox(IDTransform)
	{
		this->pos = pos;
		this->radius = radius;
		this->radiusSquared = radius*radius;
		this->typeFlag = FLAG;
	}

	SphereCollider::SphereCollider(const int & IDTransform, const float & x, const float & y, const float & z, const float & radius) : HitBox(ID, IDTransform)
	{
		this->pos.x = x;
		this->pos.y = y;
		this->pos.z = z;
		this->radius = radius;
		this->radiusSquared = radius*radius;
		this->typeFlag = FLAG;
	}

	SphereCollider::SphereCollider(const int & IDTransform) : HitBox(IDTransform)
	{
		this->radius = 1.0f;
		this->pos = glm::vec3(0, 0, 0);
		this->radiusSquared = radius*radius;
		this->typeFlag = FLAG;
	}


	SphereCollider::~SphereCollider()
	{
	}

	//overrides
	int SphereCollider::getID() const
	{
		return this->ID;
	}

	int SphereCollider::getIDTransform() const
	{
		return this->IDTransform;
	}

	std::vector<int>* SphereCollider::getIDCollisionsRef()
	{
		return &this->IDCollisions;
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

	void SphereCollider::setRadius(const float & radius)
	{
		this->radius = radius;
		this->radiusSquared = radius*radius;
	}

}