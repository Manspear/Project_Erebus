#pragma once
#include"BaseIncludes.h"
#include "Gear.h"
#include "NetworkController.hpp"
#include "Controls.h"
#include "Transform.h"
#include "CollisionHandler.h"
#include "LuaBinds.h"
#include "AGI.h"
#include "PerformanceCounter.h"
#include "WorkQueue.h"

class GamePlay
{
private:
	Gear::GearEngine * engine;
	int nrOfTransforms = 100;
	int boundTransforms = 0;
	Transform* transforms;
	TransformStruct* allTransforms;

	CollisionHandler collisionHandler;
	LuaBinds luaBinds;

	AGI::AGIEngine ai;
	std::vector<ModelInstance> models;
	std::vector<AnimatedInstance> animatedModels;

	std::vector<Gear::ParticleSystem*> ps;

	Importer::ModelAsset* moleman;
	Importer::TextureAsset* particlesTexture;
	Importer::HeightMap* heightMap;

	NetworkController networkController;

	WorkQueue* work;

public:
	GamePlay(Gear::GearEngine* inEngine, Importer::Assets* assets, WorkQueue* work);

	~GamePlay();

	void Initialize(Importer::Assets* assets, Controls* controls, Inputs* inputs, Camera* camera);

	void Update(Controls* controls, double deltaTime);

	void Draw();

	bool StartNetwork(const bool& networkHost, PerformanceCounter & counter);
};