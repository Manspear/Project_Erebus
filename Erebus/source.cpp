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
#include "Particles.h"
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



int startNetworkCommunication();
int startNetworkSending(Nurn::NurnEngine * pSocket);
int startNetworkReceiving(Nurn::NurnEngine * pSocket);
int addModelInstance(ModelAsset* asset);

std::thread networkThread;
bool networkActive = false;
bool networkHost = true;

bool running = true;


std::vector<ModelInstance> models;
//Importer::ModelAsset* molebat = assets->load<Importer::ModelAsset>("Models/moleRat.mtf");

int main()
{
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
	
	Importer::TextureAsset* redTexture = assets->load<Importer::TextureAsset>( "Textures/molerat_texturemap2.png" );
	Importer::TextureAsset* greenTexture = assets->load<Importer::TextureAsset>( "Textures/green.dds" );
	Importer::ImageAsset* heightMapAsset = assets->load<Importer::ImageAsset>("Textures/molerat_texturemap4.png");
	
	HeightMap *heightMap = new HeightMap();

	heightMap->loadHeightMap(heightMapAsset, true);
	engine->addStaticNonModel(heightMap->getStaticNonModel());
	
	/*unsigned int transformID = 0;
	unsigned int hitboxID = 0;
	SphereCollider sphere1 = SphereCollider(hitboxID++,transformID++,glm::vec3(3,3,3), 1);
	SphereCollider sphere2 = SphereCollider(hitboxID++, transformID++, glm::vec3(3, 3, 3), 1);
	AABBCollider aabb1 = AABBCollider(hitboxID++, 0, glm::vec3(-1,-1,-1), glm::vec3(1,1,1));
	AABBCollider aabb2 = AABBCollider(hitboxID++, 1, glm::vec3(-1, -1, -1), glm::vec3(1, 1, 1));

	CollisionHandler collisionHandler = CollisionHandler();

	collisionHandler.addHitbox(&sphere1);*/
	
	CollisionHandler collisionHandler;
	
	redTexture->bind();


	lua_State* L = luaL_newstate();
	luaL_openlibs(L);
	initLua(L);
	transformReg(L);
	collisionReg( L, &collisionHandler );
	if (luaL_dofile(L, "Scripts/test.lua"))
	{
		std::cout<<("%s\n", lua_tostring(L, -1)) << "\n";
	}

	for (int i = 0; i < nrOfTransforms; i++)
	{
		allTransforms[i].setHMap(heightMap);
	}
	controls.setControl(&allTransforms[0]);

//	engine->renderQueue.addModelInstance(terrain);
	/*Gear::Particle particle[10];
	Gear::Particle particle;

	for (int i = 0; i < maxParticles; i++)
	{
		particle.particleObject[i].pos = { rand() % 10, rand() % 5, rand() % 10 };
		particle.particleObject[i].color = { 1, 0, 0 };

		engine->renderQueue.particles.push_back( &particle );

	}*/
	glEnable( GL_DEPTH_TEST );
	
	GLFWwindow* w = window->getGlfwWindow();
	Inputs inputs(w);

	PerformanceCounter counter;
	double frameTime = 0.0;
	int frameCounter = 0;

	Camera camera(45.f, 1280.f/720.f, 0.1f, 2000.f, &inputs);

	float* transforms = new float[6 * nrOfTransforms];
	glm::vec3* lookAts = new glm::vec3[nrOfTransforms];
	if (networkActive)
	{
		networkThread = std::thread(startNetworkCommunication);
	}

	bool playerAlive = true;
	while (running && window->isWindowOpen())
	{

		//std::cout << heightMap->getPos(allTransforms[0].getPos().x, allTransforms[0].getPos().z) << std::endl;
		deltaTime = counter.getDeltaTime();
		inputs.update();

		if( playerAlive )
			controls.sendControls(inputs, L);

		/*for (size_t i = 0; i < maxParticles; i++)
		{
			particle.particleObject[i].pos += glm::vec3(deltaTime, 0, 0);
		}*/

		lua_getglobal(L, "updateBullets");
		lua_pushnumber(L, deltaTime);
		lua_pcall(L, 1, 0, 0);


		camera.follow(controls.getControl()->getPos(), controls.getControl()->getLookAt(), abs(inputs.getScroll())+5.f);
	
		if( playerAlive )
		{
			lua_getglobal( L, "Update" );
			lua_pushnumber( L, deltaTime );
			if( lua_pcall( L, 1, 1, 0 ) )
				std::cout << lua_tostring( L, -1 ) << std::endl;
			playerAlive = lua_toboolean( L, -1 );
		}
		else
			std::cout << "Game Over" << std::endl;

		for (int i = 0; i < nrOfTransforms; i++) 
		{
			int index = i * 6;
			glm::vec3 pos = allTransforms[i].getPos();
			glm::vec3 rot = allTransforms[i].getRotation();
			transforms[index] = pos.x;
			transforms[index + 1] = pos.y;
			transforms[index + 2] = pos.z;
			transforms[index + 3] = rot.x;
			transforms[index + 4] = rot.y;
			transforms[index + 5] = rot.z;
		}

		for (int i = 0; i < boundTrans; i++)
		{
			lookAts[i] = allTransforms[i].getLookAt();
		}
		engine->renderQueue.update(transforms, nullptr, boundTrans, lookAts);

		engine->draw(&camera, &models);
		window->update();	

		if( inputs.keyPressed( GLFW_KEY_ESCAPE ) )
			running = false;
		if (inputs.keyPressedThisFrame(GLFW_KEY_1))
			engine->setDrawMode(1);
		else if( inputs.keyPressedThisFrame( GLFW_KEY_2 ) )
			engine->setDrawMode(2);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_3))
			engine->setDrawMode(3);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_4))
			engine->setDrawMode(4);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_5))
			engine->setDrawMode(5);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_6))
			engine->setDrawMode(6);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_7))
			engine->setDrawMode(7);

		//Display FPS:
		frameCounter++;
		frameTime += deltaTime;
		if (frameTime >= 1.0)
		{
			double fps = double(frameCounter) / frameTime;
			std::cout << "FPS: " << fps << std::endl;
			frameTime -= 1.0;
			frameCounter = 0;
		}

		//Collisions
		collisionHandler.checkCollisions();
	}
	delete[] transforms;
	delete[] lookAts;
	delete heightMap;

	if (networkActive)
	{
		networkThread.join();
	}

	delete[] allTransforms;
	lua_close(L);
	delete window;
	glfwTerminate();
	delete engine;
	return 0;
}


int addModelInstance(ModelAsset* asset)
{

	int result = engine->renderQueue.generateWorldMatrix();

	int index = -1;
	for (int i = 0; i < models.size() && index < 0; i++)
		if (models[i].asset == asset)
			index = i;

	if (index < 0)
	{
		ModelInstance instance;
		instance.asset = asset;

		index = models.size();
		models.push_back(instance);
	}

	models[index].worldIndices.push_back(result);


	return result;
}

void allocateTransforms(int n)
{
	if(allTransforms!= nullptr)
		delete allTransforms;
	allTransforms = new Transform[n];
	engine->renderQueue.allocateWorlds(n);
}


int startNetworkCommunication()
{
	// initialize socket layer

	Nurn::NurnEngine network;

	if (!network.Initialize(127, 0, 0, 1))
	{
		printf("failed to initialize sockets\n");
		return 1;
	}

	if (networkHost)
	{
		startNetworkReceiving(&network);
	}
	else
	{
		startNetworkSending(&network);
	}

	printf("Closing socket on port\n");
	network.Shutdown();

	return 0;
}

int startNetworkSending(Nurn::NurnEngine * pNetwork)
{
	while (running && window->isWindowOpen())
	{
		const char data[] = "hello world!";

		pNetwork->Send(data, sizeof(data));

		Sleep(250);
	}

	return 0;
}

int startNetworkReceiving(Nurn::NurnEngine * pNetwork)
{
	while (running && window->isWindowOpen())
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
	}

	return 0;
}