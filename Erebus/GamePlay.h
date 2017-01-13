#pragma once
#include"BaseIncludes.h"
#include "Gear.h"
#include "NetworkController.hpp"

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
	bool networkLonelyDebug = true;

	NetworkController networkController;
	NetworkController networkController2;

public:
	GamePlay(Gear::GearEngine * inEngine, Importer::Assets & assets, Controls &controls,Inputs &inputs,Camera& camera)
	{
		if (networkActive)
		{
			if (networkLonelyDebug)
			{
				networkController.initNetworkAsHost();
				networkController2.initNetworkAsClient(127, 0, 0, 1);
				networkController.acceptNetworkCommunication();
			}
			else if (networkHost)
			{
				networkController.initNetworkAsHost();
				networkController.acceptNetworkCommunication();
			}
			else
			{
				networkController.initNetworkAsClient(127, 0, 0, 1);
			}
			networkController.startCommunicationThreads();

			if (networkLonelyDebug)
			{
				networkController2.startCommunicationThreads();
			}
		}

		engine = inEngine;
		transforms = new Transform[nrOfTransforms];
		allTransforms = new TransformStruct[nrOfTransforms];

		moleman = assets.load<ModelAsset>("Models/testGuy.model");
		/*particlesTexture = assets.load<TextureAsset>("Textures/fireball.png");*/
		heightMap = assets.load<Importer::HeightMap>("Textures/scale1c.png");
		
		for (int i = 0; i < nrOfTransforms; i++)
			transforms[i].setThePtr(&allTransforms[i]);

		engine->allocateWorlds(nrOfTransforms);

		engine->bindTransforms(&allTransforms, &boundTransforms);

		collisionHandler.setTransforms(transforms);
		collisionHandler.setDebugger(Debugger::getInstance());

		
		luaBinds.load(engine, &assets, &collisionHandler, &controls, &inputs,transforms, &boundTransforms, &models, &animatedModels, &camera, &ps, &ai);
		Gear::ParticleSystem ps1111("particle.dp", &assets, 10);
		//particlesTexture->bind(PARTICLES);
		//for (int i = 0; i < ps.size(); i++)
		//{
		//	ps.at(i)->setTextrue(particlesTexture);
		//}

		ai.addDebug(Debugger::getInstance());

		engine->queueDynamicModels(&models);
		engine->queueAnimModels(&animatedModels);
		engine->queueParticles(&ps);
	}

	~GamePlay()
	{
		luaBinds.unload();

		if (networkActive)
		{
			networkController.shutdown();
			if (networkLonelyDebug)
			{
				networkController2.shutdown();
			}
		}

		delete[] allTransforms;
		delete[] transforms;

		for (int i = 0; i < ps.size(); i++)
			delete ps.at(i);
	}

	void Update(Controls controls, double deltaTime)
	{
		luaBinds.update(&controls, deltaTime);

		for (int i = 0; i < ps.size(); i++) {
			ps.at(i)->update(deltaTime);
		}


		if (networkActive)
		{
			networkController.buildTransformPacket(transforms[0].getPos().x, transforms[0].getPos().y, transforms[0].getPos().z);
		}

		collisionHandler.checkCollisions();
		collisionHandler.drawHitboxes();
	}

	void Draw()
	{
		engine->queueDynamicModels(&models);
	}
};