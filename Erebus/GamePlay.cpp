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

	for (int i = 0; i < nrOfTransforms; i++)
		transforms[i].setThePtr(&allTransforms[i]);

	engine->allocateWorlds(nrOfTransforms);

	engine->bindTransforms(&allTransforms, &boundTransforms);
	engine->bindAnimations(&allAnimations, &boundAnimations);

	collisionHandler.setTransforms(transforms);
	collisionHandler.setDebugger(Debugger::getInstance());
	collisionHandler.setLayerCollisionMatrix(1, 1, false);

	ai.addDebug(Debugger::getInstance());

	engine->queueDynamicModels(&models);
	engine->queueAnimModels(&animatedModels);
	engine->queueForwardModels(&forwardModels);
	engine->queueParticles(ps);

	healthBackground = sScreenImage(glm::vec2(290, 630), 700, 80);
	healthBackgroundTex = assets->load<TextureAsset>("Textures/HealthBackground.png");
	healthBar = sScreenImage(glm::vec2(332, 640), 614, 60);
	healthBarTex = assets->load<TextureAsset>("Textures/HealthBar.png");
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
	luaBinds.load(engine, assets, &collisionHandler, controls, inputs, transforms, &boundTransforms, allAnimations, &boundAnimations, &models, &animatedModels, &forwardModels, camera, &ps, &ai, &networkController, work, soundEngine);
}

void GamePlay::Update(Controls* controls, double deltaTime)
{
	luaBinds.update(controls, deltaTime);
	work->execute();


	for (int i = 0; i < ps.size(); i++) {
		ps.at(i)->update(deltaTime);
	}
	collisionHandler.checkCollisions();
	collisionHandler.drawHitboxes();

	lua_State* l = luaBinds.getState();
	lua_getglobal(l, "player");
	lua_getfield(l, -1, "health");
	playerHealthReal = (float)lua_tonumber(l, -1);
	lua_pop(l, 2);

	if (playerHealthCurrent > playerHealthReal)
	{
		playerHealthCurrent  -= 50 * deltaTime;
		playerHealthCurrent < 0 ? 0 : playerHealthCurrent;
	}

	float a = (playerHealthCurrent * healthBarLength) / 100.0f;

	healthBar.width = a;
	
}

void GamePlay::Draw()
{
	engine->queueDynamicModels(&models);
	engine->showImage(healthBackground, healthBackgroundTex);
	engine->showImage(healthBar, healthBarTex);
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