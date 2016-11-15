#include "Camera.h"

Camera::Camera()
{	
	glm::mat4 pers = glm::perspective(45.f, 1280.f / 720.f, 0.5f, 20.f);
	viewMat = pers * glm::lookAt(glm::vec3(0, 0, 10.0), glm::vec3(0, 0, 0), glm::vec3(0, 1, 0)) ;
	
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
	return projectionMat * viewMat;
}

glm::mat4 Camera::getViewMatrix()
{
	return this->viewMat;
}

glm::mat4 Camera::getProjectionMatrix()
{
	return this->projectionMat;
}

glm::vec3 Camera::getPosition()
{
	return this->camPosition;
}

glm::vec3 Camera::getDirection()
{
	return this->camDirection;
}