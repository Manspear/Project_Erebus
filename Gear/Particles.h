#pragma once
#include "BaseIncludes.h"
#include "RenderQueueElement.h"

class Particle: public RenderQueueElement
{
public:

	glm::vec3 pos;
	GLfloat duration;
	GLfloat speed;
	GLfloat angle;
	glm::vec3 color;

	GEAR_API Particle();
	GEAR_API Particle(glm::vec3 pos, GLfloat duration, GLfloat speed, GLfloat angle, glm::vec3 color);
	GEAR_API ~Particle();

private:

};