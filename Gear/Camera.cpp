#include "Camera.h"

Camera::Camera()
{	
	
}

Camera::Camera(float FoV, float aspectRatio, float nearPlane, float farPlane)
{
	camPosition = { 0, 0, 5 }; 
	camDirection = { 0, 0, 0 }; 
	camUp = { 0, 1, 0 };
	viewMat = glm::lookAt(camPosition, camDirection, camUp);
	projectionMat = glm::perspective(FoV, aspectRatio, nearPlane, farPlane);
}

Camera::~Camera()
{

}

void Camera::setCamPosition(glm::vec3 newPos)
{
	camPosition = newPos;
}

void Camera::setCamDirection(glm::vec3 newDir)
{
	camDirection = newDir;
}

glm::mat4 Camera::getViewPers()
{
	viewMat = glm::lookAt(camPosition, camDirection, camUp);
	return projectionMat * viewMat;
}