#include <iostream>
#include "Gear.h"
#include "Inputs.h"
#include "Importer.h"
#include "Window.h"
#include <ctime>
#include "SphereCollider.h"

void calculateDt(float& dt, const clock_t& start, const clock_t& end, const int& ticks);

int main()
{
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
	Window *window = new Window();
	Gear::GearEngine *engine = new Gear::GearEngine();

	SphereCollider sphere1 = SphereCollider(glm::vec3(5,5,5),3.0f);
	SphereCollider sphere2 = SphereCollider(1,2,3,4);

	sphere1.sphereToSphereCollision(&sphere2);

	Importer::ModelAsset molebat, skyboxAsset;
	molebat.load( "Models/newmolebat.mole" );
	skyboxAsset.load("Models/skybox.mole");

	Gear::Model skybox;
	skybox.setModelAsset(&skyboxAsset);
	skybox.worldMatrix[0][0] = 1900;
	skybox.worldMatrix[1][1] = 1900;
	skybox.worldMatrix[2][2] = 1900;
	skybox.worldMatrix[3][3] = 1;

	skybox.worldMatrix[3][1] = 3;

	Gear::Model model;
	model.setModelAsset( &molebat );
	model.worldMatrix[0][0] = 1;
	model.worldMatrix[1][1] = 1;
	model.worldMatrix[2][2] = 1;
	model.worldMatrix[3][3] = 1;

	model.worldMatrix[3][0] = 3;

	Gear::Model model2;
	model2.setModelAsset( &molebat );
	model2.worldMatrix[0][0] = 1;
	model2.worldMatrix[1][1] = 1;
	model2.worldMatrix[2][2] = 1;
	model2.worldMatrix[3][3] = 1;

	model2.worldMatrix[3][0] = -3;

	// TEMP: Ritar ut modellen fr�n Gear.
	engine->renderElements.push_back( &model );
	engine->renderElements.push_back( &model2 );
	engine->renderElements.push_back(&skybox);


	glEnable( GL_DEPTH_TEST );
	
	GLFWwindow* w = window->getGlfwWindow();
	Inputs inputs(w);
	clock_t c_start, c_end;
	float dt = 0;
	int totalTicks = 0;
	float totalTime = 0;
	totalTicks++;
	


	

	Camera camera(45.f, 1280.f/720.f, 0.1f, 2000.f, &inputs);
	//glm::vec3 point = {0,0,5};
	glm::vec3 direction = {0,0,-1};

	
	float horizAngle = 3.14f;
	float vertAngle = 0;
	float speed = 8.f;

	bool freeCam = false;

	bool running = true;
	glm::vec3 point = {0,0,0};
	while (running && window->isWindowOpen()){
		c_start = clock();
		inputs.update();
		skybox.worldMatrix[3][0] = camera.getPosition().x;
		skybox.worldMatrix[3][1] = camera.getPosition().y-800;
		skybox.worldMatrix[3][2] = camera.getPosition().z;
		//camera.follow(point, glm::vec3(sinf(1/*angle*/), 0, cosf(1/*angle*/)), abs(inputs.getScroll()));
		camera.camUpdate(point, direction, dt);
		engine->draw(&camera);
		window->update();
		c_end = clock();
		calculateDt(dt, c_start, c_end, totalTicks);

		if( inputs.keyPressed( GLFW_KEY_ESCAPE ) )
			running = false;
	}

	delete window;
	glfwTerminate();
	delete engine;
	return 0;
}

void calculateDt(float& dt, const clock_t& start, const clock_t& end, const int& ticks) {
	
	dt = ((float)end - (float)start) / CLOCKS_PER_SEC;
	//std::cout << dt << std::endl;
}

