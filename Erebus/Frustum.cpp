#include "Frustum.h"



Frustum::Frustum()
{
}


Frustum::~Frustum()
{
}

void Frustum::setCameraParameters(float fov, float aspectRatio, float nearDistance, float farDistance)
{
	this->fov = 50; // this needs to be hardcoded as the fov is also hardcoded in lua (camera.lua)
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
	// this is like (-direction)?
	//z = glm::normalize(position - direction);
	z = -direction;

	// x axis of camera with given up vector and z axis
	x = glm::normalize(glm::cross(up, z));

	//y the real "up vector" is the cross product of Z and X
	y = glm::normalize(glm::cross(z, x)); // might just be able to use up vector from camera?

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

bool Frustum::pointCollision(glm::vec3 point)
{
	bool collision = true;

	for (size_t i = 0; i < PLANE_AMOUNT; i++)
	{
		float distance = this->planes[i].distance(point);
		if (this->planes[i].distance(point) < 0) // if it is outside ANY plane it is no collision
		{
			collision = false;
			printf("I AM outside plane nr %i\n",i);
		}
			
	}
	return collision;
}

bool Frustum::aabbCollision(AABBCollider * aabb)
{
	bool collision = true;

	glm::vec3 corners[8];
	glm::vec3 minPos = aabb->getMinPosLocal();
	glm::vec3 maxPos = aabb->getMaxPosLocal();
	glm::vec3 center = aabb->getCenterPos();

	corners[0] = minPos + center;						// left near bottom
	corners[1] = minPos + maxPos.x + center;			// right near bottom
	corners[2] = minPos + maxPos.z + center;			// left far bottom
	corners[3] = minPos + maxPos.x + maxPos.z + center; // right far bottom

	corners[4] = maxPos + center;						// right top far
	corners[5] = minPos + maxPos.y + maxPos.z + center;	// left top far
	corners[6] = minPos + maxPos.y + center;			// left top near
	corners[7] = minPos + maxPos.y + maxPos.x + center;	// right top near

	// check every corner
	// if corners are outside different planes


	return collision;
}
