#pragma once
#include<AntTweakBar.h>
#include<GLFW\glfw3.h>
#include"Particles.h"
#include<glm\vec3.hpp>

class ParticleEditor
{
private:
	TwBar *particleBar;
	Particle part;

public:
	ParticleEditor();
	~ParticleEditor();

	void particleEditorBar();
};