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

void OBBColllider::setSize(glm::vec3 size)
{
	this->halfLengths = size;
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
	bool collisionBool = true;
	int indexOfVec3 = 3;
	int separatingAxisCounter = 0;
	// OTHER COLLIDER VARIABLES
	glm::vec3 bXAxis = collider->xAxis;
	glm::vec3 bYAxis = collider->yAxis;
	glm::vec3 bZAxis = collider->zAxis;
	glm::vec3 bPos = collider->pos;
	glm::vec3 T = collider->pos - this->pos; // b - a
	glm::vec3 BHalfLengths = collider->halfLengths;

	// 15 possible separating axes
	glm::vec3 separatingAxes[6]; // L
	separatingAxes[0] = this->xAxis;
	separatingAxes[1] = this->yAxis;
	separatingAxes[2] = this->zAxis;

	separatingAxes[3] = bXAxis;
	separatingAxes[4] = bYAxis;
	separatingAxes[5] = bZAxis;

	//separatingAxes[6] = glm::cross(this->xAxis,bXAxis); // these separating axis are never used in the calculations
	//separatingAxes[7] = glm::cross(this->xAxis,bYAxis); // but can be used to undestand which separating axis is being checked in each case
	//separatingAxes[8] = glm::cross(this->xAxis, bZAxis);

	//separatingAxes[9] = glm::cross(this->yAxis, bXAxis);
	//separatingAxes[10] = glm::cross(this->yAxis, bYAxis);
	//separatingAxes[11] = glm::cross(this->yAxis, bZAxis);

	//separatingAxes[12] = glm::cross(this->zAxis, bXAxis);
	//separatingAxes[13] = glm::cross(this->zAxis, bYAxis);
	//separatingAxes[14] = glm::cross(this->zAxis, bZAxis);

	// dot products
	float dots[3][3];
	dots[0][0] = glm::dot(xAxis,bXAxis);
	dots[0][1] = glm::dot(xAxis, bYAxis);
	dots[0][2] = glm::dot(xAxis, bZAxis);
	dots[1][0] = glm::dot(yAxis, bXAxis);
	dots[1][1] = glm::dot(yAxis, bYAxis);
	dots[1][2] = glm::dot(yAxis, bZAxis);
	dots[2][0] = glm::dot(zAxis, bXAxis);
	dots[2][1] = glm::dot(zAxis, bYAxis);
	dots[2][2] = glm::dot(zAxis, bZAxis);

	// CASE 1
	float lengthProjection, hitboxProjection;
	lengthProjection = hitboxProjection = 0;

	
	for (size_t i = 0; i < indexOfVec3; i++) // case 1-3
	{
		lengthProjection = glm::abs(glm::dot(T, separatingAxes[separatingAxisCounter++]));
		hitboxProjection = halfLengths[0] + glm::abs(BHalfLengths.x * dots[i][0] + glm::abs(BHalfLengths.y * dots[i][1]) + glm::abs(BHalfLengths.z * dots[i][2]));
		if (lengthProjection > hitboxProjection) // if we found a separating line
			return false;
	}
	
	for (size_t i = 0; i < indexOfVec3; i++) // case 4-6
	{
		lengthProjection = glm::abs(glm::dot(T, separatingAxes[separatingAxisCounter++]));
		hitboxProjection = glm::abs(halfLengths.x * dots[0][i]) + glm::abs(halfLengths.y * dots[1][i]) + glm::abs(halfLengths.z * dots[2][i]) + BHalfLengths[i];
		if (lengthProjection > hitboxProjection) // if we found a separating line
			return false;
	}

	//case 7
	lengthProjection = glm::abs((glm::dot(T, zAxis)* dots[1][0]) - (glm::dot(T, yAxis) * dots[2][0]));
	hitboxProjection = glm::abs(halfLengths.y*dots[2][0]) + glm::abs(halfLengths.z*dots[1][0]) + glm::abs(BHalfLengths.y*dots[0][2]) + glm::abs(BHalfLengths.z * dots[0][1]);
	if (lengthProjection > hitboxProjection) // if we found a separating line
		return false;

	// case 8
	lengthProjection = glm::abs((glm::dot(T, zAxis)* dots[1][1]) - (glm::dot(T, yAxis) * dots[2][1]));
	hitboxProjection = glm::abs(halfLengths.y*dots[2][1]) + glm::abs(halfLengths.z*dots[1][1]) + glm::abs(BHalfLengths.x*dots[0][2]) + glm::abs(BHalfLengths.z * dots[0][0]);
	if (lengthProjection > hitboxProjection) // if we found a separating line
		return false;

	// case 9
	lengthProjection = glm::abs((glm::dot(T, zAxis)* dots[1][2]) - (glm::dot(T, yAxis) * dots[2][2]));
	hitboxProjection = glm::abs(halfLengths.y*dots[2][2]) + glm::abs(halfLengths.z*dots[1][2]) + glm::abs(BHalfLengths.x*dots[0][1]) + glm::abs(BHalfLengths.y * dots[0][0]);
	if (lengthProjection > hitboxProjection) // if we found a separating line
		return false;

	// case 10
	lengthProjection = glm::abs((glm::dot(T, xAxis)* dots[2][0]) - (glm::dot(T, zAxis) * dots[0][0]));
	hitboxProjection = glm::abs(halfLengths.x*dots[2][0]) + glm::abs(halfLengths.z*dots[0][0]) + glm::abs(BHalfLengths.y*dots[1][2]) + glm::abs(BHalfLengths.z * dots[1][1]);
	if (lengthProjection > hitboxProjection) // if we found a separating line
		return false;

	// case 11
	lengthProjection = glm::abs((glm::dot(T, xAxis)* dots[2][1]) - (glm::dot(T, zAxis) * dots[0][1]));
	hitboxProjection = glm::abs(halfLengths.x*dots[2][1]) + glm::abs(halfLengths.z*dots[0][1]) + glm::abs(BHalfLengths.x*dots[1][2]) + glm::abs(BHalfLengths.z * dots[1][0]);
	if (lengthProjection > hitboxProjection) // if we found a separating line
		return false;

	// case 12
	lengthProjection = glm::abs((glm::dot(T, xAxis)* dots[2][2]) - (glm::dot(T, zAxis) * dots[0][2]));
	hitboxProjection = glm::abs(halfLengths.x*dots[2][2]) + glm::abs(halfLengths.z*dots[0][2]) + glm::abs(BHalfLengths.x*dots[1][1]) + glm::abs(BHalfLengths.y * dots[1][0]);
	if (lengthProjection > hitboxProjection) // if we found a separating line
		return false;

	// case 13
	lengthProjection = glm::abs((glm::dot(T, yAxis)* dots[0][0]) - (glm::dot(T, xAxis) * dots[1][0]));
	hitboxProjection = glm::abs(halfLengths.x*dots[1][0]) + glm::abs(halfLengths.y*dots[0][0]) + glm::abs(BHalfLengths.y*dots[2][2]) + glm::abs(BHalfLengths.z * dots[2][1]);
	if (lengthProjection > hitboxProjection) // if we found a separating line
		return false;

	// case 14
	lengthProjection = glm::abs((glm::dot(T, yAxis)* dots[0][1]) - (glm::dot(T, xAxis) * dots[1][1]));
	hitboxProjection = glm::abs(halfLengths.x*dots[1][1]) + glm::abs(halfLengths.y*dots[0][1]) + glm::abs(BHalfLengths.x*dots[2][2]) + glm::abs(BHalfLengths.z * dots[2][0]);
	if (lengthProjection > hitboxProjection) // if we found a separating line
		return false;

	// case 15
	lengthProjection = glm::abs((glm::dot(T, yAxis)* dots[0][2]) - (glm::dot(T, xAxis) * dots[1][2]));
	hitboxProjection = glm::abs(halfLengths.x*dots[1][2]) + glm::abs(halfLengths.y*dots[0][2]) + glm::abs(BHalfLengths.x*dots[2][1]) + glm::abs(BHalfLengths.y * dots[2][0]);
	if (lengthProjection > hitboxProjection) // if we found a separating line
		return false;

	return collisionBool;
}
