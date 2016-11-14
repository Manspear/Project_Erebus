#include "Camera.h"

Camera::Camera()
{	
	
}

Camera::Camera(float FoV, float aspectRatio, float nearPlane, float farPlane)
{
	camPosition = { 0, 0, 15 }; 
	camDirection = { 0, 0, 0 }; 
	camUp = { 0, 1, 0 };
	projectionMat = glm::perspective(FoV, aspectRatio, nearPlane, farPlane);
	viewMat = glm::lookAt(camPosition, camDirection, camUp);
}

Camera::~Camera()
{

}

void Camera::camUpdate(glm::vec3 newPos, glm::vec3 newDir)
{
	camPosition = newPos;
	camDirection = camPosition + newDir;
	viewMat = glm::lookAt(camPosition, camDirection, camUp);
}

glm::mat4 Camera::getViewPers()
{
	return projectionMat * viewMat;
}