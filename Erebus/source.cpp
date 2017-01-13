
#include <iostream>
#include "Gear.h"
#include "Inputs.h"
#include "Assets.h"
#include "ModelAsset.h"
#include "TextureAsset.h"
#include "Window.h"
#include "Transform.h"
#include "PerformanceCounter.h"
#include "ParticleSystem.h"
#include "SphereCollider.h"
#include "AABBCollider.h"
#include "CollisionHandler.h"
#include "OBBCollider.h"
#include "Controls.h"
#include "LuaBinds.h"
#include <String>
#include "HeightMap.h"
#include "Ray.h"
#include "FontAsset.h"
#include "MaterialAsset.h"
#include "LevelEditor.h"
#include "NetworkController.hpp"
#include "CollisionChecker.h"
#include "RayCollider.h"

bool running = true;
bool networkActive = false;
bool networkHost = true;
bool networkLonelyDebug = true;

int main()
{
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
	Window window;
	Gear::GearEngine engine;

	Importer::Assets assets;
	Importer::FontAsset* font = assets.load<FontAsset>( "Fonts/System" );
	engine.setFont(font);
	int nrOfTransforms = 100;
	int boundTransforms = 0;
	Transform* transforms = new Transform[nrOfTransforms];
	TransformStruct* allTransforms = new TransformStruct[nrOfTransforms];
	for (int i = 0; i < nrOfTransforms; i++)
		transforms[i].setThePtr(&allTransforms[i]);
	Controls controls;
	engine.allocateWorlds(nrOfTransforms);

	engine.addDebugger(Debugger::getInstance());

	Importer::ModelAsset* moleman = assets.load<ModelAsset>( "Models/testGuy.model" );
	Importer::TextureAsset* particlesTexture = assets.load<TextureAsset>("Textures/fireball.png");

	std::vector<ModelInstance> models;
	std::vector<AnimatedInstance> animatedModels;

	//Collisions
	CollisionChecker collisionChecker;
	CollisionHandler collisionHandler;
	collisionHandler.setTransforms(transforms);

 	std::vector<Gear::ParticleSystem*> ps;
	glEnable(GL_DEPTH_TEST);

	GLFWwindow* w = window.getGlfwWindow();
	Inputs inputs(w);
	
	//window.changeCursorStatus(false);

	Camera camera(45.f, 1280.f / 720.f, 0.1f, 2000.f, &inputs);

	engine.bindTransforms(&allTransforms, &boundTransforms);

	NetworkController networkController;
	NetworkController networkController2;

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

	AGI::AGIEngine ai;
	Importer::HeightMap* heightMap = assets.load<Importer::HeightMap>("Textures/scale1c.png");

	LuaBinds luaBinds;
	luaBinds.load( &engine, &assets, &collisionHandler, &controls,&inputs, transforms, &boundTransforms, &models, &animatedModels, &camera, &ps,&ai);
	glClearColor(1, 1, 1, 1);

	//particlesTexture->bind(PARTICLES);
	for(int i = 0; i < ps.size(); i++)
	{
		ps.at(i)->setTextrue(particlesTexture);
	}

	PerformanceCounter counter;
	double deltaTime;
	bool lockMouse = false;
	Debug* tempDebug = Debugger::getInstance();
	collisionHandler.setDebugger(tempDebug);
	float alpha = 0.0f;
	float alphaChangeRate = 0.01f;

	ai.addDebug(Debugger::getInstance());

	while (running && window.isWindowOpen())
	{	
		//ai.drawDebug(heightMap);
		deltaTime = counter.getDeltaTime();
		inputs.update();
		controls.update(&inputs);
		luaBinds.update( &controls, deltaTime);
		for (int i = 0; i < ps.size(); i++) {
			ps.at(i)->update(deltaTime);
		}

		engine.queueDynamicModels(&models);
		engine.queueAnimModels(&animatedModels);
		engine.queueParticles(&ps);

		collisionHandler.checkCollisions();
		collisionHandler.drawHitboxes();

		std::string fps = "FPS: " + std::to_string(counter.getFPS());
		engine.print(fps, 0.0f, 0.0f);

		window.update();

		engine.draw(&camera);

		if( inputs.keyPressed( GLFW_KEY_ESCAPE ) )
			running = false;
		
		if (inputs.keyPressedThisFrame(GLFW_KEY_J))
			engine.setDrawMode(1);
		else if( inputs.keyPressedThisFrame( GLFW_KEY_K ))
			engine.setDrawMode(2);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_L))
			engine.setDrawMode(3);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_P))
			engine.setDrawMode(4);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_N))
			engine.setDrawMode(5);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_O))
			engine.setDrawMode(6);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_R))
		{
			if (lockMouse)
			{
				window.changeCursorStatus(false);
				lockMouse = false;
			}
			else
			{
				window.changeCursorStatus(true);
				lockMouse = true;
			}
		}

		assets.checkHotload( deltaTime );
	}

	luaBinds.unload();
	delete[] allTransforms;
	delete[] transforms;
	if (networkActive)
	{
		networkController.shutdown();
		if (networkLonelyDebug)
		{
			networkController2.shutdown();
		}
	}
	for (int i = 0; i < ps.size(); i++)
		delete ps.at(i);

	glfwTerminate();

	return 0;
}
