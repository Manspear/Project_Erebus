#include "OBBCollider.h"

namespace Collisions
{

	OBBCollider::OBBCollider() : HitBox()
	{
		this->pos = glm::vec3(0, 0, 0);
		this->xAxis = glm::vec3(1, 0, 0);
		this->yAxis = glm::vec3(0, 1, 0);
		this->zAxis = glm::vec3(0, 0, 1);
		this->halfLengths = glm::vec3(1, 1, 1);
		this->typeFlag = FLAG;
	}

	OBBCollider::OBBCollider(int transformID) : HitBox(transformID)
	{
		this->pos = glm::vec3(0, 0, 0);
		this->xAxis = glm::vec3(1, 0, 0);
		this->yAxis = glm::vec3(0, 1, 0);
		this->zAxis = glm::vec3(0, 0, 1);
		this->halfLengths = glm::vec3(1, 1, 1);
		this->typeFlag = FLAG;
	}

	OBBCollider::OBBCollider(glm::vec3 pos, float xHalfLength, float yHalfLength, float zHalfLength) : HitBox()
	{
		this->pos = pos;
		this->xAxis = glm::vec3(1, 0, 0);
		this->yAxis = glm::vec3(0, 1, 0);
		this->zAxis = glm::vec3(0, 0, 1);
		this->halfLengths = glm::vec3(xHalfLength, yHalfLength, zHalfLength);
		this->typeFlag = FLAG;
	}

	OBBCollider::OBBCollider(int transformID, float xHalfLength, float yHalfLength, float zHalfLength) : HitBox(transformID)
	{
		this->pos = glm::vec3(0, 0, 0);
		this->xAxis = glm::vec3(1, 0, 0);
		this->yAxis = glm::vec3(0, 1, 0);
		this->zAxis = glm::vec3(0, 0, 1);
		this->halfLengths = glm::vec3(xHalfLength, yHalfLength, zHalfLength);
		this->typeFlag = FLAG;
	}


	OBBCollider::~OBBCollider()
	{
	}

	void OBBCollider::rotateAroundX(float radianAngle)
	{
		this->xAxis = glm::rotateX(this->xAxis, radianAngle);
		this->yAxis = glm::rotateX(this->yAxis, radianAngle);
		this->zAxis = glm::rotateX(this->zAxis, radianAngle);
	}

	void OBBCollider::rotateAroundY(float radianAngle)
	{
		this->xAxis = glm::rotateY(this->xAxis, radianAngle);
		this->yAxis = glm::rotateY(this->yAxis, radianAngle);
		this->zAxis = glm::rotateY(this->zAxis, radianAngle);
	}

	void OBBCollider::rotateAroundZ(float radianAngle)
	{
		this->xAxis = glm::rotateZ(this->xAxis, radianAngle);
		this->yAxis = glm::rotateZ(this->yAxis, radianAngle);
		this->zAxis = glm::rotateZ(this->zAxis, radianAngle);
	}

	void OBBCollider::setSize(float xHalfLength, float yHalfLength, float zHalfLength)
	{
		this->halfLengths.x = xHalfLength / 2;
		this->halfLengths.y = yHalfLength / 2;
		this->halfLengths.z = zHalfLength / 2;
	}

	void OBBCollider::setSize(glm::vec3 size)
	{
		this->halfLengths = size;
	}

	void OBBCollider::setXHalfLength(float length)
	{
		this->halfLengths.x = length;
	}

	void OBBCollider::setYHalfLength(float length)
	{
		this->halfLengths.y = length;
	}

	void OBBCollider::setZHalfLength(float length)
	{
		this->halfLengths.z = length;
	}

	void OBBCollider::setXAxis(glm::vec3 xAxis)
	{
		this->xAxis = glm::normalize(xAxis);
		if (xAxis != glm::vec3(0, 1, 0))
			this->zAxis = glm::normalize(glm::cross(xAxis, glm::vec3(0, 1, 0)));
		else
			this->zAxis = glm::normalize(glm::cross(xAxis, glm::vec3(1, 0, 0)));

		this->yAxis = glm::normalize(glm::cross(xAxis, zAxis));
	}

	void OBBCollider::setYAxis(glm::vec3 yAxis)
	{
		this->yAxis = glm::normalize(yAxis);
		if (yAxis != glm::vec3(0, 1, 0))
			this->zAxis = glm::normalize(glm::cross(yAxis, glm::vec3(0, 1, 0)));
		else
			this->zAxis = glm::normalize(glm::cross(yAxis, glm::vec3(1, 0, 0)));

		this->xAxis = glm::normalize(glm::cross(yAxis, zAxis));
	}

	void OBBCollider::setZAxis(glm::vec3 zAxis)
	{
		this->zAxis = glm::normalize(zAxis);
		if (zAxis != glm::vec3(0, 1, 0))
			this->xAxis = glm::normalize(glm::cross(zAxis, glm::vec3(0, 1, 0)));
		else
			this->xAxis = glm::normalize(glm::cross(zAxis, glm::vec3(1, 0, 0)));

		this->yAxis = glm::normalize(glm::cross(zAxis, xAxis));
	}

	void OBBCollider::setAllAxis(glm::vec3 xAxis, glm::vec3 yAxis, glm::vec3 zAxis)
	{
		this->xAxis = glm::normalize(xAxis);
		this->yAxis = glm::normalize(yAxis);
		this->zAxis = glm::normalize(zAxis);
	}

	int OBBCollider::getID() const
	{
		return this->ID;
	}

	int OBBCollider::getIDTransform() const
	{
		return this->IDTransform;
	}

	std::vector<int>* OBBCollider::getIDCollisionsRef()
	{
		return &this->IDCollisions;
	}

	const glm::vec3& OBBCollider::getPos() const
	{
		return this->pos;
	}

	const glm::vec3& OBBCollider::getXAxis() const
	{
		return this->xAxis;
	}

	const glm::vec3& OBBCollider::getYAxis() const
	{
		return this->yAxis;
	}

	const glm::vec3& OBBCollider::getZAxis() const
	{
		return this->zAxis;
	}

	const glm::vec3& OBBCollider::getHalfLengths() const
	{
		return this->halfLengths;
	}
}