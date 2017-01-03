#include <iostream>
#include "Gear.h"
#include "Inputs.h"

#include "Window.h"

#include "PerformanceCounter.h"

#include "Controls.h"


#include "LevelEditor.h"
#include "NetworkController.hpp"

#include"GamePlay.h"

bool running = true;
bool networkActive = false;
bool networkHost = true;
bool networkLonelyDebug = true;

enum GameState
{
	Menu,
	Gameplay
};

int main()
{
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
	Window window;
	Gear::GearEngine engine;

	GameState gameState = Gameplay;
	

	Importer::Assets assets;
	Importer::FontAsset* font = assets.load<FontAsset>( "Fonts/System" );
	engine.setFont(font);

	Controls controls;
	
	engine.addDebugger(Debugger::getInstance());

	


	
	glEnable(GL_DEPTH_TEST);

	GLFWwindow* w = window.getGlfwWindow();
	Inputs inputs(w);
	
	//window.changeCursorStatus(false);

	Camera camera(45.f, 1280.f / 720.f, 0.1f, 2000.f, &inputs);

	

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


	Importer::HeightMap* heightMap = assets.load<Importer::HeightMap>("Textures/scale1c.png");


	GamePlay * gamePlay = new GamePlay(&engine, assets,controls,camera);
	glClearColor(1, 1, 1, 1);

	

	PerformanceCounter counter;
	double deltaTime;
	bool lockMouse = false;


	float alpha = 0.0f;
	float alphaChangeRate = 0.01f;




	while (running && window.isWindowOpen())
	{	
		
		deltaTime = counter.getDeltaTime();
		inputs.update();
		controls.update(&inputs);

		switch (gameState)
		{
		case Menu:

			break;

		case Gameplay:
			gamePlay->Update(controls,deltaTime);
			break;
		}

	

		std::string fps = "FPS: " + std::to_string(counter.getFPS());
		engine.print(fps, 0.0f, 0.0f);

		//Scale & color showcase
		engine.print("testing\ntesting", 1100.f, 0.f, 1.2f, glm::vec4(0.4f, 1.0f, 0.4f, alpha));
		alpha += alphaChangeRate;
		if (alpha <= 0 || alpha >= 1.0f) { alphaChangeRate *= -1; }

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

	delete gamePlay;

	if (networkActive)
	{
		networkController.shutdown();
		if (networkLonelyDebug)
		{
			networkController2.shutdown();
		}
	}
	

	glfwTerminate();
	return 0;
}
