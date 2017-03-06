#include "RayCollider.h"


namespace Collisions
{
	RayCollider::RayCollider() : HitBox()
	{
		this->position = glm::vec3(0, 0, 0);
		this->direction = glm::vec3(1, 0, 0);

		this->intersectionPoint = glm::vec3(0, 0, 0);
		this->hitDistance = -1;
		this->typeFlag = FLAG;
	}

	RayCollider::RayCollider(const glm::vec3 & position, const glm::vec3 & direction) : HitBox()
	{
		this->position = position;
		this->direction = glm::normalize(direction);

		this->intersectionPoint = glm::vec3(0, 0, 0);
		this->hitDistance = -1;
		this->typeFlag = FLAG;
	}

	RayCollider::RayCollider(const int & IDTransform, const glm::vec3 & direction) : HitBox(IDTransform)
	{
		this->position = glm::vec3(0, 0, 0);
		this->direction = direction;

		this->intersectionPoint = glm::vec3(0, 0, 0);
		this->hitDistance = -1;
		this->typeFlag = FLAG;
	}


	RayCollider::~RayCollider()
	{
	}

	void RayCollider::setPosition(const glm::vec3 & position)
	{
		this->position = position;
	}

	void RayCollider::setDirection(const glm::vec3 & direction)
	{
		this->direction = glm::normalize(direction);
	}

	void RayCollider::hit(const glm::vec3 & intersectionPoint, const float & hitDistance)
	{
		this->colliding = true;
		this->intersectionPoint = intersectionPoint;
		this->hitDistance = hitDistance;
	}
	void RayCollider::clearHitData()
	{
		this->hitDistance = -1;
		this->intersectionPoint = glm::vec3(0, 0, 0);
	}

	void RayCollider::clear()
	{
		this->clearCollisionIDs();
		this->clearHitData();
		this->colliding = false;
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

	std::vector<int>* RayCollider::getIDCollisionsRef()
	{
		return &this->IDCollisions;
	}

	void RayCollider::setIDTransform(const unsigned int & ID)
	{
		this->IDTransform = ID;
	}

	void RayCollider::setID(const unsigned int & ID)
	{
		this->ID = ID;
	}

}