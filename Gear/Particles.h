#pragma once
#include "BaseIncludes.h"

class Particle
{
public:

	GEAR_API Particle();
	GEAR_API Particle(glm::vec3 pos, GLfloat duration, GLfloat speed, GLfloat angle, glm::vec3 color);
	GEAR_API ~Particle();

	GEAR_API void setPos(glm::vec3 pos);
	GEAR_API glm::vec3 getPos();
	GEAR_API void setDuration(GLfloat duration);
	GEAR_API GLfloat getDuration();
	GEAR_API void setSpeed(GLfloat speed);
	GEAR_API GLfloat getSpeed();
	GEAR_API void setAngle(GLfloat angle);
	GEAR_API GLfloat getAngle();
	GEAR_API void setColor(glm::vec3 color);
	GEAR_API glm::vec3 getColor();

private:

	glm::vec3 pos;
	GLfloat duration;
	GLfloat speed;
	GLfloat angle;
	glm::vec3 color;
};