#pragma once
#include<AntTweakBar.h>
#include<GLFW\glfw3.h>

struct Particle
{
	GLfloat pos[3];
	float duration;
	float speed;
	float angle;
	float color[3];
};

class ParticleEditor
{
private:
	TwBar *particleBar;
	Particle part;

public:
	ParticleEditor();

	~ParticleEditor();

	void particleEditorBar();
	void createParticles();
};