
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
#include "SoundEngine.h"
#include "WorkQueue.h"

#define MAX_TRANSFORMS 100
#define MAX_ANIMATIONS 100

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
	std::vector<AnimatedInstance>* animatedModels;
	std::vector<Gear::ParticleSystem*>* particleSystems;
	bool queueModels;
	bool mouseVisible;
	bool fullscreen;
	bool running;
	TransformStruct* allTransforms;
	Animation* allAnimations;
	HANDLE produce, consume;
};

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

	CollisionHandler collisionHandler;
	Transform* transforms = new Transform[MAX_TRANSFORMS];
	int boundTransforms = 0;
	int boundAnimations = 0;
	AGI::AGIEngine ai;
	NetworkController network;

	data->engine->addDebugger( Debugger::getInstance() );

	for( int i=0; i<MAX_TRANSFORMS; i++ )
		transforms[i].setThePtr( &data->allTransforms[i] );

	data->engine->allocateWorlds( MAX_TRANSFORMS );

	data->engine->bindTransforms( &data->allTransforms, &boundTransforms );
	data->engine->bindAnimations( &data->allAnimations, &boundAnimations );

	collisionHandler.setTransforms( transforms );
	collisionHandler.setDebugger(Debugger::getInstance());
	collisionHandler.setLayerCollisionMatrix(1,1,false);

	AABBCollider aabb = AABBCollider(glm::vec3(-1, -1, -1), glm::vec3(1, 1, 1), glm::vec3(31.3, 8.5, 12.1));

	collisionHandler.addHitbox(&aabb);

	ai.addDebug(Debugger::getInstance());

	data->engine->queueDynamicModels( data->models );
	data->engine->queueAnimModels( data->animatedModels );
	data->engine->queueParticles( *data->particleSystems );
	data->engine->queueForwardModels(data->forwardModels);

	PerformanceCounter counter;
	LuaBinds luaBinds;
	luaBinds.load( data->engine, data->assets, &collisionHandler, data->controls, data->inputs, transforms, &boundTransforms, data->allAnimations, &boundAnimations, 
		data->models, data->animatedModels, data->forwardModels, &data->queueModels, &data->mouseVisible, &data->fullscreen, &data->running, data->camera, data->particleSystems, 
		&ai, &network, data->workQueue, data->soundEngine, &counter );

	AnimationData animationData[MAX_ANIMATIONS];
	for( int i=0; i<MAX_ANIMATIONS; i++ )
		animationData[i].animation = &data->allAnimations[i];

	while( data->running )
	{
		DWORD waitResult = WaitForSingleObject( data->produce, THREAD_TIMEOUT );
		if( waitResult == WAIT_OBJECT_0 )
		{
			double deltaTime = counter.getDeltaTime();

			luaBinds.update( data->controls, (float)deltaTime );
			data->workQueue->execute();

			for( int i=0; i<data->particleSystems->size(); i++ )
				data->particleSystems->at(i)->update( (float)deltaTime );

			collisionHandler.checkCollisions();

			std::string fps = "FPS: " + std::to_string(counter.getFPS()) 
				+ "\nVRAM: " + std::to_string(counter.getVramUsage()) + " MB" 
				+ "\nRAM: " + std::to_string(counter.getRamUsage()) + " MB";
			data->engine->print(fps, 0.0f, 0.0f);

			for( int i=0; i<boundAnimations; i++ )
			{
				animationData[i].dt = (float)deltaTime;
				//data->allAnimations[i].update(deltaTime);
				data->workQueue->add( updateAnimation, &animationData[i] );
			}
			data->workQueue->execute();

			ReleaseSemaphore( data->consume, 1, NULL );
		}
	}

	network.shutdown();
	luaBinds.unload();

	delete[] transforms;

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

	assets.load<TextureAsset>("Textures/buttonOptions.png");
	assets.load<TextureAsset>("Textures/buttonExit.png");
	assets.load<TextureAsset>("Textures/buttonReturn.png");
	assets.load<TextureAsset>("Textures/buttonFullscreenOn.png");
	assets.load<TextureAsset>("Textures/buttonFullscreenOff.png");
	Controls controls;	
	engine.addDebugger(Debugger::getInstance());
	glEnable(GL_DEPTH_TEST);

	GLFWwindow* w = window.getGlfwWindow();
	Inputs inputs(w);

	Camera camera(45.f, 1280.f / 720.f, 0.1f, 2000.f, &inputs);
	
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
	std::vector<AnimatedInstance> animModels;
	std::vector<Gear::ParticleSystem*> particleSystems;
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
		false,
		true,
		false,
		true
	};
	threadData.allTransforms = new TransformStruct[MAX_TRANSFORMS];
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

			engine.update();
			soundEngine.update(deltaTime);
			camera.updateBuffer();

			assets.upload();

			ReleaseSemaphore( threadData.produce, 1, NULL );
			// END OF CRITICAL SECTION

			if( threadData.queueModels )
				engine.queueDynamicModels( &models );

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

	delete[] threadData.allTransforms;
	delete[] threadData.allAnimations;

	for (int i = 0; i < particleSystems.size(); i++)
	{
		delete particleSystems[i];
	}

	glfwTerminate();


	return 0;
}
