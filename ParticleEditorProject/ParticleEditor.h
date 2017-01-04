#pragma once
#include <iostream>
#include "Gear.h"
#include "Inputs.h"
#include "Assets.h"
#include "TextureAsset.h"
#include "Window.h"
#include <ctime>
#include "PerformanceCounter.h"
#include <String>
#include <thread>

//#ifdef PARTICLE_EXPORT
//#define PARTICLE_API __declspec(dllexport)   
//#else  
//#define PARTICLE_API __declspec(dllimport)   
//#endif

//namespace ParticleEditor
//{

class ParticleEngine
{

public:
	ParticleEngine();
	~ParticleEngine();

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

	void start();
	void update(float dt);
	void setAlive();
	void die(const float & dt);
	void writeToFile();

private:

	float lifeTime;
	bool running;
	Window window;
	std::vector<Gear::ParticleSystem*> ps;
	particle p;
	numParticleSystems nrPs;
};
//};
