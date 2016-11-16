#pragma once
#include<AntTweakBar.h>
#include<GLFW\glfw3.h>
<<<<<<< HEAD
#include"Particles.h"
#include<glm\vec3.hpp>
=======
#include "Particles.h"
>>>>>>> origin/Particle_Editor

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