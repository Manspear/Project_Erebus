#include "Transform.h"


Transform::Transform(): position(0), lookDir(0, 0, -1), rotation(0, 0, 0), scale(0)
{

}

Transform::~Transform()
{

}

void Transform::move(glm::vec3 dir, const float &dt)
{
	glm::vec3 tempForward = glm::normalize(glm::vec3(lookDir.x, 0, lookDir.z));
	this->position += tempForward * dir.x * dt;
	this->position += glm::cross({ 0, 1, 0 }, tempForward) * dir.y * dt;
}

glm::vec3 Transform::getPos()
{
	return this->position;
}

glm::vec3 Transform::getLookAt()
{
	return lookDir;
}

glm::vec3 Transform::getRotation()
{
	return rotation;
}

void Transform::setRotation(glm::vec3 rot)
{
	rotation = rot;
}

void Transform::setLookAt(glm::vec3 lookAt)
{
	lookDir = lookAt;
}
