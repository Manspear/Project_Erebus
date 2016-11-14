#include "Camera.h"

Camera::Camera()
{	
	
}

Camera::Camera(float FoV, float aspectRatio, float nearPlane, float farPlane)
{
	camPosition = { 0, 0, 5 }; 
	camDirection = { 0, 0, 0 }; 
	camUp = { 0, 1, 0 };
	viewMat = glm::perspective(FoV, aspectRatio, nearPlane, farPlane);
	projectionMat = glm::lookAt(camPosition, camDirection, camUp);
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
	return viewMat * projectionMat;
}