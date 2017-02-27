
#include <iostream>
#include "Gear.h"
#include "Inputs.h"

#include "Window.h"

#include "PerformanceCounter.h"

#include "OBBCollider.h"
#include "Controls.h"
#include "ParticleImport.h"

#include "Menu.h"
#include "CollisionChecker.h"
#include "RayCollider.h"
#include "SoundEngine.h"
#include "WorkQueue.h"
#include "CollisionHandler.h"
#include "Frustum.h"
#include "AGI.h"
#include "NetworkController.hpp"
#include "LuaBinds.h"
#include "TransformHandler.h"

#define MAX_TRANSFORMS 800
#define MAX_ANIMATIONS 300

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
	std::vector<ModelInstance>* models;
	std::vector<ModelInstance>* forwardModels;
	//std::vector<AnimatedInstance>* animatedModels;
	std::vector<ModelInstance>* animatedModels;
	std::vector<Gear::ParticleSystem*>* particleSystems;
	std::vector<Gear::ParticleEmitter*>* particleEmitters;
	std::vector<ModelInstance>* blendingModels;
	TransformHandler* transformHandler;
	bool queueModels;
	bool mouseVisible;
	bool fullscreen;
	bool running;
	Animation* allAnimations;
	HANDLE produce, consume;
};
Frustum f = Frustum();
glm::vec3 POINT33(125, 35, 230);
struct AnimationData
{
	Animation* animation;
	float dt;
};
void updateAnimation( void* args )
{
	AnimationData* data = (AnimationData*)args;
	data->animation->update( data->dt );
}

DWORD WINAPI update( LPVOID args )
{
	ThreadData* data = (ThreadData*)args;

	CollisionHandler collisionHandler = CollisionHandler(10);
	int boundTransforms = 0;
	int boundAnimations = 0;
	AGI::AGIEngine ai;
	NetworkController network;

	data->engine->addDebugger( Debugger::getInstance() );

	data->engine->bindAnimations( &data->allAnimations, &boundAnimations );

	//collisionHandler.setTransforms( transforms );
	collisionHandler.setTransforms( data->transformHandler );
	collisionHandler.setDebugger(Debugger::getInstance());
	collisionHandler.setLayerCollisionMatrix(1,1,false);

	ai.addDebug(Debugger::getInstance());

	data->engine->queueDynamicModels( data->models );
	data->engine->queueAnimModels( data->animatedModels );
	data->engine->queueParticles( *data->particleSystems );
	data->engine->queueEmitters(*data->particleEmitters);
	data->engine->queueForwardModels(data->forwardModels);

	data->engine->queueTextureBlendings(data->blendingModels);

	PerformanceCounter counter;
	LuaBinds luaBinds;
	luaBinds.load( data->engine, data->assets, &collisionHandler, data->controls, data->inputs, data->allAnimations, &boundAnimations, 
		data->models, data->animatedModels, data->forwardModels, data->blendingModels, data->transformHandler, &data->queueModels, &data->mouseVisible, &data->fullscreen, &data->running, data->camera, data->particleSystems,
		data->particleEmitters,	&ai, &network, data->workQueue, data->soundEngine, &counter );

	AnimationData animationData[MAX_ANIMATIONS];

	while( data->running )
	{
		glm::vec3 cameraPosition = data->camera->getPosition();
		glm::vec3 cameraLookDirection = data->camera->getDirection();
		glm::vec3 cameraUp = data->camera->getUp();


		DWORD waitResult = WaitForSingleObject( data->produce, THREAD_TIMEOUT );
		if( waitResult == WAIT_OBJECT_0 )
		{
			double deltaTime = counter.getDeltaTime();

			luaBinds.update( data->controls, (float)deltaTime );
			data->workQueue->execute();

			for( int i=0; i<data->particleSystems->size(); i++ )
				data->particleSystems->at(i)->update( (float)deltaTime );
			for (int i = 0; i<data->particleEmitters->size(); i++)
				data->particleEmitters->at(i)->update((float)deltaTime);

			collisionHandler.checkCollisions();

			std::string fps = "FPS: " + std::to_string(counter.getFPS()) 
				+ "\nVRAM: " + std::to_string(counter.getVramUsage()) + " MB" 
				+ "\nRAM: " + std::to_string(counter.getRamUsage()) + " MB";
#ifdef DEBUGGING_NETWORK
			fps += "\nPing: " + std::to_string(network.getPing()*100) + " ms";
#endif
			data->engine->print(fps, 0.0f, 0.0f);
			//data->engine->print(data->soundEngine->getDbgTxt(), 350, 0, 0.7);

			for( int i=0; i<boundAnimations; i++ )
			{
				animationData[i].dt = (float)deltaTime;
				animationData[i].animation = &data->allAnimations[i];
				//data->allAnimations[i].update(deltaTime);
				data->workQueue->add( updateAnimation, &animationData[i] );
			}
			data->workQueue->execute();

			ReleaseSemaphore( data->consume, 1, NULL );
		}
	}

	network.shutdown();
	luaBinds.unload();

	return 0;
}

int main()
{
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
	Window window;
	Gear::GearEngine engine;
	SoundEngine soundEngine;
	WorkQueue work;

	window.changeCursorStatus(false);
	Importer::Assets assets;
	Importer::FontAsset* font = assets.load<FontAsset>( "Fonts/System" );

	engine.setFont(font);
	engine.setWorkQueue( &work );

	assets.load<TextureAsset>("Textures/buttonOptions.dds");
	assets.load<TextureAsset>("Textures/buttonExit.dds");
	assets.load<TextureAsset>("Textures/buttonReturn.dds");
	assets.load<TextureAsset>("Textures/buttonFullscreenOn.dds");
	assets.load<TextureAsset>("Textures/buttonFullscreenOff.dds");
	Controls controls;	
	engine.addDebugger(Debugger::getInstance());
	glEnable(GL_DEPTH_TEST);

	GLFWwindow* w = window.getGlfwWindow();
	Inputs inputs(w);

	Camera camera(45.f, (float)WINDOW_WIDTH / (float)WINDOW_HEIGHT, 0.1f, 500.f, &inputs);
	
	PerformanceCounter counter;
	double deltaTime;
	//bool lockMouse = false;
	Debug* tempDebug = Debugger::getInstance();

	float alpha = 0.0f;
	float alphaChangeRate = 0.01f;
	
	inputs.getMousePos();

	soundEngine.setMasterVolume(10);


	std::vector<ModelInstance> models;
	std::vector<ModelInstance> forwardModels;
	//std::vector<AnimatedInstance> animModels;
	std::vector<ModelInstance> animModels;
	std::vector<Gear::ParticleSystem*> particleSystems;
	std::vector<Gear::ParticleEmitter*> particleEmitters;
	std::vector<ModelInstance> blendingModels;
	TransformHandler transformHandler( &engine, &models, &animModels, &forwardModels, &blendingModels );

	ThreadData threadData =
	{
		&engine,
		&soundEngine,
		&camera,
		&inputs,
		&controls,
		&assets,
		&work,
		&models,
		&forwardModels,
		&animModels,
		&particleSystems,
		&particleEmitters,
		&blendingModels,
		&transformHandler,
		false,
		true,
		false,
		true
	};
	threadData.allAnimations = new Animation[MAX_ANIMATIONS];
	threadData.produce = CreateSemaphore( NULL, 1, 1, NULL );
	threadData.consume = CreateSemaphore( NULL, 0, 1, NULL );

	HANDLE thread = CreateThread( NULL, 0, update, &threadData, 0, NULL );

	double saveDeltaTime = 0.0f;

	bool fullscreen = threadData.fullscreen;

	bool prevMouseVisible = threadData.mouseVisible;
	while (threadData.running && window.isWindowOpen())
	{
		// START OF CRITICAL SECTION
		DWORD waitResult = WaitForSingleObject( threadData.consume, THREAD_TIMEOUT );
		if( waitResult == WAIT_OBJECT_0 )
		{
			deltaTime = counter.getDeltaTime();
			inputs.update();

			// TODO: Stop using the controls class
			if( threadData.queueModels )
				controls.update( &inputs );

#if _DEBUG
			if (inputs.keyPressedThisFrame(GLFW_KEY_KP_1))
				engine.setDrawMode(1);
			else if (inputs.keyPressedThisFrame(GLFW_KEY_KP_2))
				engine.setDrawMode(2);
			else if (inputs.keyPressedThisFrame(GLFW_KEY_KP_3))
				engine.setDrawMode(3);
			else if (inputs.keyPressedThisFrame(GLFW_KEY_KP_4))
				engine.setDrawMode(4);
			else if (inputs.keyPressedThisFrame(GLFW_KEY_KP_5))
				engine.setDrawMode(5);
			else if (inputs.keyPressedThisFrame(GLFW_KEY_KP_6))
				engine.setDrawMode(5);
			else if (inputs.keyPressedThisFrame(GLFW_KEY_KP_7))
				engine.setDrawMode(5);
#endif
			/*else if (inputs.keyPressedThisFrame(GLFW_KEY_R))
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
			}*/

			if( prevMouseVisible != threadData.mouseVisible )
			{
				window.changeCursorStatus(!threadData.mouseVisible);
				prevMouseVisible = threadData.mouseVisible;
			}

			if (fullscreen != threadData.fullscreen)
			{
				window.createWindow(threadData.fullscreen);
				fullscreen = threadData.fullscreen;
			}

			if( threadData.queueModels )
				engine.queueDynamicModels( &models );
			engine.update(deltaTime);

			soundEngine.update(deltaTime);
			camera.updateBuffer();

			assets.upload();
			assets.checkReferences();

			ReleaseSemaphore( threadData.produce, 1, NULL );
			// END OF CRITICAL SECTION

			window.update();
			engine.draw(&camera);

#ifdef _DEBUG
			assets.checkHotload((float)deltaTime);
#endif // DEBUG
		}
	}

	WaitForSingleObject( thread, INFINITE );
	CloseHandle( thread );
	CloseHandle( threadData.produce );
	CloseHandle( threadData.consume );

	work.stop();

	delete[] threadData.allAnimations;

	for (int i = 0; i < particleSystems.size(); i++)
	{
		delete particleSystems[i];
	}
	for (int i = 0; i < particleEmitters.size(); i++)
		delete particleEmitters.at(i);

	glfwTerminate();


	return 0;
}
