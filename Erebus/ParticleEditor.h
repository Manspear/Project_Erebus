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
	void die();

private:
	float lifeTime;
	bool running;
	Controls controls;
	Window window;
	std::vector<Gear::ParticleSystem*> ps;
};