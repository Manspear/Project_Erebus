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

class ParticleEditor
{
public:
	ParticleEditor();
	~ParticleEditor();
	void start();

private:
	bool running;
	Camera* camera;
	Inputs* inputs;
	Window window;
	std::vector<Gear::ParticleSystem*> ps;
};