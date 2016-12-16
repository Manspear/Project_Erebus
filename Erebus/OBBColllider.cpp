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

void OBBColllider::rotateAroundX(float radianAngle)
{
	this->xAxis = glm::rotateX(this->xAxis, radianAngle);
	this->yAxis = glm::rotateX(this->yAxis, radianAngle);
	this->zAxis = glm::rotateX(this->zAxis, radianAngle);
}

void OBBColllider::rotateAroundY(float radianAngle)
{
	this->xAxis = glm::rotateY(this->xAxis, radianAngle);
	this->yAxis = glm::rotateY(this->yAxis, radianAngle);
	this->zAxis = glm::rotateY(this->zAxis, radianAngle);
}

void OBBColllider::rotateAroundZ(float radianAngle)
{
	this->xAxis = glm::rotateZ(this->xAxis, radianAngle);
	this->yAxis = glm::rotateZ(this->yAxis, radianAngle);
	this->zAxis = glm::rotateZ(this->zAxis, radianAngle);
}

void OBBColllider::setSize(float xHalfLength, float yHalfLength, float zHalfLength)
{
	this->xHalfLength = xHalfLength;
	this->yHalfLength = yHalfLength;
	this->zHalfLength = zHalfLength;
}

void OBBColllider::setXHalfLength(float length)
{
	this->xHalfLength = length;
}

void OBBColllider::setYHalfLength(float length)
{
	this->yHalfLength = length;
}

void OBBColllider::setZHalfLength(float length)
{
	this->zHalfLength = length;
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

bool OBBColllider::checkCollision(OBBColllider * collider)
{
	bool collision = false;
	// OTHER COLLIDER VARIABLES
	glm::vec3 bXAxis = collider->xAxis;
	glm::vec3 bYAxis = collider->yAxis;
	glm::vec3 bZAxis = collider->zAxis;
	glm::vec3 bPos = collider->pos;
	glm::vec3 T = collider->pos - this->pos; // b - a
	float bXHalfLength = collider->xHalfLength;
	float bYHalfLength = collider->yHalfLength;
	float bZHalfLength = collider->zHalfLength;

	// 15 possible separating axes
	glm::vec3 separatingAxes[15];
	separatingAxes[0] = this->xAxis;
	separatingAxes[1] = this->yAxis;
	separatingAxes[2] = this->zAxis;

	separatingAxes[3] = bXAxis;
	separatingAxes[4] = bYAxis;
	separatingAxes[5] = bZAxis;

	separatingAxes[6] = glm::cross(this->xAxis,bXAxis);
	separatingAxes[7] = glm::cross(this->xAxis,bYAxis);
	separatingAxes[8] = glm::cross(this->xAxis, bZAxis);

	separatingAxes[9] = glm::cross(this->yAxis, bXAxis);
	separatingAxes[10] = glm::cross(this->yAxis, bYAxis);
	separatingAxes[11] = glm::cross(this->yAxis, bZAxis);

	separatingAxes[12] = glm::cross(this->zAxis, bXAxis);
	separatingAxes[13] = glm::cross(this->zAxis, bYAxis);
	separatingAxes[14] = glm::cross(this->zAxis, bZAxis);

	// dot products
	float dots[3][3];
	dots[0][0] = glm::dot(xAxis,bXAxis);


	// CASE 1




	return collision;
}
