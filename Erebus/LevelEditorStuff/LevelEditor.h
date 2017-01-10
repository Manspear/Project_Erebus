#pragma once
#include <iostream>
#include "Nurn.hpp"
#include "Gear.h"
#include "Inputs.h"
#include "Assets.h"
#include "ModelAsset.h"
#include "TextureAsset.h"
#include "Window.h"
#include <ctime>
#include "../Transform.h"
#include "../PerformanceCounter.h"
#include "../SphereCollider.h"
#include "../AABBCollider.h"
#include "../CollisionHandler.h"
#include "../Controls.h"
#include <String>
#include <thread>
#include "HeightMap.h"
#include "Ray.h"
#include "LevelTransformHandler.h"
#include "LevelModelHandler.h"
#include "LevelActorFactory.h"
class LevelEditor
{
private:
	
	LevelActorFactory* factory;
	std::vector<Gear::ParticleSystem*> ps;
	LevelTransformHandler* transformHandler;
	LevelModelHandler* modelHandler;
	bool running;
	Camera* camera;
	Inputs* inputs;
	Window window;
public:
	LevelEditor();
	~LevelEditor();

	void start();
};

