#pragma once
#include <iostream>
#include "Gear.h"
#include "Inputs.h"
#include "Assets.h"
#include "TextureAsset.h"
#include "Controls.h"
#include "Window.h"
#include <ctime>
#include "PerformanceCounter.h"
#include <String>
#include <thread>


class ParticleEditor
{
public:
	ParticleEditor();
	~ParticleEditor();
	void start();
	void update(float dt);
	void setAlive();
	void die(const float & dt);
	void writeToFile();

	struct numParticleSystems
	{
		char textureName[32];
		int numPS;
	};

	struct particle
	{
		int numOfParticles;
		float lifeTime;
		float speed;
		float extPerSecond;
		int nrOfParticlesPerExt;
	};

private:
	float lifeTime;
	bool running;
	Controls controls;
	Window window;
	std::vector<Gear::ParticleSystem*> ps;
	particle p;
	numParticleSystems nrPs;
};