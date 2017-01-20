
#include <iostream>
#include "Gear.h"
#include "Inputs.h"

#include "Window.h"

#include "PerformanceCounter.h"

#include "OBBCollider.h"
#include "Controls.h"
#include "ParticleImport.h"

#include "LevelEditor.h"

#include "GamePlay.h"
#include "Menu.h"
#include "CollisionChecker.h"
#include "RayCollider.h"

#include "SoundEngine.h"

bool running = true;

int main()
{
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
	Window window;
	Gear::GearEngine engine;
	SoundEngine soundEngine;

	GameState gameState = MenuState;
	window.changeCursorStatus(false);
	
	Importer::Assets assets;
	Importer::FontAsset* font = assets.load<FontAsset>( "Fonts/System" );
	engine.setFont(font);

	Controls controls;
	
	engine.addDebugger(Debugger::getInstance());


 	std::vector<Gear::ParticleSystem*> ps;
	glEnable(GL_DEPTH_TEST);

	GLFWwindow* w = window.getGlfwWindow();
	Inputs inputs(w);
	
	//window.changeCursorStatus(false);

	Camera camera(45.f, 1280.f / 720.f, 0.1f, 2000.f, &inputs);

	GamePlay * gamePlay = new GamePlay(&engine, assets);
	Menu * menu = new Menu(&engine,assets);

	PerformanceCounter counter;
	double deltaTime;
	bool lockMouse = false;
	Debug* tempDebug = Debugger::getInstance();

	float alpha = 0.0f;
	float alphaChangeRate = 0.01f;
	
	inputs.getMousePos();

	soundEngine.play("Music/menuBurana.ogg", true);
	soundEngine.setVolume(0.5);

	while (running && window.isWindowOpen())
	{	
		//engine.effectPreProcess();

		//ai.drawDebug(heightMap);
		deltaTime = counter.getDeltaTime();
		inputs.update();

		switch (gameState)
		{
		case MenuState:
			gameState = menu->Update(inputs);
			if (gameState == HostGameplayState)
			{
				if (gamePlay->StartNetwork(true, &counter))
				{
					gameState = GameplayState;
				}
				else
				{
					std::cout << "Failed to init network" << std::endl;
					gameState = MenuState;
				}
			}

			if (gameState == ClientGameplayState)
			{
				if (gamePlay->StartNetwork(false, &counter))
				{
					gameState = GameplayState;
				}
				else
				{
					std::cout << "Failed to init network" << std::endl;
					gameState = MenuState;
				}
			}

			if (gameState == GameplayState)
			{
				soundEngine.play("Effects/bell.wav");
				gamePlay->Initialize(assets, controls, inputs, camera);
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

		std::string fps = "FPS: " + std::to_string(counter.getFPS()) 
			+ "\nVRAM: " + std::to_string(counter.getVramUsage()) + " MB" 
			+ "\nRAM: " + std::to_string(counter.getRamUsage()) + " MB";
		engine.print(fps, 0.0f, 0.0f);

		window.update();

		//glPolygonMode(GL_FRONT_FACE, GL_LINES);

		engine.draw(&camera);

		if (inputs.keyPressed(GLFW_KEY_ESCAPE) && gameState == GameplayState)
		{
			running = false;
		}
		
		if (inputs.keyPressedThisFrame(GLFW_KEY_KP_1))
			engine.setDrawMode(1);
		else if( inputs.keyPressedThisFrame(GLFW_KEY_KP_2))
			engine.setDrawMode(2);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_KP_3))
			engine.setDrawMode(3);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_KP_4))
			engine.setDrawMode(4);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_KP_5))
			engine.setDrawMode(5);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_KP_6))
			engine.setDrawMode(6);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_KP_7))
			engine.setDrawMode(7);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_R))
		{
			if (lockMouse)
			{
				soundEngine.pause();
				window.changeCursorStatus(false);
				lockMouse = false;
			}
			else
			{
				soundEngine.resume();
				window.changeCursorStatus(true);
				lockMouse = true;
			}
		}
	#ifdef _DEBUG
		assets.checkHotload(deltaTime);
	#endif // DEBUG
	}

	delete gamePlay;
	delete menu;
	
	glfwTerminate();

	return 0;
}
