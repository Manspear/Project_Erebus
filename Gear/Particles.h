#pragma once
#include "BaseIncludes.h"
#include "RenderQueueElement.h"
#include "ShaderProgram.h"

namespace Gear
{
	class Particle : public RenderQueueElement
	{
	public:

		struct vertex
		{
			glm::vec3 pos;
			glm::vec3 color;
		};

		GEAR_API Particle();
		GEAR_API Particle(glm::vec3 pos, GLfloat duration, GLfloat speed, GLfloat angle, glm::vec3 color);
		GEAR_API ~Particle();
		GEAR_API virtual void draw() override;
		vertex vertexObj;

		GEAR_API void setParticle(glm::vec3 &pos, glm::vec3 &nor);

		ShaderProgram* shader;
		glm::mat4 modelMatrix;

	private:

		GLuint vertexBuffer;
		glm::vec3 pos;
		GLfloat duration;
		GLfloat speed;
		GLfloat angle;
		glm::vec3 color;
	};
}
