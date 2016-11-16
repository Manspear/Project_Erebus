#pragma once
#include<AntTweakBar.h>
#include<GLFW\glfw3.h>
#include<glm\vec3.hpp>
#include"Particles.h"

class ParticleEditor 
{
private:
	TwBar *particleBar;
	Particle* part;

public:
	ParticleEditor();
	~ParticleEditor();
	
	void particleEditorBar();
};