#include "GamePlay.h"

	GamePlay::GamePlay(Gear::GearEngine * inEngine, Importer::Assets & assets, Controls &controls, Inputs &inputs, Camera& camera) 
	{
		if (networkLonelyDebug)
		{
			networkController.initNetworkAsHost();
			networkController2.initNetworkAsClient(127, 0, 0, 1);

			if (networkActive)
			{
				networkController.acceptNetworkCommunication();
			}
		}
		else if (networkHost)
		{
			networkController.initNetworkAsHost();
			if (networkActive)
			{
				networkController.acceptNetworkCommunication();
			}
		}
		else
		{
			networkController.initNetworkAsClient(127, 0, 0, 1);
		}
		if (networkActive)
		{
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
		collisionHandler.setLayerCollisionMatrix(1, 1, false);
		networkController.setNetWorkHost(networkHost);
		luaBinds.load(engine, &assets, &collisionHandler, &controls, &inputs, transforms, &boundTransforms, &models, &animatedModels, &camera, &ps, &ai, &networkController);
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

	GamePlay::~GamePlay()
	{
		if (networkActive)
		{
			networkController.shutdown();
			if (networkLonelyDebug)
			{
				networkController2.shutdown();
			}
		}

		luaBinds.unload();


		delete[] allTransforms;
		delete[] transforms;

		for (int i = 0; i < ps.size(); i++)
			delete ps.at(i);
	}

	void GamePlay::Update(Controls controls, double deltaTime)
	{
		luaBinds.update(&controls, deltaTime);

		for (int i = 0; i < ps.size(); i++) {
			ps.at(i)->update(deltaTime);
		}


		if (networkActive && networkLonelyDebug)
		{
			TransformPacket transPack;
			if (networkController2.fetchTransformPacket(transPack))
			{
				std::cout << "x: " << transPack.data.x << " y: " << transPack.data.y << " z: " << transPack.data.z << std::endl;
				//networkController2.sendTransformPacket(transPack.data.ID, transPack.data.x, transPack.data.y, transPack.data.z);
			}
		}

		collisionHandler.checkCollisions();
		collisionHandler.drawHitboxes();
		//engine->print(collisionHandler.getCollisionText(), 1000, 100, 0.6);
	}

	void GamePlay::Draw()
	{
		engine->queueDynamicModels(&models);
	}