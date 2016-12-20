#include "OBBColllider.h"



OBBColllider::OBBColllider() : HitBox()
{
	this->pos = glm::vec3(0, 0, 0);
	this->xAxis = glm::vec3(1,0,0);
	this->yAxis = glm::vec3(0, 1, 0);
	this->zAxis = glm::vec3(0, 0, 1);
	this->halfLengths = glm::vec3(1, 1, 1);
}

OBBColllider::OBBColllider(int transformID) : HitBox(transformID)
{
	this->pos = glm::vec3(0, 0, 0);
	this->xAxis = glm::vec3(1, 0, 0);
	this->yAxis = glm::vec3(0, 1, 0);
	this->zAxis = glm::vec3(0, 0, 1);
	this->halfLengths = glm::vec3(1, 1, 1);
}

OBBColllider::OBBColllider(glm::vec3 pos, float xHalfLength, float yHalfLength, float zHalfLength) : HitBox()
{
	this->pos = pos;
	this->xAxis = glm::vec3(1,0,0);
	this->yAxis = glm::vec3(0, 1, 0);
	this->zAxis = glm::vec3(0, 0, 1);
	this->halfLengths = glm::vec3(xHalfLength,yHalfLength,zHalfLength);
}

OBBColllider::OBBColllider(int transformID, float xHalfLength, float yHalfLength, float zHalfLength) : HitBox(transformID)
{
	this->pos = glm::vec3(0, 0, 0);
	this->xAxis = glm::vec3(1, 0, 0);
	this->yAxis = glm::vec3(0, 1, 0);
	this->zAxis = glm::vec3(0, 0, 1);
	this->halfLengths = glm::vec3(xHalfLength, yHalfLength, zHalfLength);
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
	this->halfLengths.x = xHalfLength;
	this->halfLengths.y = yHalfLength;
	this->halfLengths.z = zHalfLength;
}

void OBBColllider::setXHalfLength(float length)
{
	this->halfLengths.x = length;
}

void OBBColllider::setYHalfLength(float length)
{
	this->halfLengths.y = length;
}

void OBBColllider::setZHalfLength(float length)
{
	this->halfLengths.z = length;
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
	// OBB A and OBB B does not intersect if and only if a separating axis exists.
	// If a separating line exists, then the two OBB do not intersect, otherwise they intersect
	// Note we only need to find a single separating line to know they dont intersect
	// 15 cases. If any separating line is found they do not collide, and we stop checking
	//if no separating line is found in any of the 15 cases, they collide
	bool collisionBool = false;
	// OTHER COLLIDER VARIABLES
	glm::vec3 bXAxis = collider->xAxis;
	glm::vec3 bYAxis = collider->yAxis;
	glm::vec3 bZAxis = collider->zAxis;
	glm::vec3 bPos = collider->pos;
	glm::vec3 T = collider->pos - this->pos; // b - a
	glm::vec3 BHalfLengths = collider->halfLengths;

	// 15 possible separating axes
	glm::vec3 separatingAxes[15]; // L
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
	dots[0][0] = glm::dot(xAxis, bYAxis);
	dots[0][0] = glm::dot(xAxis, bZAxis);
	dots[0][0] = glm::dot(yAxis, bXAxis);
	dots[0][0] = glm::dot(yAxis, bYAxis);
	dots[0][0] = glm::dot(yAxis, bZAxis);
	dots[0][0] = glm::dot(zAxis, bXAxis);
	dots[0][0] = glm::dot(zAxis, bYAxis);
	dots[0][0] = glm::dot(zAxis, bZAxis);

	// CASE 1
	float a, b, c, d;
	a = b = c = d = 0;

	a = glm::abs(glm::dot(T, separatingAxes[0]));
	b = (glm::abs(halfLengths.x * glm::dot(xAxis, xAxis)) + glm::abs(halfLengths.y * glm::dot(yAxis, xAxis)) +
		glm::abs(halfLengths.z * glm::dot(zAxis, xAxis)) + glm::abs(halfLengths.x * glm::dot(bYAxis, xAxis)) +
		glm::abs(BHalfLengths.y * glm::dot(bYAxis, xAxis)) + glm::abs(BHalfLengths.z * glm::dot(bZAxis, xAxis)));
	
	c = glm::abs(halfLengths.x) + glm::abs(BHalfLengths.x * glm::dot(bXAxis, xAxis) + glm::abs(BHalfLengths.z * glm::dot(bZAxis, xAxis)));
	d = halfLengths.x + glm::abs(BHalfLengths.x * dots[0][0]) + glm::abs(BHalfLengths.y * dots[0][1]) + glm::abs(BHalfLengths.z * dots[0][2]);

	collisionBool = a > b;


	return collisionBool;
}
