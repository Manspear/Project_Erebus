#include "Camera.h"

Camera::Camera()
{	
	glm::mat4 pers = glm::perspective(45.f, (float)WINDOW_WIDTH / (float)WINDOW_HEIGHT, 0.5f, 20.f);
	viewMat = pers * glm::lookAt(glm::vec3(0, 0, 10.0), glm::vec3(0, 0, 0), glm::vec3(0, 1, 0));
	freeCam = true;
}

Camera::Camera(float FoV, float aspectRatio, float nearPlane, float farPlane, Inputs* in)
{
	this->aspectRatio = aspectRatio;
	this->nearPlane = nearPlane;
	this->farPlane = farPlane;
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
	dir = 1;
	inLevelEditorMoveMouse = false;
	fov = FoV;
}

Camera::~Camera()
{

}

void Camera::updateBuffer()
{
	bufferLookPos = lookPos;
	bufferCamDirection = camDirection;
	bufferCamPosition = camPosition;
	bufferViewMat = viewMat;
	bufferProjectionMat = projectionMat;
}

void Camera::camFreeUpdate() 
{

}

void Camera::camUpdate(glm::vec3 newPos, glm::vec3 newDir, float dt)
{
	if (inputs->keyPressedThisFrame(GLFW_KEY_L)) {
		inLevelEditor = !inLevelEditor;
	}
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

		//space = upp, x = ned, w = fram, s = bak, a = v�nster, d = h�ger
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

		horizontalAngle += (float)dPos.x / 100;
		verticalAngle += (float)dPos.y / 100;
		if (horizontalAngle > 2 * 3.14f) {
			horizontalAngle -= 2 * 3.14f;
		}
		if (abs(verticalAngle) > 3.14f/2) {
			verticalAngle -= (float)dPos.y / 100;
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

GEAR_API void Camera::follow(glm::vec3 point, glm::vec3 direction, float distance, float angle, float xOffset, float yOffset, float FoV)
{
	//project the input direction to the xz plane and normalizes it
	glm::vec3 tempForward(direction.x, 0, direction.z);
	tempForward = glm::normalize(tempForward);

	//moves the camera to the right with xOffset units, then moves the camera up with yOffset units
	glm::vec3 offset = xOffset*cross(tempForward, { 0,1,0 }) + glm::vec3(0,yOffset,0);
	//places the camera in the right position behind the model, but is locked in the xz plane
	glm::vec3 tempcamPos = point + offset + glm::vec3(0, distance*sinf(angle), 0) - tempForward * cosf(angle) * distance;
	//unlocks the tempcamPos to rotate in the y direction ( kind of )
	this->camPosition = (tempcamPos*0.3f+(point+offset+distance * glm::normalize(-direction))*0.7f);
	this->lookPos = point + offset;
	this->camDirection = glm::normalize( lookPos - camPosition);

	this->viewMat = glm::lookAt(camPosition, point + offset, camUp);
	this->projectionMat = glm::perspective(FoV, aspectRatio, nearPlane, farPlane);
	this->fov = FoV;
}

GEAR_API void Camera::setCamera(glm::vec3 campos, glm::vec3 lookPos)
{
	this->camPosition = campos;
	this->lookPos = lookPos;
	this->viewMat = glm::lookAt(campos, lookPos, camUp);
}

GEAR_API void Camera::setPosition(glm::vec3 position)
{
	this->camPosition = position;
	this->camDirection = position - camDirection;
	this->viewMat = glm::lookAt(position, camDirection, camUp);
}

GEAR_API void Camera::setHeight(float h)
{
	this->camPosition.y = h;
	setCamera(camPosition, lookPos);
}

void Camera::setprojection(glm::mat4 m)
{
	projectionMat = m;
}

void Camera::setView(glm::mat4 m)
{
	this->viewMat = m;
}

glm::mat4 Camera::getViewPers()
{
	//return projectionMat * viewMat;
	return bufferProjectionMat * bufferViewMat;
}


glm::mat4 Camera::getViewMatrix()
{
	//return this->viewMat;
	return bufferViewMat;
}

glm::mat4 Camera::getProjectionMatrix()
{
	//return this->projectionMat;
	return bufferProjectionMat;
}

glm::vec3 Camera::getPosition()
{
	//return this->camPosition;
	return bufferCamPosition;
}

glm::vec3 Camera::getDirection()
{
	//return this->camDirection;
	return bufferCamDirection;
}

glm::vec3 Camera::getUp()
{
	return this->camUp;
}

GEAR_API glm::vec3 Camera::getTrueUp()
{
	return glm::normalize(glm::cross(getRight(), this->camDirection));
}

GEAR_API glm::vec3 Camera::getRight()
{
	return glm::normalize(glm::cross(this->camDirection, glm::vec3(0,1,0)));
}

float Camera::getFov()
{
	return this->fov;
}

GEAR_API float Camera::getAspectRatio()
{
	return this->aspectRatio;
}

float Camera::getNearPlaneDistance()
{
	return this->nearPlane;
}

float Camera::getFarPlaneDistance()
{
	return this->farPlane;
}
