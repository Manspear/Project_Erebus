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


	for (int i = 0; i < indexOfVec3; i++) // case 1-3
	{
		lengthProjection = glm::abs(glm::dot(T, separatingAxes[separatingAxisCounter++]));
		hitboxProjection = halfLengths[0] + glm::abs(BHalfLengths.x * dots[i][0] + glm::abs(BHalfLengths.y * dots[i][1]) + glm::abs(BHalfLengths.z * dots[i][2]));
		if (lengthProjection > hitboxProjection) // if we found a separating line
			return false;
	}

	for (int i = 0; i < indexOfVec3; i++) // case 4-6
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


	for (int i = 0; i < indexOfVec3; i++) // case 1-3
	{
		lengthProjection = glm::abs(glm::dot(T, separatingAxes[separatingAxisCounter++]));
		hitboxProjection = halfLengths[0] + glm::abs(BHalfLengths.x * dots[i][0] + glm::abs(BHalfLengths.y * dots[i][1]) + glm::abs(BHalfLengths.z * dots[i][2]));
		if (lengthProjection > hitboxProjection) // if we found a separating line
			return false;
	}

	for (int i = 0; i < indexOfVec3; i++) // case 4-6
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
	this->obbToSphereCollisionCounter++;
	const glm::vec3 sphereCenter = sphere->getPos();
	float sphereRadius = sphere->getRadius();
	float sphereRadiusSquared = sphere->getRadiusSquared();

	glm::vec3 v = closestPointOnOBB(obb, sphereCenter) - sphereCenter;
	glm::vec3 v2 = closestPointOnOBB(obb, sphereCenter);
	float vSquared = glm::dot(v, v);
	return glm::dot(v,v) <= sphereRadiusSquared;
}

bool CollisionChecker::collisionCheck(RayCollider * ray, SphereCollider * sphere)
{
	this->rayToSphereCollisionCounter++;
	glm::vec3 rayDirection = ray->getDirection();
	glm::vec3 rayPosition = ray->getPosition();
	glm::vec3 spherePosition = sphere->getPos();
	float sphereRadiusSquared = sphere->getRadiusSquared();
	float hitDistance = 0.0f;
	glm::vec3 intersectionPoint;

	glm::vec3 m = rayPosition - spherePosition;
	float b = glm::dot(m, rayDirection);
	float c = glm::dot(m, m) - sphereRadiusSquared;

	if (c > 0.0f && b > 0.0f) // Exit if rays origin is outside sphere (c > 0) and ray pointing away from sphere (b > 0)
		return false;

	float discr = b*b - c;

	if (discr < 0.0f) // A negative discriminant corresponds to ray missing sphere
		return false;

	hitDistance = -b - glm::sqrt(discr);

	if (hitDistance < 0.0f) // if hitdistance is negative, ray started inside sphere so clamp t to zero
		hitDistance = 0.0f;

	intersectionPoint = rayPosition + (hitDistance * rayDirection);
	ray->hit(intersectionPoint, hitDistance);
	
	return true;
}

bool CollisionChecker::collisionCheck(RayCollider * ray, AABBCollider * aabb)
{
	this->rayToAabbCollisionCounter++;
	float epsilon = glm::epsilon<float>();
	float tmin = 0.0f;
	float tmax = std::numeric_limits<float>().max();
	glm::vec3 rayDirection = ray->getDirection();
	glm::vec3 rayPosition = ray->getPosition();
	glm::vec3 aabbMin = aabb->getMinPos();
	glm::vec3 aabbMax = aabb->getMaxPos();

	unsigned int threeSlabs = 3;

	for (unsigned int i = 0; i < threeSlabs; i++)
	{
		if (glm::abs(rayDirection[i]) < epsilon) // Ray is parallell to slab
		{
			if (rayPosition[i] < aabbMin[i] || rayPosition[i] > aabbMax[i]) // No hit if origin not inside slab
				return false;
		}
		else
		{
			// compute intersection t value of ray with near and far plane of slab
			float ood = 1.0f / rayDirection[i];
			float t1 = (aabbMin[i] - rayPosition[i]) * ood;
			float t2 = (aabbMax[i] - rayPosition[i]) * ood;

			if (t1 > t2) // Make sure t1 is the intersection with near plane and t2 with far plane
				swap<float>(t1, t2);

			if (t1 > tmin)
				tmin = t1;

			if (t2 < tmax) 
				tmax = t2;

			if (tmin > tmax) // furthest entry further away than closest exit. Exit function, no collision
				return false;
		}

	}

	// ray intersects all slabs, we have a hit. 
	// hitDistance is tmin and intersection point is (rayposition + raydirection * hitdistance)
	float hitdistance = tmin;
	if (tmin < 0)
		hitdistance = tmax;
	glm::vec3 intersectionPoint = rayPosition + (rayDirection * hitdistance);
	ray->hit(intersectionPoint, hitdistance);

	return true;
}

bool CollisionChecker::collisionCheck(RayCollider * ray, OBBCollider * obb)
{
	this->rayToObbCollisionCounter++;
	int parallel = 0;
	bool found = false;

	float dotA[3];
	float dotB[3];
	glm::vec3 m = obb->getPos() - ray->getPosition();

	glm::vec3 axes[3] = { obb->getXAxis(),obb->getYAxis(),obb->getZAxis() };
	glm::vec3 halfLengths = obb->getHalfLengths();
	glm::vec3 rayDirection = ray->getDirection();
	float epsilon = glm::epsilon<float>();
	float t[2]; // parametric points of intersection

	for (int i = 0; i < 3; i++)
	{
		dotA[i] = glm::dot(rayDirection,axes[i]);
		dotB[i] = glm::dot(m,axes[i]);

		if (glm::abs(dotA[i]) < epsilon)
		{
			parallel |= 1 << i;
		}
		else
		{
			float es = (dotA[i] > 0.0f) ? halfLengths[i] : -halfLengths[i];
			float invDotA = 1.0f / dotA[i];

			if (!found)
			{
				t[0] = (dotB[i] - es) * invDotA;
				t[1] = (dotB[i] + es) * invDotA;

				found = true;
			}
			else
			{
				float s = (dotB[i] - es) * invDotA;

				if (s > t[0])
					t[0] = s;

				s = (dotB[i] + es) * invDotA;

				if (s < t[1])
					t[1] = s;
				
				if (t[0] > t[1])
					return false;
			}
		}
	}

	if (parallel)
	{
		for (int i = 0; i < 3; ++i)
		{
			if (parallel & (1 << i))
				if (glm::abs(dotB[i] - t[0] * dotA[i]) > halfLengths[i] || glm::abs(dotB[i] - t[1] * dotA[i]) > halfLengths[i])
					return false;

		}
	}
	float hitDistance = t[0];
	if (hitDistance < 0 && t[1] > 0)
		hitDistance = t[1];
	glm::vec3 intersectionPoint = ray->getPosition() + (rayDirection * hitDistance);
	ray->hit(intersectionPoint, hitDistance);
	return true;
}

bool CollisionChecker::collisionCheck(HitBox * hitbox1, HitBox * hitbox2)
{
	if (hitbox1->isSphereCollider())
	{
		SphereCollider* sphere1 = static_cast<SphereCollider*>(hitbox1);
		if (hitbox2->isSphereCollider()) // sphere vs sphere
		{
			SphereCollider* sphere2 = static_cast<SphereCollider*>(hitbox2);
			return this->collisionCheck(sphere1,sphere2);
		}
		else if (hitbox2->isAabbCollider()) // sphere vs aabb
		{
			AABBCollider* aabb = static_cast<AABBCollider*>(hitbox2);
			return this->collisionCheck(sphere1,aabb);
		}
		else if (hitbox2->isObbCollider()) // Sphere vs obb
		{
			OBBCollider* obb = static_cast<OBBCollider*>(hitbox2);
			return this->collisionCheck(obb,sphere1);
		}
		else if (hitbox2->isRayCollider()) // sphere vs ray
		{
			RayCollider* ray = static_cast<RayCollider*>(hitbox2);
			return this->collisionCheck(ray, sphere1);
		}

	}
	else if (hitbox1->isAabbCollider())
	{
		AABBCollider* aabb1 = static_cast<AABBCollider*>(hitbox1);
		if (hitbox2->isSphereCollider()) // aabb vs sphere
		{
			SphereCollider* sphere2 = static_cast<SphereCollider*>(hitbox2);
			return this->collisionCheck(aabb1, sphere2);
		}
		else if (hitbox2->isAabbCollider()) // aabb vs aabb
		{
			AABBCollider* aabb2 = static_cast<AABBCollider*>(hitbox2);
			return this->collisionCheck(aabb1, aabb2);
		}
		else if (hitbox2->isObbCollider()) // aabb vs obb
		{
			OBBCollider* obb = static_cast<OBBCollider*>(hitbox2);
			return this->collisionCheck(obb, aabb1);
		}
		else if (hitbox2->isRayCollider()) // aabb vs ray
		{
			RayCollider* ray = static_cast<RayCollider*>(hitbox2);
			return this->collisionCheck(ray, aabb1);
		}

	}
	else if (hitbox1->isObbCollider())
	{
		OBBCollider* obb1 = static_cast<OBBCollider*>(hitbox1);
		if (hitbox2->isSphereCollider()) // obb vs sphere
		{
			SphereCollider* sphere2 = static_cast<SphereCollider*>(hitbox2);
			return this->collisionCheck(obb1, sphere2);
		}
		else if (hitbox2->isAabbCollider()) // obb vs aabb
		{
			AABBCollider* aabb2 = static_cast<AABBCollider*>(hitbox2);
			return this->collisionCheck(obb1, aabb2);
		}
		else if (hitbox2->isObbCollider()) // obb vs obb
		{
			OBBCollider* obb2 = static_cast<OBBCollider*>(hitbox2);
			return this->collisionCheck(obb1, obb2);
		}
		else if (hitbox2->isRayCollider()) // obb vs ray
		{
			RayCollider* ray = static_cast<RayCollider*>(hitbox2);
			return this->collisionCheck(ray, obb1);
		}

	}
	else if (hitbox1->isRayCollider())
	{
		RayCollider* ray = static_cast<RayCollider*>(hitbox1);
		if (hitbox2->isSphereCollider()) // ray vs sphere
		{
			SphereCollider* sphere2 = static_cast<SphereCollider*>(hitbox2);
			return this->collisionCheck(ray, sphere2);
		}
		else if (hitbox2->isAabbCollider()) // ray vs aabb
		{
			AABBCollider* aabb2 = static_cast<AABBCollider*>(hitbox2);
			return this->collisionCheck(ray, aabb2);
		}
		else if (hitbox2->isObbCollider()) // ray vs obb
		{
			OBBCollider* obb2 = static_cast<OBBCollider*>(hitbox2);
			return this->collisionCheck(ray, obb2);
		}
		else if (hitbox2->isRayCollider()) // ray vs ray
		{
			return false;
		}

	}
	return false;
}

bool CollisionChecker::collisionCheckNormal(HitBox * hitbox1, HitBox * hitbox2, glm::vec3 & normal)
{
	if (hitbox1->isSphereCollider())
	{
		SphereCollider* sphere1 = static_cast<SphereCollider*>(hitbox1);
		if (hitbox2->isSphereCollider()) // sphere vs sphere
		{
			SphereCollider* sphere2 = static_cast<SphereCollider*>(hitbox2);
			return this->collisionCheckNormal(sphere1, sphere2,normal);
		}
		else if (hitbox2->isAabbCollider()) // sphere vs aabb
		{
			AABBCollider* aabb = static_cast<AABBCollider*>(hitbox2);
			return this->collisionCheckNormal(sphere1, aabb,normal);
		}
		else if (hitbox2->isObbCollider()) // Sphere vs obb
		{
			OBBCollider* obb = static_cast<OBBCollider*>(hitbox2);
			return this->collisionCheckNormal(sphere1, obb, normal);
		}
	}
	else
	{
		// Normal calculations is only supported with spheres
		assert(false);
	}
	return false;
}

bool CollisionChecker::collisionCheckNormal(SphereCollider * sphere1, SphereCollider * sphere2, glm::vec3 & normal)
{
	this->sphereCollisionCounter++;
	bool collision = false;

	glm::vec3 distanceVector = sphere1->getPos() - sphere2->getPos();
	float distanceSquared = glm::dot(distanceVector, distanceVector); // dot with itself = length^2

	float radiusSquared = (sphere1->getRadius() + sphere2->getRadius());
	radiusSquared *= radiusSquared;

	//if distance squared is less than radius squared = collision
	if (distanceSquared <= radiusSquared)
	{
		collision = true;
		normal = glm::normalize(distanceVector);
	}
		


	return collision;
}

bool CollisionChecker::collisionCheckNormal(SphereCollider * sphere, AABBCollider * aabb, glm::vec3 & normal)
{
	this->sphereToAabbCollisionCounter++;
	bool collision = false;

	float squaredDistance = SquaredDistancePointToAabb(aabb, sphere);
	float radiusSquared = sphere->getRadiusSquared();
	if (squaredDistance <= radiusSquared) // if squared distance between aabb and sphere center is closer than squared radius of spheres
	{									 // this means that we have a hit, save hit normal and return true
		// Axis to check against
		const int axisAmount = 6;
		glm::vec3 axes[axisAmount];
		axes[0] = glm::vec3(1, 0, 0);
		axes[1] = glm::vec3(-1, 0, 0);
		axes[2] = glm::vec3(0, 0, 1);
		axes[3] = glm::vec3(0, 0, -1);
		axes[4] = glm::vec3(0, 1, 0);
		axes[5] = glm::vec3(0, -1, 0);

		// hit normal
		glm::vec3 hitNormal = glm::normalize(sphere->getPos() - aabb->getCenterPos());

		//Cos angle, who is closest
		float x = glm::dot(axes[0], hitNormal);
		float xNegative = glm::dot(axes[1], hitNormal);
		float z = glm::dot(axes[2], hitNormal);
		float zNegative = glm::dot(axes[3], hitNormal);
		float y = glm::dot(axes[4], hitNormal);
		float yNegative = glm::dot(axes[5], hitNormal);

		float cosAngle[axisAmount];

		cosAngle[0] = glm::dot(axes[0], hitNormal); // x
		cosAngle[1] = glm::dot(axes[1], hitNormal); // x negative
		cosAngle[2] = glm::dot(axes[2], hitNormal); // z
		cosAngle[3] = glm::dot(axes[3], hitNormal); // z negative
		cosAngle[4] = glm::dot(axes[4], hitNormal); // y
		cosAngle[5] = glm::dot(axes[4], hitNormal); // y negative

		//The one with closest angle is the normal of the plane
		float closest = std::numeric_limits<float>().min();
		int index = -1;
		for (int i = 0; i < axisAmount; i++)
		{
			if (cosAngle[i] > closest) // if the angle is closer than the last angle. It is the closest
			{
				closest = cosAngle[i];
				index = i;
			}
				
		}
		if (index != -1) // if we found the closest angle. Probably reduntant check
		{
			normal = axes[index];
		}
		collision = true;
	}

	return collision;
}

bool CollisionChecker::collisionCheckNormal(SphereCollider * sphere, OBBCollider * obb, glm::vec3 & normal)
{
	normal = glm::vec3(0, 0, 0);
	bool collision = false;
	this->obbToSphereCollisionCounter++;
	const glm::vec3 sphereCenter = sphere->getPos();
	float sphereRadius = sphere->getRadius();
	float sphereRadiusSquared = sphere->getRadiusSquared();

	glm::vec3 v = closestPointOnOBB(obb, sphereCenter) - sphereCenter;
	float vSquared = glm::dot(v, v);

	if (glm::dot(v, v) <= sphereRadiusSquared) // if we have a collision
	{
		// Axis to check against
		const int axisAmount = 6;
		glm::vec3 axes[axisAmount];
		axes[0] = obb->getXAxis();
		axes[1] = -obb->getXAxis();
		axes[2] = obb->getZAxis();
		axes[3] = -obb->getZAxis();
		axes[4] = obb->getYAxis();
		axes[5] = -obb->getYAxis();

		// hit normal
		glm::vec3 closestPoint = closestPointOnOBB(obb, sphereCenter);
		glm::vec3 hitNormal = glm::normalize(closestPoint - obb->getPos());

		//Cos angle, who is closest
		float x = glm::dot(axes[0], hitNormal);
		float xNegative = glm::dot(axes[1], hitNormal);
		float z = glm::dot(axes[2], hitNormal);
		float zNegative = glm::dot(axes[3], hitNormal);
		float y = glm::dot(axes[4], hitNormal);
		float yNegative = glm::dot(axes[5], hitNormal);

		float cosAngle[axisAmount];

		cosAngle[0] = glm::dot(axes[0], hitNormal); // x
		cosAngle[1] = glm::dot(axes[1], hitNormal); // x negative
		cosAngle[2] = glm::dot(axes[2], hitNormal); // z
		cosAngle[3] = glm::dot(axes[3], hitNormal); // z negative
		cosAngle[4] = glm::dot(axes[4], hitNormal); // y
		cosAngle[5] = glm::dot(axes[4], hitNormal); // y negative

													//The one with closest angle is the normal of the plane
		float closest = std::numeric_limits<float>().min();
		int index = -1;
		for (int i = 0; i < axisAmount; i++)
		{
			if (cosAngle[i] > closest) // if the angle is closer than the last angle. It is the closest
			{
				closest = cosAngle[i];
				index = i;
			}

		}
		if (index != -1) // if we found the closest angle. Probably reduntant check
		{
			normal = axes[index];
		}
		collision = true;
	}
	return collision; 
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
	this->rayToAabbCollisionCounter = 0;
	this->rayToObbCollisionCounter = 0;
	this->rayToSphereCollisionCounter = 0;
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

int CollisionChecker::getRayToAabbCollisionCounter()
{
	return this->rayToAabbCollisionCounter;
}

int CollisionChecker::getRayToObbCollisionCounter()
{
	return this->rayToObbCollisionCounter;
}

int CollisionChecker::getRayToSphereCollisionCunter()
{
	return this->rayToSphereCollisionCounter;
}

int CollisionChecker::getCollisionCounter()
{
	return sphereCollisionCounter + aabbCollisionCounter
		+ sphereToAabbCollisionCounter + obbCollisionCounter
		+ obbToAabbCollisionCounter + obbToSphereCollisionCounter
		+ rayToAabbCollisionCounter + rayToObbCollisionCounter + 
		rayToSphereCollisionCounter;
}
