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
	//heightMap = assets.load<Importer::HeightMap>("Textures/scale1c.png");

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
	engine->queueParticles(ps);

	healthBackground = sScreenImage(glm::vec2(371, 630), 538, 60);
	healthBackgroundTex = assets->load<TextureAsset>("Textures/HealthBackground.png");
	healthBar = sScreenImage(glm::vec2(405, 638), 470, 43);
	healthBarTex = assets->load<TextureAsset>("Textures/HealthBar.png");
	firepillar = sScreenImage(glm::vec2(371, 565), 64, 64);
	firepillarTex = assets->load<TextureAsset>("Textures/firepillar.dds");
	cooldown = sScreenImage(glm::vec2(371, 565), 64, 0);
	cooldownTex = assets->load<TextureAsset>("Textures/cooldown.png");

	spell1 = sScreenImage(glm::vec2(371, 565), 64, 64);
	spell1Tex = assets->load<TextureAsset>("Textures/spell1.png");
	spell2 = sScreenImage(glm::vec2(438, 565), 64, 64);
	spell2Tex = assets->load<TextureAsset>("Textures/spell2.png");
	spell3 = sScreenImage(glm::vec2(505, 565), 64, 64);
	spell3Tex = assets->load<TextureAsset>("Textures/spell3.png");


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
	//luaBinds.load(engine, assets, &collisionHandler, controls, inputs, transforms, &boundTransforms, allAnimations, &boundAnimations, &models, &animatedModels, camera, &ps, &ai, &networkController, work, soundEngine);
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
	//engine->print(collisionHandler.getCollisionText(), 1000, 100, 0.6);

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
	engine->showImage(firepillar, firepillarTex);
	engine->showImage(cooldown, cooldownTex);
	engine->showImage(spell1, spell1Tex);
	engine->showImage(spell2, spell2Tex);
	engine->showImage(spell3, spell3Tex);
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