#pragma once
#include "BaseIncludes.h"
#include "ShaderProgram.h"
#include "ParticleSystem.h"
#include "ModelAsset.h"


struct ModelInstance
{
	Importer::ModelAsset* asset;
	//Material material;
	std::vector<int> worldIndices;
};

class EffectsProgram {
public:
	EffectsProgram();
	~EffectsProgram();

	void addShader(ShaderProgram* sh, GLuint particleBuffer);
	void effectsPass(std::vector<Gear::ParticleSystem*>* ps, std::vector<ModelInstance>* dynamicModels);
private:
	ShaderProgram* particleProg;
	GLuint particleBuff;
	void particlePass(std::vector<Gear::ParticleSystem*>* ps);
};