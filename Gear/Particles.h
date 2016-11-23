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
			glm::vec3 normal;
		};

		GEAR_API Particle();
		GEAR_API Particle(glm::vec3 pos, GLfloat duration, GLfloat speed, GLfloat angle, glm::vec3 color);
		GEAR_API ~Particle();
		GEAR_API virtual void draw(const GLuint &shaderProgramId) override;
		vertex vertexObj;

		GEAR_API void setParticle(glm::vec3 &pos, glm::vec3 &color, glm::vec3 &normal);

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
