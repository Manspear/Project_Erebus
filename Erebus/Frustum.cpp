#include "Frustum.h"



Frustum::Frustum()
{
}


Frustum::~Frustum()
{
}

void Frustum::setCameraParameters(float fov, float aspectRatio, float nearDistance, float farDistance)
{
	this->fov = fov;
	this->aspectRatio = aspectRatio;
	this->nearDistance = nearDistance;
	this->farDistance = farDistance;

	this->tang = (float)tan(fov*ONE_DEGREE_RADIAN * 0.5);
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
	z = glm::normalize(position - direction);

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

	// compute all planes
	this->planes[TOP].setPlane3Points(nearTopRight, nearTopLeft, farTopLeft); // makes plane from these three points
	this->planes[BOTTOM].setPlane3Points(nearBottomLeft,nearBottomRight,farBottomRight);
	this->planes[LEFT].setPlane3Points(nearTopLeft,nearBottomLeft,farBottomLeft);



}
