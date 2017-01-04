#pragma once
#include"BaseIncludes.h"
#include "Gear.h"

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
public:
	GamePlay(Gear::GearEngine * inEngine, Importer::Assets & assets, Controls &controls,Camera& camera)
	{
		engine = inEngine;
		transforms = new Transform[nrOfTransforms];
		allTransforms = new TransformStruct[nrOfTransforms];

		moleman = assets.load<ModelAsset>("Models/testGuy.model");
		particlesTexture = assets.load<TextureAsset>("Textures/fireball.png");
		
		for (int i = 0; i < nrOfTransforms; i++)
			transforms[i].setThePtr(&allTransforms[i]);

		engine->allocateWorlds(nrOfTransforms);

		engine->bindTransforms(&allTransforms, &boundTransforms);

		collisionHandler.setTransforms(transforms);
		collisionHandler.setDebugger(Debugger::getInstance());

		
		luaBinds.load(engine, &assets, &collisionHandler, &controls, transforms, &boundTransforms, &models, &animatedModels, &camera, &ps, &ai);
	
		//particlesTexture->bind(PARTICLES);
		for (int i = 0; i < ps.size(); i++)
		{
			ps.at(i)->setTextrue(particlesTexture);
		}

		ai.addDebug(Debugger::getInstance());

		engine->queueDynamicModels(&models);
		engine->queueAnimModels(&animatedModels);
		engine->queueParticles(&ps);
	}
	~GamePlay()
	{
		luaBinds.unload();
		delete[] allTransforms;
		delete[] transforms;

		for (int i = 0; i < ps.size(); i++)
			delete ps.at(i);
	}

	void Update(Controls controls, double deltaTime)
	{
		//ai.drawDebug(heightMap);

		luaBinds.update(&controls, deltaTime);

		for (int i = 0; i < ps.size(); i++) {
			ps.at(i)->update(deltaTime);
		}
		

		collisionHandler.checkCollisions();
		collisionHandler.drawHitboxes();
	}

	void Draw()
	{
		engine->queueDynamicModels(&models);
	}
};