#include "Particles.h"

namespace Gear
{
	Particle::Particle()
	{
		for (int i = 0; i < maxParticles; i++)
		{
			this->particleObject[i].pos = { 0.0, 0.0, 0.0 };
			this->particleObject[i].color = { 0.0, 0.0, 0.0 };
		}
		/*	particleObject[maxParticles].pos = { 0.0, 0.0, 0.0 };
		particleObject[maxParticles].color = { 0.0, 0.0, 0.0 };*/

		//duration = 0;
		//speed = 1;
		//angle = 0;
	}

	Particle::Particle(glm::vec3 pos, GLfloat duration, GLfloat speed, GLfloat angle, glm::vec3 color)
	{

		//this->particleObject[maxParticles].pos = { 0.0, 0.0, 0.0 };
		//this->particleObject[maxParticles].color = { 0.0, 0.0, 0.0 };
		//this->pos = pos;
		//this->duration = duration;
		//this->speed = speed;
		//this->angle = angle;
	}

	Particle::~Particle()
	{

	}

	void Particle::draw(const GLuint &shaderProgramId)
	{
		//GLuint modelMatrixLocation = glGetUniformLocation(shaderProgramId, "modelMatrix");
		//glUniformMatrix4fv(modelMatrixLocation, 1, GL_FALSE, &modelMatrix[0][0]);

		//GLuint loc = glGetUniformLocation(shaderProgramId, "particleSize");

		//if (loc != -1)
		//{
		//	glUniform1f(loc, 2.0f);
		//}

		////GLuint vbo;
		//glBindBuffer(GL_ARRAY_BUFFER, vertexBuffer);

		//glBufferData(GL_ARRAY_BUFFER, sizeof(ParticlePoint) * maxParticles, &particleObject, GL_STATIC_DRAW);
		//glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 2* sizeof(glm::vec3), (GLvoid*)0);
		//glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 2* sizeof(glm::vec3), (GLvoid*)sizeof(glm::vec3));
		//glEnableVertexAttribArray(0);
		//glEnableVertexAttribArray(1);
		//glDrawArraysInstanced(GL_POINTS, 0, 10, maxParticles);

	}

	void Particle::setParticle(glm::vec3 pos, glm::vec3 color, int i)
	{
		this->particleObject[i].pos = pos;
		this->particleObject[i].color = color;
	}

	ParticlePoint Particle::getParticle()
	{
		for (int i = 0; i < maxParticles; i++)
		{
			return particleObject[i];
		}
	}

	//void Particle::setParticleCount(int particleCount)
	//{
	//	this->particleCount = particleCount;
	//}

	//int Particle::getParticleCount()
	//{
	//	return this->particleCount;
	//}

};
