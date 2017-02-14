#include "Frustum.h"



Frustum::Frustum()
{
}


Frustum::~Frustum()
{
}

void Frustum::setCameraParameters(float fov, float aspectRatio, float nearDistance, float farDistance)
{
	this->fov = fov + LUA_HARDCODED + WIDEN_FRUSTUM; // this needs to be hardcoded as the fov is also hardcoded in lua (camera.lua)
	this->aspectRatio = aspectRatio;
	this->nearDistance = nearDistance;
	this->farDistance = farDistance;

	this->tang = (float)tan(this->fov*ONE_DEGREE_RADIAN * 0.5);
	this->nearHeight = nearDistance * tang;
	this->nearWidth = nearHeight * aspectRatio;
	this->farHeight = farDistance * tang;
	this->farWidth = farHeight * aspectRatio;
}

void Frustum::updateFrustum(const glm::vec3 & position, const glm::vec3 & direction, const glm::vec3 & up)
{
	glm::vec3 nearCenter, farCenter, x, y, z;

	//compute z axis of camera, opposite direction from the looking direction
	//z = -direction;
	z = glm::normalize(glm::vec3(-direction.x, 0, -direction.z));

	// x axis of camera with given up vector and z axis
	x = glm::normalize(glm::cross(up, z));

	//y the real "up vector" is the cross product of Z and X
	y = glm::normalize(glm::cross(z, x));

	// compute near and far planes
	nearCenter = position - (z * nearDistance);
	farCenter = position - (z * farDistance);

	//compute 4 corners of near plane
	this->nearTopLeft = nearCenter + (y * nearHeight) - (x * nearWidth);
	this->nearTopRight = nearCenter + (y * nearHeight) + (x * nearWidth);
	this->nearBottomLeft = nearCenter - (y * nearHeight) - (x * nearWidth);
	this->nearBottomRight = nearCenter - (y * nearHeight) + (x * nearWidth);

	// compute 4 corners of far plane
	this->farTopLeft = farCenter + (y * farHeight) - (x * farWidth);
	this->farTopRight = farCenter + (y * farHeight) + (x * farWidth);
	this->farBottomLeft = farCenter - (y * farHeight) - (x * farWidth);
	this->farBottomRight = farCenter - (y * farHeight) + (x * farWidth);

	//							OPTIMIZE DIS FFS :OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
	// compute all planes
	this->planes[FRUSTUM_TOP].setPlane3Points(nearTopRight, nearTopLeft, farTopLeft); // makes plane from these three points
	this->planes[FRUSTUM_BOTTOM].setPlane3Points(nearBottomLeft,nearBottomRight,farBottomRight);
	this->planes[FRUSTUM_LEFT].setPlane3Points(nearTopLeft,nearBottomLeft,farBottomLeft);
	this->planes[FRUSTUM_RIGHT].setPlane3Points(nearBottomRight,nearTopRight,farBottomRight);
	this->planes[FRUSTUM_NEAR].setPlane3Points(nearTopLeft,nearTopRight,nearBottomRight);
	this->planes[FRUSTUM_FAR].setPlane3Points(farTopRight, farTopLeft, farBottomLeft);



}

bool Frustum::pointCollision(glm::vec3& point)
{
	bool collision = true;

	for (size_t i = 0; i < FRUSTUM_PLANE_AMOUNT; i++)
	{
		float distance = this->planes[i].distance(point);
		if (this->planes[i].distance(point) < 0) // if it is outside ANY plane it is no collision
		{
			collision = false;
			//printf("I AM outside plane nr %i\n",i);
			i = FRUSTUM_PLANE_AMOUNT;
		}
			
	}
	return collision;
}

bool Frustum::aabbCollision(AABBCollider * aabb, Debug* debugger)
{
	bool collision = false;
	const short int CORNER_AMOUNT = 8;
	glm::vec3 corners[CORNER_AMOUNT];
	glm::vec3 minPos = aabb->getMinPosLocal();
	glm::vec3 maxPos = aabb->getMaxPosLocal();
	glm::vec3 center = aabb->getCenterPos();
	glm::vec3 dif = maxPos - minPos;
	glm::vec3 maxPosX = glm::vec3(dif.x, 0, 0);
	glm::vec3 maxPosY = glm::vec3(0, dif.y, 0);
	glm::vec3 maxPosZ = glm::vec3(0,0, dif.z);
	glm::vec3 maxPosXZ = glm::vec3(dif.x, 0, dif.z);
	glm::vec3 maxPosXY = glm::vec3(dif.x, dif.y, 0);
	glm::vec3 maxPosYZ = glm::vec3(0, dif.y, dif.z);

	corners[0] = minPos + center;					// left near bottom
	corners[1] = minPos + maxPosX + center;			// right near bottom
	corners[2] = minPos + maxPosZ + center;			// left far bottom
	corners[3] = minPos + maxPosXZ + center;		// right far bottom

	corners[4] = maxPos + center;						// right top far
	corners[5] = minPos + maxPosYZ + center;	// left top far
	corners[6] = minPos + maxPosY + center;			// left top near
	corners[7] = minPos + maxPosXY + center;	// right top near


	for (size_t i = 0; i < CORNER_AMOUNT; i++)
	{
		debugger->drawSphere(corners[i], 1, glm::vec3(1,1,0));
	}


	// FIRST CHECK, IS ANY CORNER INSIDE THE FRUSTUM
	for (size_t i = 0; i < CORNER_AMOUNT && !collision; i++)
	{
		if (this->pointCollision(corners[i])) // if any corner is inside the frustum, collision true and end loop
		{
			collision = true; // early exit
		}
	}

	// if point is outside plane, check if the others are outside tha same plane
	// is point not outside that plane, check next plane
	// if all corners are outside the same plane, no collision
	//if (!collision) // Niclas algorithm			This is the algorithm used in clip space collision
	//{
	//	collision = true;
	//	for (size_t i = 0; i < FRUSTUM_PLANE_AMOUNT; i++)
	//	{
	//		int cornerCounter = 0;
	//		for (size_t j = 0; j < CORNER_AMOUNT; j++)
	//		{
	//			if (!pointPlaneCollision(i, corners[j])) //corner is outside
	//			{
	//				cornerCounter++;
	//				
	//			}
	//		}	
	//		if (cornerCounter == CORNER_AMOUNT) // all corners outside same plane, defenitely no collision
	//		{
	//			collision = false;
	//			i = FRUSTUM_PLANE_AMOUNT; // early exit
	//		}
	//		//std::cout << "CORNER COUNTER: " << cornerCounter << std::endl;
	//	}
	//}



	return collision;
}

bool Frustum::aabbCollisionOptimized(AABBCollider * aabb)
{
	bool collision = true; // box inside frustum
	glm::vec3 topPositive = aabb->getPositiveVertex(planes[0].getNormal());
	glm::vec3 topNegative = aabb->getNegativeVertex(planes[0].getNormal());

	glm::vec3 botPositive = aabb->getPositiveVertex(planes[1].getNormal());
	glm::vec3 botNegative = aabb->getNegativeVertex(planes[1].getNormal());

	glm::vec3 leftPositive = aabb->getPositiveVertex(planes[2].getNormal());
	glm::vec3 leftNegative = aabb->getNegativeVertex(planes[2].getNormal());

	glm::vec3 rightPositive = aabb->getPositiveVertex(planes[3].getNormal());
	glm::vec3 rightNegative = aabb->getNegativeVertex(planes[3].getNormal());

	glm::vec3 nearPositive = aabb->getPositiveVertex(planes[4].getNormal());
	glm::vec3 nearNegative = aabb->getNegativeVertex(planes[4].getNormal());

	glm::vec3 farPositive = aabb->getPositiveVertex(planes[5].getNormal());
	glm::vec3 farNegative = aabb->getNegativeVertex(planes[5].getNormal());

	float topp = planes[0].distance(aabb->getPositiveVertex(planes[0].getNormal()));
	float botp = planes[1].distance(aabb->getPositiveVertex(planes[1].getNormal()));
	float leftp = planes[2].distance(aabb->getPositiveVertex(planes[2].getNormal()));
	float rightp = planes[3].distance(aabb->getPositiveVertex(planes[3].getNormal()));
	float nearp = planes[4].distance(aabb->getPositiveVertex(planes[4].getNormal()));
	float farp = planes[5].distance(aabb->getPositiveVertex(planes[5].getNormal()));

	float topn = planes[0].distance(aabb->getNegativeVertex(planes[0].getNormal()));
	float botn = planes[1].distance(aabb->getNegativeVertex(planes[1].getNormal()));
	float leftn = planes[2].distance(aabb->getNegativeVertex(planes[2].getNormal()));
	float rightn = planes[3].distance(aabb->getNegativeVertex(planes[3].getNormal()));
	float nearn = planes[4].distance(aabb->getNegativeVertex(planes[4].getNormal()));
	float farn = planes[5].distance(aabb->getNegativeVertex(planes[5].getNormal()));

	if (topPositive == glm::vec3(21, -490, 151))
		int k = 0;

	for (size_t i = 0; i < FRUSTUM_PLANE_AMOUNT; i++)
	{
		if (planes[i].distance(aabb->getPositiveVertex(planes[i].getNormal())) < 0) // is the positive vertex outside?
			return false; // outside
		else if (planes[i].distance(aabb->getNegativeVertex(planes[i].getNormal())) < 0) // is the negative vertex outside?
			collision = true; // box intersects frustum
	}
	return collision;
}

void Frustum::updateClipSpaceFrustum(const glm::mat4 viewProjectionMatrix)
{
	clipSpacePlanes[0].x = viewProjectionMatrix[0][3] + viewProjectionMatrix[0][0];
	clipSpacePlanes[0].y = viewProjectionMatrix[1][3] + viewProjectionMatrix[1][0];
	clipSpacePlanes[0].z = viewProjectionMatrix[2][3] + viewProjectionMatrix[2][0];
	clipSpacePlanes[0].w = viewProjectionMatrix[3][3] + viewProjectionMatrix[3][0];

	// Right clipping plane
	clipSpacePlanes[1].x = viewProjectionMatrix[0][3] - viewProjectionMatrix[0][0];
	clipSpacePlanes[1].y = viewProjectionMatrix[1][3] - viewProjectionMatrix[1][0];
	clipSpacePlanes[1].z = viewProjectionMatrix[2][3] - viewProjectionMatrix[2][0];
	clipSpacePlanes[1].w = viewProjectionMatrix[3][3] - viewProjectionMatrix[3][0];

	// Top clipping plane
	clipSpacePlanes[2].x = viewProjectionMatrix[0][3] - viewProjectionMatrix[0][1];
	clipSpacePlanes[2].y = viewProjectionMatrix[1][3] - viewProjectionMatrix[1][1];
	clipSpacePlanes[2].z = viewProjectionMatrix[2][3] - viewProjectionMatrix[2][1];
	clipSpacePlanes[2].w = viewProjectionMatrix[3][3] - viewProjectionMatrix[3][1];

	// Bottom clipping plane
	clipSpacePlanes[3].x = viewProjectionMatrix[0][3] + viewProjectionMatrix[0][1];
	clipSpacePlanes[3].y = viewProjectionMatrix[1][3] + viewProjectionMatrix[1][1];
	clipSpacePlanes[3].z = viewProjectionMatrix[2][3] + viewProjectionMatrix[2][1];
	clipSpacePlanes[3].w = viewProjectionMatrix[3][3] + viewProjectionMatrix[3][1];

	// Near clipping plane
	clipSpacePlanes[4].x = viewProjectionMatrix[0][3] + viewProjectionMatrix[0][2];
	clipSpacePlanes[4].y = viewProjectionMatrix[1][3] + viewProjectionMatrix[1][2];
	clipSpacePlanes[4].z = viewProjectionMatrix[2][3] + viewProjectionMatrix[2][2];
	clipSpacePlanes[4].w = viewProjectionMatrix[3][3] + viewProjectionMatrix[3][2];

	// Far clipping plane
	clipSpacePlanes[5].x = viewProjectionMatrix[0][3] - viewProjectionMatrix[0][2];
	clipSpacePlanes[5].y = viewProjectionMatrix[1][3] - viewProjectionMatrix[1][2];
	clipSpacePlanes[5].z = viewProjectionMatrix[2][3] - viewProjectionMatrix[2][2];
	clipSpacePlanes[5].w = viewProjectionMatrix[3][3] - viewProjectionMatrix[3][2];

	for (int i = 0; i<6; i++)
		clipSpacePlanes[i] = glm::normalize(clipSpacePlanes[i]);
}

bool Frustum::clipSpaceAabbCollision(AABBCollider * aabb)
{
	const short int CORNER_AMOUNT = 8;
	glm::vec3 corners[CORNER_AMOUNT];
	glm::vec3 minPos = aabb->getMinPosLocal();
	glm::vec3 maxPos = aabb->getMaxPosLocal();
	glm::vec3 center = aabb->getCenterPos();
	glm::vec3 dif = maxPos - minPos;
	glm::vec3 maxPosX = glm::vec3(dif.x, 0, 0);
	glm::vec3 maxPosY = glm::vec3(0, dif.y, 0);
	glm::vec3 maxPosZ = glm::vec3(0, 0, dif.z);
	glm::vec3 maxPosXZ = glm::vec3(dif.x, 0, dif.z);
	glm::vec3 maxPosXY = glm::vec3(dif.x, dif.y, 0);
	glm::vec3 maxPosYZ = glm::vec3(0, dif.y, dif.z);

	corners[0] = minPos + center;					// left near bottom
	corners[1] = minPos + maxPosX + center;			// right near bottom
	corners[2] = minPos + maxPosZ + center;			// left far bottom
	corners[3] = minPos + maxPosXZ + center;		// right far bottom

	corners[4] = maxPos + center;						// right top far
	corners[5] = minPos + maxPosYZ + center;	// left top far
	corners[6] = minPos + maxPosY + center;			// left top near
	corners[7] = minPos + maxPosXY + center;	// right top near

	int totalInside = 0;

	for (int i = 0; i<6; i++)
	{
		int inCount = 8;
		int ptIn = 1;

		glm::vec3 planeNormal(clipSpacePlanes[i].x, clipSpacePlanes[i].y, clipSpacePlanes[i].z);
		for (int j = 0; j<8; j++)
		{
			float dist = glm::dot(planeNormal, corners[j]) + clipSpacePlanes[i].w;
			if (dist < 0.0f)
			{
				ptIn = 0;
				inCount--;
			}
		}

		if (inCount == 0)
			return 0;

		totalInside += ptIn;
	}

	if (totalInside == 6)
		return 1; // intersect
	return 1; // inside
}

bool Frustum::pointAABBCollision(glm::vec3 point, AABBCollider * aabb)
{
	glm::vec3 minPos = aabb->getMinPos();
	glm::vec3 maxPos = aabb->getMaxPos();
	return (point.x >= minPos.x && point.x <= maxPos.x) &&
			(point.y >= minPos.y && point.y <= maxPos.y) &&
			(point.z >= minPos.z && point.z <= maxPos.z);
}

void Frustum::drawMeSelf(Debug * debugger)
{
	glm::vec3 drawPoint = this->nearTopLeft;
	glm::vec3 colors[6];
	colors[0] = glm::vec3(1, 0, 0); // top
	colors[1] = glm::vec3(0, 1, 0); // bot
	colors[2] = glm::vec3(0, 0, 1); // left
	colors[3] = glm::vec3(1, 0, 1); // right
	colors[4] = glm::vec3(1, 1, 0); // near
	colors[5] = glm::vec3(1, 1, 1); // far
	for (size_t i = 0; i < FRUSTUM_PLANE_AMOUNT; i++)
	{
		debugger->drawLine(drawPoint, drawPoint + this->planes[i].getNormal());
		debugger->drawSphere(drawPoint + this->planes[i].getNormal(), 0.1f, colors[i]);
	}
}

bool Frustum::pointPlaneCollision(int plane, glm::vec3 & point)
{
	bool collision = true;
	float distance = this->planes[plane].distance(point);
	if (this->planes[plane].distance(point) < 0) // if it is outside
	{
		collision = false;
	}
	return collision;
}
