#pragma once
#include<GLFW\glfw3.h>
#include<glm\vec3.hpp>

class Particle
{
public:
	glm::vec3 pos;
	GLfloat duration;
	GLfloat speed;
	GLfloat angle;
	glm::vec3 color;

	Particle();
	Particle(glm::vec3 pos, GLfloat duration, GLfloat speed, GLfloat angle, glm::vec3 color);
	~Particle();
};