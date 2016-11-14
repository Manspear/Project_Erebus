#pragma once
#include<AntTweakBar.h>


struct Particle
{
	float pos[3];
	float duration;
	float speed;
	float angle;
	float color[3];
};

class ParticleEditor
{
private:
	TwBar *myBar;
	Particle* particle;

public:
	ParticleEditor();

	~ParticleEditor();

};