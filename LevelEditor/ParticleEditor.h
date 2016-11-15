#pragma once
#include<AntTweakBar.h>
#include<GLFW\glfw3.h>

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

public:
	ParticleEditor();

	~ParticleEditor();

	Particle akfh;

	void particleEditorBar();
	void createParticles();
};