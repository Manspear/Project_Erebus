#include "CollisionChecker.h"



CollisionChecker::CollisionChecker()
{
}


CollisionChecker::~CollisionChecker()
{
}

bool CollisionChecker::collisionCheck(SphereCollider * sphere1, SphereCollider * sphere2)
{
	this->sphereCollisionCounter++;
	bool collision = false;

	glm::vec3 distanceVector = sphere1->getPos() - sphere2->getPos();
	float distanceSquared = glm::dot(distanceVector, distanceVector); // dot with itself = length^2

	float radiusSquared = (sphere1->getRadius() + sphere2->getRadius());
	radiusSquared *= radiusSquared;

	//if distance squared is less than radius squared = collision
	if (distanceSquared <= radiusSquared)
		collision = true;


	return collision;
}

bool CollisionChecker::collisionCheck(AABBCollider* aabb1, AABBCollider* aabb2)
{
	this->aabbCollisionCounter++;
	const glm::vec3 minPos1 = aabb1->getMinPos();
	const glm::vec3 maxPos1 = aabb1->getMaxPos();

	const glm::vec3 minPos2 = aabb2->getMinPos();
	const glm::vec3 maxPos2 = aabb2->getMaxPos();


	return (maxPos1.x >= minPos2.x &&
		minPos1.x <= maxPos2.x &&
		maxPos1.y >= minPos2.y &&
		minPos1.y <= maxPos2.y &&
		maxPos1.z >= minPos2.z &&
		minPos1.z <= maxPos2.z);
}

bool CollisionChecker::collisionCheck(SphereCollider * sphere, AABBCollider * aabb)
{
	this->sphereToAabbCollisionCounter++;
	bool collision = false;

	float squaredDistance = SquaredDistancePointToAabb(aabb, sphere);
	float radiusSquared = sphere->getRadiusSquared();
	if (squaredDistance <= radiusSquared) // if squared distance between aabb and sphere center is closer than squared radius of spheres
		collision = true;


	return collision;
}

bool CollisionChecker::collisionCheck(OBBCollider* collider, OBBCollider* collider2)
{
	this->obbCollisionCounter++;
	// OBB A and OBB B does not intersect if and only if a separating axis exists.
	// If a separating line exists, then the two OBB do not intersect, otherwise they intersect
	// Note we only need to find a single separating line to know they dont intersect
	// 15 cases. If any separating line is found they do not collide, and we stop checking
	//if no separating line is found in any of the 15 cases, they collide
	bool collisionBool = true;
	int indexOfVec3 = 3;
	int separatingAxisCounter = 0;

	//Collider1
	glm::vec3 xAxis = collider->getXAxis();
	glm::vec3 yAxis = collider->getYAxis();
	glm::vec3 zAxis = collider->getZAxis();
	glm::vec3 pos = collider->getPos();
	glm::vec3 halfLengths = collider->getHalfLengths();

	// Collider2
	glm::vec3 bXAxis = collider2->getXAxis();
	glm::vec3 bYAxis = collider2->getYAxis();
	glm::vec3 bZAxis = collider2->getZAxis();
	glm::vec3 bPos = collider2->getPos();
	glm::vec3 T = bPos - pos; // b - a
	glm::vec3 BHalfLengths = collider2->getHalfLengths();

	// 15 possible separating axes
	glm::vec3 separatingAxes[6]; // L
	separatingAxes[0] = xAxis;
	separatingAxes[1] = yAxis;
	separatingAxes[2] = zAxis;

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
	dots[0][0] = glm::dot(xAxis, bXAxis);
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

bool CollisionChecker::collisionCheck(OBBCollider * collider, AABBCollider * collider2)
{
	this->obbToAabbCollisionCounter++;
	// OBB A and OBB B does not intersect if and only if a separating axis exists.
	// If a separating line exists, then the two OBB do not intersect, otherwise they intersect
	// Note we only need to find a single separating line to know they dont intersect
	// 15 cases. If any separating line is found they do not collide, and we stop checking
	//if no separating line is found in any of the 15 cases, they collide
	bool collisionBool = true;
	int indexOfVec3 = 3;
	int separatingAxisCounter = 0;

	//Collider1
	glm::vec3 xAxis = collider->getXAxis();
	glm::vec3 yAxis = collider->getYAxis();
	glm::vec3 zAxis = collider->getZAxis();
	glm::vec3 pos = collider->getPos();
	glm::vec3 halfLengths = collider->getHalfLengths();

	// Collider2
	glm::vec3 bXAxis = glm::vec3(1,0,0);
	glm::vec3 bYAxis = glm::vec3(0, 1, 0);
	glm::vec3 bZAxis = glm::vec3(0, 0, 1);
	glm::vec3 BHalfLengths = (collider2->getMaxPos() - collider2->getMinPos()).operator/=(2);
	glm::vec3 bPos = collider2->getMinPos() + BHalfLengths;
	glm::vec3 T = bPos - pos; // b - a

	// 15 possible separating axes
	glm::vec3 separatingAxes[6]; // L
	separatingAxes[0] = xAxis;
	separatingAxes[1] = yAxis;
	separatingAxes[2] = zAxis;

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
	dots[0][0] = glm::dot(xAxis, bXAxis);
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

bool CollisionChecker::collisionCheck(OBBCollider * obb, SphereCollider * sphere)
{
	const glm::vec3 sphereCenter = sphere->getPos();
	float sphereRadius = sphere->getRadius();
	float sphereRadiusSquared = sphere->getRadiusSquared();

	glm::vec3 v = closestPointOnOBB(obb, sphereCenter) - sphereCenter;
	float vSquared = glm::dot(v, v);
	return glm::dot(v,v) <= sphereRadiusSquared;
}

float CollisionChecker::closestDistanceAabbToPoint(const float & point, const float aabbMin, const float aabbMax)
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

float CollisionChecker::SquaredDistancePointToAabb(AABBCollider* aabb, SphereCollider* sphere)
{
	float squaredDistance = 0;
	const glm::vec3 minPos = aabb->getMinPos();
	const glm::vec3 maxPos = aabb->getMaxPos();
	const glm::vec3 spherePos = sphere->getPos();

	squaredDistance += closestDistanceAabbToPoint(spherePos.x, minPos.x, maxPos.x);
	squaredDistance += closestDistanceAabbToPoint(spherePos.y, minPos.y, maxPos.y);
	squaredDistance += closestDistanceAabbToPoint(spherePos.z, minPos.z, maxPos.z);

	return squaredDistance;
}

glm::vec3 CollisionChecker::closestPointOnOBB(OBBCollider* collider, const glm::vec3& point) const
{
	glm::vec3 returnPoint;
	glm::vec3 halfLengths = collider->getHalfLengths();
	glm::vec3 xAxis = collider->getXAxis();
	glm::vec3 yAxis = collider->getYAxis();
	glm::vec3 zAxis = collider->getZAxis();

	glm::vec3 d = point - collider->getPos();
	returnPoint = collider->getPos();

	float distance = glm::dot(d,xAxis);
	if (distance > halfLengths.x)
		distance = halfLengths.x;
	if (distance < -halfLengths.x)
		distance = -halfLengths.x;
	returnPoint += distance * xAxis;

	distance = glm::dot(d, yAxis);
	if (distance > halfLengths.y)
		distance = halfLengths.y;
	if (distance < -halfLengths.y)
		distance = -halfLengths.y;
	returnPoint += distance * yAxis;

	distance = glm::dot(d, zAxis);
	if (distance > halfLengths.z)
		distance = halfLengths.z;
	if (distance < -halfLengths.z)
		distance = -halfLengths.z;
	returnPoint += distance * zAxis;

	return returnPoint;
}

void CollisionChecker::resetCounters()
{
	this->sphereCollisionCounter = 0;
	this->aabbCollisionCounter = 0;
	this->sphereToAabbCollisionCounter = 0;
	this->obbCollisionCounter = 0;
	this->obbToAabbCollisionCounter = 0;
	this->obbToSphereCollisionCounter = 0;
}

// Getters
int CollisionChecker::getSphereCollisionCounter()
{
	return this->sphereCollisionCounter;
}

int CollisionChecker::getAabbCollisionCounter()
{
	return this->aabbCollisionCounter;
}

int CollisionChecker::getSphereToAabbCollisionCounter()
{
	return this->sphereToAabbCollisionCounter;
}

int CollisionChecker::getObbCollisionCounter()
{
	return this->obbCollisionCounter;
}

int CollisionChecker::getObbToAabbCollisionCounter()
{
	return this->obbToAabbCollisionCounter;
}

int CollisionChecker::getObbToSphereCollisionCounter()
{
	return this->obbToSphereCollisionCounter;
}

int CollisionChecker::getCollisionCounter()
{
	return this->sphereCollisionCounter + this->aabbCollisionCounter
		+ this->sphereToAabbCollisionCounter + obbCollisionCounter
		+ obbToAabbCollisionCounter + obbToSphereCollisionCounter;
}
