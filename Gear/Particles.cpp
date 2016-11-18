#include "Particles.h"

Particle::Particle()
{
	pos = { 0, 0, 0 };
	duration = 0;
	speed = 1;
	angle = 0;
	color = { 0, 0, 256 };
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
