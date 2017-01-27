
#include <iostream>
#include "Gear.h"
#include "Inputs.h"

#include "Window.h"

#include "PerformanceCounter.h"

#include "OBBCollider.h"
#include "Controls.h"
#include "ParticleImport.h"

#include "GamePlay.h"
#include "Menu.h"
#include "CollisionChecker.h"
#include "RayCollider.h"
Gear::ParticleSystem* ps;
#include "SoundEngine.h"
#include "WorkQueue.h"

bool running = true;

#define THREAD_TIMEOUT 100 // ms
struct ThreadData
{
	Gear::GearEngine* engine;
	SoundEngine* soundEngine;
	Camera* camera;
	Inputs* inputs;
	Controls* controls;
	Importer::Assets* assets;
	WorkQueue* workQueue;
	GameState gameState;
	GamePlay* gamePlay;
	Menu* menu;
	HANDLE produce, consume;
};

DWORD WINAPI update( LPVOID args )
{
	ThreadData* data = (ThreadData*)args;

	// GamePlay and Menu is deleted in the main thread
	// because the renderer is depending on their transforms
	data->gamePlay = new GamePlay( data->engine, data->assets, data->workQueue, data->soundEngine );

	data->menu = new Menu( data->engine, data->assets );

	PerformanceCounter counter;
	while( running )
	{
		DWORD waitResult = WaitForSingleObject( data->produce, THREAD_TIMEOUT );
		if( waitResult == WAIT_OBJECT_0 )
		{
			double deltaTime = counter.getDeltaTime();

			switch (data->gameState)
			{
				case MenuState:
					data->gameState = data->menu->Update(data->inputs);
					if (data->gameState == HostGameplayState)
					{
						if (data->gamePlay->StartNetwork(true, counter))
						{
							data->gameState = GameplayState;
						}
						else
						{
							std::cout << "Failed to init network" << std::endl;
							data->gameState = MenuState;
						}
					}

					if (data->gameState == ClientGameplayState)
					{
						if (data->gamePlay->StartNetwork(false, counter))
						{
							data->gameState = GameplayState;
						}
						else
						{
							std::cout << "Failed to init network" << std::endl;
							data->gameState = MenuState;
						}
					}

					if (data->gameState == GameplayState)
					{
						data->gamePlay->Initialize(data->assets, data->controls, data->inputs, data->camera);
						data->soundEngine->play("Effects/bell.wav");
					}
					break;

				case GameplayState:
					data->gamePlay->Update(data->controls,deltaTime);
					if ( data->inputs->keyPressed(GLFW_KEY_ESCAPE) )
					{
						running = false;
					}
					break;
			}

			std::string fps = "FPS: " + std::to_string(counter.getFPS()) 
				+ "\nVRAM: " + std::to_string(counter.getVramUsage()) + " MB" 
				+ "\nRAM: " + std::to_string(counter.getRamUsage()) + " MB";
			data->engine->print(fps, 0.0f, 0.0f);

			ReleaseSemaphore( data->consume, 1, NULL );
		}
	}

	return 0;
}

int main()
{
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
	Window window;
	Gear::GearEngine engine;
	SoundEngine soundEngine;
	WorkQueue work;

	//GameState gameState = MenuState;
	window.changeCursorStatus(false);
	
	Importer::Assets assets;
	Importer::FontAsset* font = assets.load<FontAsset>( "Fonts/System" );

	engine.setFont(font);
	engine.setWorkQueue( &work );

	assets.load<TextureAsset>("Textures/menuBackground.png");
	assets.load<TextureAsset>("Textures/button.png");
	assets.load<TextureAsset>("Textures/buttonHost.png");
	assets.load<TextureAsset>("Textures/buttonConnect.png");
	assets.load<ModelAsset>( "Models/testGuy.model" );
	assets.load<ModelAsset>( "Models/projectile1.model" );
	assets.load<ModelAsset>("Models/SunRayInner.model");
	assets.load<ModelAsset>("Models/SunRayOuter.model");
	assets.load<ModelAsset>( "Models/Goblin.model" );
	assets.load<ModelAsset>("Models/pCube1.model");
	assets.load<ModelAsset>( "Models/tile1_game_x1.model" );
	assets.load<ModelAsset>( "Models/tile1_game_x1_assets.model" );
	assets.load<TextureAsset>("Textures/HealthBar.png");
	assets.load<TextureAsset>("Textures/HealthBackground.png");


	Controls controls;	
	engine.addDebugger(Debugger::getInstance());
	glEnable(GL_DEPTH_TEST);

	GLFWwindow* w = window.getGlfwWindow();
	Inputs inputs(w);

	Camera camera(45.f, 1280.f / 720.f, 0.1f, 2000.f, &inputs);
	
	//GamePlay * gamePlay = new GamePlay(&engine, &assets, &work);
	//Menu * menu = new Menu(&engine,&assets);
	PerformanceCounter counter;
	double deltaTime;
	bool lockMouse = false;
	Debug* tempDebug = Debugger::getInstance();

	float alpha = 0.0f;
	float alphaChangeRate = 0.01f;
	
	inputs.getMousePos();

	//soundEngine.play("Music/menuBurana.ogg", SOUND_LOOP | SOUND_3D, glm::vec3(31,8,12));
	soundEngine.setMasterVolume(0.5);

	ThreadData threadData =
	{
		&engine,
		&soundEngine,
		&camera,
		&inputs,
		&controls,
		&assets,
		&work,
	};
	threadData.produce = CreateSemaphore( NULL, 1, 1, NULL );
	threadData.consume = CreateSemaphore( NULL, 0, 1, NULL );

	HANDLE thread = CreateThread( NULL, 0, update, &threadData, 0, NULL );

	double saveDeltaTime = 0.0f;

	while (running && window.isWindowOpen())
	{
		// START OF CRITICAL SECTION
		DWORD waitResult = WaitForSingleObject( threadData.consume, THREAD_TIMEOUT );
		if( waitResult == WAIT_OBJECT_0 )
		{
			deltaTime = counter.getDeltaTime();
			inputs.update();

			switch( threadData.gameState )
			{
				case MenuState:
					threadData.menu->Update(&inputs);
					break;

				case GameplayState:
					if( !lockMouse )
					{
						window.changeCursorStatus( true );
						lockMouse = true;
					}
					controls.update(&inputs);
					break;
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
				soundEngine.pauseAll();
					window.changeCursorStatus(false);
					lockMouse = false;
				}
				else
				{
				soundEngine.resumeAll();
					window.changeCursorStatus(true);
					lockMouse = true;
				}
			}

			//engine.updateTransforms();
			engine.update();
			camera.updateBuffer();

			ReleaseSemaphore( threadData.produce, 1, NULL );
			// END OF CRITICAL SECTION

			switch (threadData.gameState)
			{
			case MenuState:
				threadData.menu->Draw();
				break;

			case GameplayState:
				threadData.gamePlay->Draw();
				break;
			}

			window.update();
			engine.draw(&camera);

#ifdef _DEBUG
			assets.checkHotload(deltaTime);
#endif // DEBUG
		}
	}

	WaitForSingleObject( thread, INFINITE );
	CloseHandle( thread );
	CloseHandle( threadData.produce );
	CloseHandle( threadData.consume );

	work.stop();

	//delete gamePlay;
	//delete menu;
	delete threadData.gamePlay;
	delete threadData.menu;
	glfwTerminate();

	return 0;
}
