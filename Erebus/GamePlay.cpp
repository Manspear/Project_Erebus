#include "GamePlay.h"

GamePlay::GamePlay(Gear::GearEngine * inEngine, Importer::Assets* assets, WorkQueue* w, SoundEngine* inSoundEngine)
	: boundTransforms( 0 ), boundAnimations( 0 )
{
	engine = inEngine;
	work = w;
	soundEngine = inSoundEngine;
	transforms = new Transform[nrOfTransforms];
	allTransforms = new TransformStruct[nrOfTransforms];
	allAnimations = new Animation[nrOfAnimations];
	engine->addDebugger(Debugger::getInstance());
	//moleman = assets.load<ModelAsset>("Models/testGuy.model");
	/*particlesTexture = assets.load<TextureAsset>("Textures/fireball.png");*/
	//heightMap = assets.load<Importer::HeightMap>("Textures/scale1c.png");

	for (int i = 0; i < nrOfTransforms; i++)
		transforms[i].setThePtr(&allTransforms[i]);

	engine->allocateWorlds(nrOfTransforms);

	engine->bindTransforms(&allTransforms, &boundTransforms);
	engine->bindAnimations(&allAnimations, &boundAnimations);

	collisionHandler.setTransforms(transforms);
	collisionHandler.setDebugger(Debugger::getInstance());
	collisionHandler.setLayerCollisionMatrix(1, 1, false);
	//Gear::ParticleSystem ps1111("particle.dp", &assets, 10);
	//particlesTexture->bind(PARTICLES);
	//for (int i = 0; i < ps.size(); i++)
	//{
	//	ps.at(i)->setTextrue(particlesTexture);
	//}

	//ai.addDebug(Debugger::getInstance());

	engine->queueDynamicModels(&models);
	engine->queueAnimModels(&animatedModels);
	engine->queueParticles(&ps);
}

GamePlay::~GamePlay()
{
	networkController.shutdown();

	luaBinds.unload();


	delete[] allTransforms;
	delete[] transforms;
	delete[] allAnimations;

	for (int i = 0; i < ps.size(); i++)
		delete ps.at(i);
}

void GamePlay::Initialize(Importer::Assets* assets, Controls* controls, Inputs* inputs, Camera* camera)
{
	luaBinds.load(engine, assets, &collisionHandler, controls, inputs, transforms, &boundTransforms, allAnimations, &boundAnimations, &models, &animatedModels, camera, &ps, &ai, &networkController, work, soundEngine);
}

void GamePlay::Update(Controls* controls, double deltaTime)
{
		//ai.drawDebug(heightMap);
	luaBinds.update(controls, deltaTime);
	work->execute();

	for (int i = 0; i < ps.size(); i++) {
		ps.at(i)->update(deltaTime);
	}

	collisionHandler.checkCollisions();
	//collisionHandler.drawHitboxes();
	//engine->print(collisionHandler.getCollisionText(), 1000, 100, 0.6);
}

void GamePlay::Draw()
{
	engine->queueDynamicModels(&models);
}

bool GamePlay::StartNetwork(const bool& networkHost, PerformanceCounter & counter)
{
	networkController.setNetworkHost(networkHost);
	if (networkHost)
	{
		if (!networkController.initNetworkAsHost())
		{
			return false;
		}
		networkController.acceptNetworkCommunication();
	}
	else
	{
		if (!networkController.initNetworkAsClient(127, 0, 0, 1))
		{
			return false;
		}
	}
		
	networkController.startCommunicationThreads(counter);
	return true;
}