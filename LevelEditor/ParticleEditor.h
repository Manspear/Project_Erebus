#pragma once
#include<AntTweakBar.h>
#include<GLFW\glfw3.h>

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