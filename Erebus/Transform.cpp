#include "Transform.h"


Transform::Transform(): position(0), lookDir(0, 0, -1), scale(0)
{

}

Transform::~Transform()
{

}

void Transform::move(glm::vec3 dir, const float &dt)
{
	glm::normalize(lookDir);
	this->position += lookDir * dir.x * dt;
	this->position += glm::cross({ 0, 1, 0 }, lookDir) * dir.y * dt;
	std::cout << position.x << "\t" << position.z << "\n";
}

void Transform::setPos(glm::vec3 pos)
{
	this->position = pos;
}

void Transform::setLookDir(glm::vec3 dir)
{
	this->lookDir = dir;
}

void Transform::setScale(float s)
{
	this->scale = s;
}

glm::vec3 Transform::getPos()
{
	return this->position;
}