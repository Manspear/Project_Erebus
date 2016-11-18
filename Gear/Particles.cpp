#include "Particles.h"

namespace Gear
{
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

	void Particle::draw()
	{
		shader = new ShaderProgram();
		GLuint worldMatrixLocation = glGetUniformLocation(shader->getProgramID(), "worldMatrix");
		glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &worldMatrix[0][0]);

		//GLuint vbo;
		glGenBuffers(1, &vertexBuffer);
		glBindBuffer(GL_ARRAY_BUFFER, vertexBuffer);


		glBufferData(GL_ARRAY_BUFFER, sizeof(vertexObj), &vertexObj, GL_STATIC_DRAW);
		/*glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(sSkeletonVertex), 0);*/
		glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(vertex) * 5, (GLvoid*)0);
		glDrawArrays(GL_POINTS, 0, 5);

	}

	GEAR_API void Particle::setParticle(glm::vec3 &pos, glm::vec3 &nor)
	{

		vertexObj.pos = pos;
		vertexObj.nor = nor;
	}

};