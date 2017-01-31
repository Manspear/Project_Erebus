#include "EffectsProgram.h"

EffectsProgram::EffectsProgram()
{
}

EffectsProgram::~EffectsProgram()
{
}

void EffectsProgram::addShader(ShaderProgram * sh, GLuint particleBuffer)
{
	particleProg = sh;
	particleBuff = particleBuffer;
}

void EffectsProgram::effectsPass(std::vector<Gear::ParticleSystem*>* ps, std::vector<ModelInstance>* dynamicModels)
{
	particlePass(ps);
}

void EffectsProgram::particlePass(std::vector<Gear::ParticleSystem*>* ps)
{
	particleProg->use();
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	SendStruct* pos;
	size_t particleCount;
	glBindBuffer(GL_ARRAY_BUFFER, particleBuff);
	glVertexAttribPointer(0, 4, GL_FLOAT, GL_FALSE, sizeof(SendStruct), (GLvoid*)0);
	for (size_t i = 0; i < ps->size(); i++)
	{
		if (ps->at(i)->isActive)
		{
			for (size_t j = 0; j < ps->at(i)->getNrOfEmitters(); j++)
			{
				if (ps->at(i)->particleEmitters->isActive)
				{
					pos = ps->at(i)->particleEmitters[j].getPositions();
					ps->at(i)->particleEmitters[j].getTexture()->bind(GL_TEXTURE0);
					particleCount = ps->at(i)->particleEmitters[j].getNrOfActiveParticles();
					glBufferData(GL_ARRAY_BUFFER, (sizeof(SendStruct)) * particleCount, &pos[0], GL_STATIC_DRAW);
					glDrawArraysInstanced(GL_POINTS, 0, particleCount, 1);
				}
			}
		}
	}
	glEnableVertexAttribArray(0);
	particleProg->unUse();	
}
