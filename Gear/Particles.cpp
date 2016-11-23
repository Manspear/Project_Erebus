#include "Particles.h"

namespace Gear
{
	Particle::Particle()
	{
		this->particleCount = 0;
		for (int i = 0; i < 10; i++)
		{
			this->vertexObject[i].pos = { 0.0, 0.0, 0.0 };
			this->vertexObject[i].color = { 0.0, 0.0, 0.0 };
		}
	/*	vertexObj.normal = { 0.0, 0.0, 0.0 };*/
		//pos = { 0, 0, 0 };
		//duration = 0;
		//speed = 1;
		//angle = 0;
		//color = { 0, 0, 256 };
	}

	Particle::Particle(glm::vec3 pos, GLfloat duration, GLfloat speed, GLfloat angle, glm::vec3 color)
	{

		for (int i = 0; i < 10; i++)
		{
			this->vertexObject[i].pos = { 0.0, 0.0, 0.0 };
			this->vertexObject[i].color = { 0.0, 0.0, 0.0 };
		}
		//this->pos = pos;
		//this->duration = duration;
		//this->speed = speed;
		//this->angle = angle;
		//this->color = color;
	}

	Particle::~Particle()
	{

	}

	void Particle::draw(const GLuint &shaderProgramId)
	{
		//GLuint modelMatrixLocation = glGetUniformLocation(shaderProgramId, "modelMatrix");
		//glUniformMatrix4fv(modelMatrixLocation, 1, GL_FALSE, &modelMatrix[0][0]);

		GLuint loc = glGetUniformLocation(shaderProgramId, "particleSize");

		glUniform1f(loc, 1.0);
		if (loc != -1)
		{
			glUniform1f(loc, 1.0);
		}

		//GLuint vbo;
		glGenBuffers(1, &vertexBuffer);
		glBindBuffer(GL_ARRAY_BUFFER, vertexBuffer);

		glEnable(GL_PROGRAM_POINT_SIZE);
		glPointSize(10.0);

		glBufferData(GL_ARRAY_BUFFER, sizeof(vertex) * this->particleCount, &vertexObject, GL_STATIC_DRAW);
		glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 2* sizeof(glm::vec3), (GLvoid*)0);
		glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 2* sizeof(glm::vec3), (GLvoid*)sizeof(glm::vec3));
	/*	glVertexAttribPointer(2, 3, GL_FLOAT, GL_FALSE, sizeof(glm::vec3), (GLvoid*)(3 * sizeof(glm::vec3)));*/
		glEnableVertexAttribArray(0);
		glEnableVertexAttribArray(1);
		glDrawArraysInstanced(GL_POINTS, 0, 1, this->particleCount);

		/*glDrawArrays(GL_POINTS, 0, 1);*/

	}

	void Particle::setParticle(glm::vec3 pos, glm::vec3 color, int i)
	{
		this->vertexObject[i].pos = pos;
		this->vertexObject[i].color = color;
		//vertexObj.normal = normal;
	}

	vertex Particle::getParticle()
	{
		return vertexObject[0];
	/*	return this->vertexObject;*/
	}

	void Particle::setParticleCount(int particleCount)
	{
		this->particleCount = particleCount;
	}

	int Particle::getParticleCount()
	{
		return this->particleCount;
	}

};
