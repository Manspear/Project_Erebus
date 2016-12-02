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
	this->position.y += dir.y * dt;
	float height = hMap->getPos(position.x, position.z);
	if (position.y < height)
		position.y = height;
	this->position += glm::cross({ 0, 1, 0 }, tempForward) * dir.z * dt;
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

void Transform::follow(glm::vec3 goTowards, float speed, const float &dt)
{
	if(glm::length(goTowards - this->position) > 0.01f)
		this->lookDir = glm::normalize(goTowards - this->position);
	this->position += lookDir * speed * dt;
}

void Transform::setHMap(HeightMap* hm)
{
	this->hMap = hm;
}
