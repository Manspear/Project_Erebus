#include "Camera.h"

Camera::Camera()
{	
	glm::mat4 pers = glm::perspective(45.f, 1280.f / 720.f, 0.5f, 20.f);
	viewMat = pers * glm::lookAt(glm::vec3(0, 0, 10.0), glm::vec3(0, 0, 0), glm::vec3(0, 1, 0));
	freeCam = true;
	angle = (3.14 / 2) / 4;
}

Camera::Camera(float FoV, float aspectRatio, float nearPlane, float farPlane, Inputs* in)
{
	horizontalAngle = 3.14f;
	verticalAngle = 0;
	inputs = in;
	camSpeed = 5.0f;
	camPosition = { 0, 0, 15 }; 
	camDirection = { 0, 0, -1 }; 
	camUp = { 0, 1, 0 };
	projectionMat = glm::perspective(FoV, aspectRatio, nearPlane, farPlane);
	viewMat = glm::lookAt(camPosition, camDirection, camUp);
	freeCam = true;
	angle = (3.14 / 2) / 4;
	dir = 1;
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
		camPosition -= camDirection * (float)inputs->getScroll();
		camDirection += camDirection * (float)inputs->getScroll();
	}
	else{
		glm::vec3 tempforward = glm::normalize( glm::vec3(camDirection.x, 0, camDirection.z ));
		camDirection = glm::normalize(camDirection);
		if (inputs->keyPressed(GLFW_KEY_LEFT_SHIFT))
			camSpeed = TURBO_CAM_SPEED;
		else {
			camSpeed = BASE_CAM_SPEED;
		}

		//space = upp, x = ned, w = fram, s = bak, a = vänster, d = höger
		if (inputs->keyPressed(GLFW_KEY_SPACE))
			camPosition += glm::vec3(0, 1, 0) * dt * camSpeed;
		if (inputs->keyPressed(GLFW_KEY_X))
			camPosition -= glm::vec3(0, 1, 0) *dt * camSpeed;
		if (inputs->keyPressed(GLFW_KEY_W))
			camPosition += camDirection * dt * camSpeed;
		if (inputs->keyPressed(GLFW_KEY_S))
			camPosition -= camDirection * dt * camSpeed;
		if (inputs->keyPressed(GLFW_KEY_A))
			camPosition -= cross(tempforward, { 0,1,0 }) * dt * camSpeed;
		if (inputs->keyPressed(GLFW_KEY_D))
			camPosition += cross(tempforward, { 0,1,0 }) * dt * camSpeed;

		tempforward = glm::normalize(tempforward);
		glm::vec3 newAxisZ = glm::cross(tempforward, { 0,1,0 });

		MousePos dPos = inputs->getDeltaPos();

		horizontalAngle += (float)dPos.x / 100.f;
		verticalAngle += (float)dPos.y / 100.f;
		if (horizontalAngle > 2 * 3.14f) {
			horizontalAngle -= 2 * 3.14f;
		}
		if (abs(verticalAngle) > 3.14f/2) {
			verticalAngle -= (float)dPos.y / 100.f;
		}

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

GEAR_API void Camera::follow(glm::vec3 point, glm::vec3 direction, float distance)
{
	angle += 0.001 * dir;
	if (angle > 3.14/2 || angle < 0 ) {
		dir *= -1;
	}
	glm::vec3 tempForward(direction.x, 0, direction.z);
	tempForward *= cosf(angle) * distance;
	this->camPosition = point + glm::vec3(0, distance*sinf(angle), 0) - tempForward;
	this->viewMat = glm::lookAt(camPosition, point, camUp);
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
