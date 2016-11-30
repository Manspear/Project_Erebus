#pragma once
#include "BaseIncludes.h"
#include "RenderQueueElement.h"
#include "ShaderProgram.h"

struct ParticlePoint
{
	glm::vec3 pos;
	glm::vec3 color;

};

const int maxParticles = 10;

namespace Gear
{
	class Particle : public RenderQueueElement
	{
	public:

		GEAR_API Particle();
		GEAR_API Particle(glm::vec3 pos, GLfloat duration, GLfloat speed, GLfloat angle, glm::vec3 color);
		GEAR_API ~Particle();
		GEAR_API virtual void draw(const GLuint &shaderProgramId) override;
		

		GEAR_API void setParticle(glm::vec3 pos, glm::vec3 color, int i);
		GEAR_API ParticlePoint getParticle();

		//GEAR_API void setParticleCount(int particleCount);
		//GEAR_API int getParticleCount();
		//glm::mat4 modelMatrix;

		ParticlePoint particleObject[maxParticles];
	private:

		GLfloat duration;
		GLfloat speed;
		GLfloat angle;
	};
}
