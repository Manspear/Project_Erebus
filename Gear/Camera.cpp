#include "Camera.h"

Camera::Camera()
{	
	glm::mat4 pers = glm::perspective(45.f, 1280.f / 720.f, 0.5f, 20.f);
	viewMat = pers * glm::lookAt(glm::vec3(0, 0, 10.0), glm::vec3(0, 0, 0), glm::vec3(0, 1, 0));
	freeCam = false;
}

Camera::Camera(float FoV, float aspectRatio, float nearPlane, float farPlane, Inputs* in)
{
	horizontalAngle = 0;
	verticalAngle = 0;
	inputs = in;
	camSpeed = 5.0f;
	camPosition = { 0, 0, 15 }; 
	camDirection = { 0, 0, -1 }; 
	camUp = { 0, 1, 0 };
	projectionMat = glm::perspective(FoV, aspectRatio, nearPlane, farPlane);
	viewMat = glm::lookAt(camPosition, camDirection, camUp);
	freeCam = false;
}

Camera::~Camera()
{

}

void Camera::camUpdate(glm::vec3 newPos, glm::vec3 newDir, float dt)
{
	if (inputs->keyPressedThisFrame(GLFW_KEY_P)) {
		freeCam = !freeCam;
	}
	if (!freeCam) {
		camPosition = newPos;
		camDirection = camPosition + newDir;
	}
	else{
		glm::vec3 tempforward = { camDirection.x, 0, camDirection.z };

		if (inputs->keyPressed(GLFW_KEY_SPACE))
			camPosition += glm::vec3(0, 1, 0) * dt * camSpeed;
		if (inputs->keyPressed(GLFW_KEY_X))
			camPosition -= glm::vec3(0, 1, 0) *dt * camSpeed;
		if (inputs->keyPressed(GLFW_KEY_W))
			camPosition += camDirection * dt * camSpeed;
		if (inputs->keyPressed(GLFW_KEY_S))
			camPosition -= camDirection * dt * camSpeed;
		if (inputs->keyPressed(GLFW_KEY_A))
			camPosition -= cross(camDirection, { 0,1,0 }) * dt * camSpeed;
		if (inputs->keyPressed(GLFW_KEY_D))
			camPosition += cross(camDirection, { 0,1,0 }) * dt * camSpeed;

		// fixa rotation av kamera som ett mlg barn igen!- okej, då kör vi! p:

		tempforward = glm::normalize(tempforward);
		glm::vec3 newAxisZ = glm::cross(tempforward, { 0,1,0 });

		MousePos dPos = inputs->getDeltaPos();

		horizontalAngle += dPos.x / 100.f;
		verticalAngle += dPos.y / 100.f;

		camDirection = glm::vec3(
			cos(verticalAngle) * sin(horizontalAngle),
			sin(verticalAngle),
			cos(verticalAngle)*cos(horizontalAngle)
		);

		glm::vec3 right = glm::vec3(
			sin(horizontalAngle - 3.14f / 2.0f),
			0,
			cos(horizontalAngle - 3.14f / 2.0f)
		);

		glm::vec3 up = glm::cross(right, camDirection);

	}
	viewMat = glm::lookAt(camPosition, camPosition + camDirection, camUp);
}

glm::mat4 Camera::getViewPers()
{
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
