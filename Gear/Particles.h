#pragma once
#include "BaseIncludes.h"
#include "RenderQueueElement.h"
#include "ShaderProgram.h"

struct ParticlePoint
{
	glm::vec3 pos;
	glm::vec3 color;
	//glm::vec3 speed;
	//glm::vec3 duration
};



namespace Gear
{
	class Particle : public RenderQueueElement
	{
	public:

		GEAR_API Particle();
		GEAR_API Particle(glm::vec3 pos, glm::vec3 color, glm::vec3 speed, float duration);
		GEAR_API ~Particle();
		GEAR_API virtual void draw(const GLuint &shaderProgramId) override;
		GEAR_API void update(glm::vec3 &speed);
		GEAR_API bool isDead();

		GEAR_API glm::vec3 getPosition();
		GEAR_API glm::vec3 getColor();
		GEAR_API glm::vec3 getSpeed();

		//glm::mat4 modelMatrix;
		GLuint particleVertexBuffer;
	/*	ParticlePoint particleObject[maxParticles];*/

	private:
		
		glm::vec3 position;
		glm::vec3 color;
		glm::vec3 speed;
		float duration;
	};
}
