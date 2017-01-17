#pragma once
#include"BaseIncludes.h"
#include "Gear.h"
#include "NetworkController.hpp"
#include "LuaBinds.h"
#include "Controls.h"
#include "Transform.h"
#include "CollisionHandler.h"
#include "LuaBinds.h"
#include "AGI.h"

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

	bool networkActive = false;
	bool networkHost = true;
	bool networkLonelyDebug = false;

	NetworkController networkController;
	NetworkController networkController2;

public:
	GamePlay(Gear::GearEngine * inEngine, Importer::Assets & assets, Controls &controls, Inputs &inputs, Camera& camera);

	~GamePlay();

	void Update(Controls controls, double deltaTime);

	void Draw();
};