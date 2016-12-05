#include "Particles.h"

namespace Gear
{
	Particle::Particle()
	{
	
		/*	particleObject[maxParticles].pos = { 0.0, 0.0, 0.0 };
		particleObject[maxParticles].color = { 0.0, 0.0, 0.0 };*/

		//duration = 0;
		//speed = 1;
		//angle = 0;
	}
	
	Particle::Particle(glm::vec3 pos, glm::vec3 color, glm::vec3 speed, float duration)
	{
		glGenBuffers(1, &particleVertexBuffer);
		this->position = pos;
		this->color = color;
		this->speed = speed;
		this->duration = duration;
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

	void Particle::update(glm::vec3 &speed)
	{
		position += speed;
		duration -= 2.0;
	}

	bool Particle::isDead()
	{
		if (duration < 0.0)
		{
			return true;
			//if the particle is dead
		}
		else
		{
			return false;
			//if its alive
		}
	}

	GEAR_API glm::vec3 Particle::getPosition()
	{
		return position;
	}

	GEAR_API glm::vec3 Particle::getColor()
	{
		return color;
	}

	GEAR_API glm::vec3 Particle::getSpeed()
	{
		return speed;
	}


};
