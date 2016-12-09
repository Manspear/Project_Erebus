#include "Transform.h"


Transform::Transform()
{

}

Transform::~Transform()
{

}

void Transform::setThePtr(TransformStruct * ptrInArray)
{
	this->theTran = ptrInArray;
	theTran->pos = glm::vec3(0);
	theTran->rot = glm::vec3(0);
	theTran->lookAt = glm::vec3(0, 0, -1);
	theTran->scale = glm::vec3(1);
	theTran->active = true;
}

void Transform::move(glm::vec3 dir, const float &dt)
{
	glm::vec3 tempForward = glm::normalize(glm::vec3(theTran->lookAt.x, 0, theTran->lookAt.z));
	this->theTran->pos += tempForward * dir.x * dt;
	this->theTran->pos.y += dir.y * dt;
	this->theTran->pos += glm::cross({ 0, 1, 0 }, tempForward) * dir.z * dt;
}

void Transform::setPos(glm::vec3 pos)
{
	this->theTran->pos = pos;
}

void Transform::setLookDir(glm::vec3 dir)
{
	this->theTran->lookAt = dir;
}

void Transform::setScale(glm::vec3 scale)
{
	this->theTran->scale = scale;
}

void Transform::setScale(float s)
{
	this->theTran->scale = {s,s,s};
}

glm::vec3 Transform::getPos()
{
	return this->theTran->pos;
}

glm::vec3 Transform::getLookAt()
{
	return this->theTran->lookAt;
}

glm::vec3 Transform::getRotation()
{
	return this->theTran->rot;
}

glm::vec3 Transform::getScale()
{
	return this->theTran->scale;
}

void Transform::setRotation(glm::vec3 rot)
{
	this->theTran->rot = rot;
}

void Transform::setLookAt(glm::vec3 lookAt)
{
	this->theTran->lookAt = lookAt;
}

void Transform::setActive(bool isActive)
{
	this->theTran->active = isActive;
}

void Transform::follow(glm::vec3 goTowards, float speed, const float &dt)
{
	if(glm::length(goTowards - this->theTran->pos) > 0.01f)
		this->theTran->lookAt = glm::normalize(goTowards - this->theTran->pos);
	this->theTran->pos += this->theTran->lookAt  * speed * dt;
}