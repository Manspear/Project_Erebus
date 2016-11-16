#include "Particles.h"

Particle::Particle()
{
	this->pos = { 0, 0, 0 };
	this->duration = { 0 };
	this->speed = 1;
	this->angle = 0;
	this->color = { 0, 0, 256};
}

Particle::Particle(glm::vec3 pos, GLfloat duration, GLfloat speed, GLfloat angle, glm::vec3 color)
{
	this->pos = pos;
	this->duration = duration;
	this->speed = speed;
	this->angle = angle;
	this->color = color;
}

Particle::~Particle()
{
}

void Particle::setPos(glm::vec3 pos)
{
	this->pos = pos;
}

glm::vec3 Particle::getPos()
{
	return this->pos;
}

void Particle::setDuration(GLfloat duration)
{
	this->duration = duration;
}

GLfloat Particle::getDuration()
{
	return this->duration;
}

void Particle::setSpeed(GLfloat speed)
{
	this->speed = speed;
}

GLfloat Particle::getSpeed()
{
	return this->speed;
}

void Particle::setAngle(GLfloat angle)
{
	this->angle = angle;
}

GLfloat Particle::getAngle()
{
	return this->angle;
}

void Particle::setColor(glm::vec3 color)
{
	this->color = color;
}

glm::vec3 Particle::getColor()
{
	return this->color;
}