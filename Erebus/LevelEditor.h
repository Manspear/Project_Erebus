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
#include "Transform.h"
#include "PerformanceCounter.h"
#include "ParticleSystem.h"
#include "SphereCollider.h"
#include "AABBCollider.h"
#include "CollisionHandler.h"
#include "Controls.h"
#include <lua\lua.hpp>
#include "LuaBinds.h"
#include <String>
#include <thread>
#include "HeightMap.h"
#include "Ray.h"
class LevelEditor
{
private:
	const int nrOfTransforms = 100;
	int boundTransforms;
	std::vector<ModelInstance> models;
	std::vector<AnimatedInstance> animatedModels;
	std::vector<Gear::ParticleSystem*> ps;

	Transform* transforms = new Transform[nrOfTransforms];
	TransformStruct* allTransforms = new TransformStruct[nrOfTransforms];
	bool running;
	Camera* camera;
	Inputs* inputs;
	Window window;
public:
	LevelEditor();
	~LevelEditor();

	void start();
};

