#include <iostream>
#include "Nurn.hpp"
#include "Gear.h"
#include "Inputs.h"
#include "Assets.h"
#include "ModelAsset.h"
#include "TextureAsset.h"
#include "Window.h"
#include <ctime>
#include "Transform.h"
#include "PerformanceCounter.h"
#include "ParticleSystem.h"
#include "SphereCollider.h"
#include "AABBCollider.h"
#include "CollisionHandler.h"
#include "Controls.h"
#include <lua\lua.hpp>
#include "LuaBinds.h"
#include <String>
#include <thread>
#include "HeightMap.h"
#include "Ray.h"
#include "FontAsset.h"

int startNetworkCommunication( Window* window );
int startNetworkSending(Nurn::NurnEngine * pSocket, Window* window);
int startNetworkReceiving(Nurn::NurnEngine * pSocket, Window* window);

std::thread networkThread;
bool networkActive = false;
bool networkHost = true;

bool running = true;

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

	Importer::ModelAsset* moleman = assets.load<ModelAsset>( "Models/moleman5.model" );
	//engine.queue.animationObject.setAsset(moleman);

	std::vector<ModelInstance> models;
	std::vector<AnimatedInstance> animatedModels;
	engine.addDebugger(Debugger::getInstance());
	Debug* tempDebug = Debugger::getInstance();

	double deltaTime = 0.0;
	
	//Collision handler
	CollisionHandler collisionHandler;
	collisionHandler.setTransforms(transforms);
	SphereCollider sphere1 = SphereCollider(-1,glm::vec3(0,0,0), 5.0f); // hardcoded hitboxes
	SphereCollider sphere2 = SphereCollider(-2, glm::vec3(3,0,0),1.0f);
	SphereCollider sphere3 = SphereCollider(-3,glm::vec3(4,0,0), 1.0f);
	collisionHandler.addHitbox(&sphere1,0);
	collisionHandler.addHitbox(&sphere2,1);
	collisionHandler.addHitbox(&sphere3,2);
	collisionHandler.setDebugger(Debugger::getInstance());

	glEnable(GL_DEPTH_TEST);

	GLFWwindow* w = window.getGlfwWindow();
	Inputs inputs(w);

	PerformanceCounter counter;
	counter.startCounter();
	double frameTime = 0.0;
	int frameCounter = 0;
	Camera camera(45.f, 1280.f / 720.f, 0.1f, 2000.f, &inputs);

	engine.bindTransforms(&allTransforms, &boundTransforms);
	if (networkActive)
	{
		networkThread = std::thread(startNetworkCommunication, &window );
	}

	LuaBinds luaBinds;
	luaBinds.load( &engine, &assets, &collisionHandler, &controls, transforms, &boundTransforms, &models, &animatedModels, &camera);
	bool playerAlive = true;
	
	//Importer::TextureAsset* moleratTexture = assets.load<Importer::TextureAsset>("Textures/molerat_texturemap2.png");
	//Importer::TextureAsset* moleratTexture2 = assets.load<Importer::TextureAsset>("Textures/red.png");
	//for (size_t i = 0; i < models.size(); i++)
	//{
	//	models.at(i).texAsset = moleratTexture;
	//}
	//models.at(1).texAsset = moleratTexture2;


	std::string out = "FPS: -1";
	double updateRate = 4.0;

	while (running && window.isWindowOpen())
	{
		deltaTime = counter.getDeltaTime();
		inputs.update();
		controls.update(&inputs);
		luaBinds.update( &controls, deltaTime );
		//float angle = asinf(dir.y);
		//camera.follow(controls.getControl()->getPos(), dir, abs(inputs.getScroll())+5.f, -angle);
			
		engine.queueDynamicModels(&models);
		engine.queueAnimModels(&animatedModels);

		//Collisions
		collisionHandler.checkCollisions();
		//collisionHandler.drawHitboxes();
		//collisionHandler.printCollisions();

		frameCounter++;
		frameTime += deltaTime;

		if (frameTime > 1/updateRate)
		{
			int fps = double(frameCounter) / frameTime;
			out = "FPS: " + std::to_string(fps);
			frameCounter = 0;
			frameTime -= 1 / updateRate;
		}


		engine.print(out, 0.f, 720.f);

		engine.draw(&camera);

		lua_State* lua;
		if( inputs.keyPressed( GLFW_KEY_ESCAPE ) )
			running = false;
		if (inputs.keyPressedThisFrame(GLFW_KEY_1))
			engine.setDrawMode(1);
		else if( inputs.keyPressedThisFrame( GLFW_KEY_2 ))
			engine.setDrawMode(2);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_3))
			engine.setDrawMode(3);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_4))
			engine.setDrawMode(4);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_5))
			engine.setDrawMode(5);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_6))
			engine.setDrawMode(6);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_7))
			engine.setDrawMode(7);

		window.update();
	}

	luaBinds.unload();
	delete[] allTransforms;
	delete[] transforms;
	if (networkActive)
	{
		networkThread.join();
	}

	glfwTerminate();
	return 0;
}

int startNetworkCommunication( Window* window )
{
	// initialize socket layer

	Nurn::NurnEngine network;
	Nurn::NurnEngine network2;

	if (networkHost)
	{
		if (!network.InitializeHost())
		{
			printf("failed to initialize sockets\n");
			return 1;
		}

		Sleep(250);

		if (!network2.InitializeClient(127, 0, 0, 1, 35500, 35501))
		{
			printf("failed to initialize sockets\n");
			return 1;
		}

		if (!network.AcceptCommunication())
		{
			printf("failed to accept connection\n");
			return 1;
		}

		while (running && window->isWindowOpen())
		{
			startNetworkSending(&network2, window);
			startNetworkReceiving(&network, window);
		}
	}
	else
	{
		if (!network.InitializeClient(127,0,0,1,35501))
		{
			printf("failed to initialize sockets\n");
			return 1;
		}
		startNetworkSending(&network, window);
	}

	printf("Closing socket on port\n");
	network.Shutdown();
	network2.Shutdown();

	return 0;
}

int startNetworkSending(Nurn::NurnEngine * pNetwork, Window* window)
{
	const char data[] = "hello world!";

	pNetwork->Send(data, sizeof(data));

	Sleep(250);

	return 0;
}

int startNetworkReceiving(Nurn::NurnEngine * pNetwork, Window* window)
{
	printf("Recieving package\n");
	Sleep(250);
	Nurn::Address sender;
	unsigned char buffer[256];
	int bytes_read = pNetwork->Receive(sender, buffer, sizeof(buffer));
	if (bytes_read)
	{
		printf("received packet from %d.%d.%d.%d:%d (%d bytes)\n",
			sender.GetA(), sender.GetB(), sender.GetC(), sender.GetD(),
			sender.GetPort(), bytes_read);
		std::cout << buffer << std::endl;
	}

	return 0;
}