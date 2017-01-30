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
	SoundEngine* soundEngine;
	int nrOfTransforms = 100;
	int nrOfAnimations = 100;
	int boundTransforms = 0;
	Transform* transforms;
	TransformStruct* allTransforms;
	int boundAnimations;
	Animation* allAnimations;

	CollisionHandler collisionHandler;
	LuaBinds luaBinds;

	AGI::AGIEngine ai;
	std::vector<ModelInstance> models;
	std::vector<ModelInstance> forwardModels;
	std::vector<AnimatedInstance> animatedModels;

	std::vector<Gear::ParticleSystem*> ps;
	//std::vector<Gear::ParticleEmitter*> pE;
	Emitter* emitter;

	Importer::ModelAsset* moleman;
	Importer::TextureAsset* particlesTexture;
	Importer::HeightMap* heightMap;

	NetworkController networkController;

	WorkQueue* work;

	float playerHealthReal = 100;
	float playerHealthCurrent = 100;
	int healthBarLength = 470;

public:
	GamePlay(Gear::GearEngine* inEngine, Importer::Assets* assets, WorkQueue* work, SoundEngine* inSoundEngine);

	~GamePlay();

	void Initialize(Importer::Assets* assets, Controls* controls, Inputs* inputs, Camera* camera);

	void Update(Controls* controls, double deltaTime);

	void Draw();

	bool StartNetwork(const bool& networkHost, PerformanceCounter & counter);


};