#include "AABBCollider.h"

namespace Collisions
{

	AABBCollider::AABBCollider() : HitBox()
	{
		this->minPos = glm::vec3(-1, -1, -1);
		this->maxPos = glm::vec3(1, 1, 1);
		this->pos = glm::vec3();
		this->maxPosTotal = glm::vec3();
		this->minPosTotal = glm::vec3();
		this->typeFlag = FLAG;
	}

	AABBCollider::AABBCollider(int IDTransform) : HitBox(IDTransform)
	{
		this->minPos = glm::vec3(-1, -1, -1);
		this->maxPos = glm::vec3(1, 1, 1);
		this->pos = glm::vec3();
		this->maxPosTotal = glm::vec3();
		this->minPosTotal = glm::vec3();
		this->typeFlag = FLAG;
	}

	AABBCollider::AABBCollider(int IDTransform, glm::vec3 minPos, glm::vec3 maxPos) : HitBox(IDTransform)
	{
		this->minPos = minPos;
		this->maxPos = maxPos;
		this->minPosTotal = minPos;
		this->maxPosTotal = maxPos;
		this->pos = glm::vec3();
		this->typeFlag = FLAG;
	}

	AABBCollider::AABBCollider(glm::vec3 minPos, glm::vec3 maxPos, glm::vec3 centerPos) : HitBox()
	{
		this->minPos = minPos;
		this->maxPos = maxPos;
		this->pos = centerPos;
		this->minPosTotal = minPos + this->pos;
		this->maxPosTotal = maxPos + this->pos;
		this->typeFlag = FLAG;

	}


	AABBCollider::~AABBCollider()
	{
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

	const glm::vec3 & AABBCollider::getMaxPosLocal() const
	{
		return this->maxPos;
	}

	const glm::vec3 & AABBCollider::getMinPosLocal() const
	{
		return this->minPos;
	}

	const glm::vec3 & AABBCollider::getCenterPos() const
	{
		return this->pos;
	}

	int AABBCollider::getID() const
	{
		return this->ID;
	}

	int AABBCollider::getIDTransform() const
	{
		return this->IDTransform;
	}

	std::vector<int>* AABBCollider::getIDCollisionsRef()
	{
		return &this->IDCollisions;
	}

	void AABBCollider::setPos(glm::vec3 pos)
	{
		HitBox::setPos(pos);
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

	glm::vec3 AABBCollider::getPositiveVertex(const glm::vec3 & normal)
	{
		glm::vec3 positiveVertex = this->minPosTotal; // Should this be in world space or aabb local space?

		if (normal.x >= 0)
			positiveVertex.x = this->maxPosTotal.x;
		if (normal.y >= 0)
			positiveVertex.y = this->maxPosTotal.y;
		if (normal.z >= 0)
			positiveVertex.z = this->maxPosTotal.z;
		return positiveVertex;
	}

	glm::vec3 AABBCollider::getNegativeVertex(const glm::vec3 & normal)
	{
		glm::vec3 negativeVertex = this->maxPosTotal;

		if (normal.x >= 0)
			negativeVertex.x = this->minPosTotal.x;
		if (normal.y >= 0)
			negativeVertex.y = this->minPosTotal.y;
		if (normal.z >= 0)
			negativeVertex.z = this->minPosTotal.z;

		return negativeVertex;
	}
}