#include <iostream>
#include "Gear.h"
#include "Inputs.h"

#include "Window.h"

#include "PerformanceCounter.h"

#include "Controls.h"


#include "LevelEditor.h"
#include "NetworkController.hpp"

#include"GamePlay.h"
#include"Menu.h"

bool running = true;
bool networkActive = false;
bool networkHost = true;
bool networkLonelyDebug = true;


int main()
{
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
	Window window;
	Gear::GearEngine engine;

	GameState gameState = GameplayState;
	
	
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


	GamePlay * gamePlay = new GamePlay(&engine, assets,controls,inputs,camera);
	Menu * menu = new Menu(&engine,assets);

	glClearColor(1, 1, 1, 1);


	PerformanceCounter counter;
	double deltaTime;
	bool lockMouse = false;


	float alpha = 0.0f;
	float alphaChangeRate = 0.01f;
	
	inputs.getMousePos();

	while (running && window.isWindowOpen())
	{	

		//ai.drawDebug(heightMap);
		deltaTime = counter.getDeltaTime();
		inputs.update();
		controls.update(&inputs);

		switch (gameState)
		{
		case MenuState:
			gameState = menu->Update(inputs);
			if (gameState == GameplayState)
			{
				window.changeCursorStatus(true);
				lockMouse = true;
			}
			menu->Draw();
			break;

		case GameplayState:
			controls.update(&inputs);
			gamePlay->Update(controls,deltaTime);
			gamePlay->Draw();
			break;
		}

		std::string fps = "FPS: " + std::to_string(counter.getFPS());
		engine.print(fps, 0.0f, 0.0f);

		window.update();

		engine.draw(&camera);

		if (inputs.keyPressed(GLFW_KEY_ESCAPE) && gameState == GameplayState)
		{
			running = false;
			//gameState = MenuState;
			//window.changeCursorStatus(false);
			//lockMouse = false;

		}
		
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
	delete menu;

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
