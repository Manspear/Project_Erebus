#include <iostream>
#include "Gear.h"
#include "Inputs.h"
#include "Importer.h"
#include "Window.h"
#include <ctime>

void calculateDt(float& dt, const clock_t& start, const clock_t& end, const int& ticks);

int main()
{
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
	Window *window = new Window();
	Gear::GearEngine *engine = new Gear::GearEngine();
	Importer::ModelImporter* importer = new Importer::ModelImporter();
	importer->load( "Models/newmolebat.mole" );

	// TEMPORARY: För att kunna rita ut modellen
	engine->vbo = importer->getVertexBuffer( 0 );
	engine->size = importer->getBufferSize( 0 );

	glEnable( GL_DEPTH_TEST );
	
	GLFWwindow* w = window->getGlfwWindow();
	Inputs inputs(w);
	clock_t c_start, c_end;
	float dt = 0, totalTicks = 0;
	float totalTime = 0;
	totalTicks++;
	
	
	

	
	glfwSetKeyCallback(w, Inputs::key_callback);
	glfwSetMouseButtonCallback(w, Inputs::mouse_button_callback);
	(w, Inputs::scroll_callback);
	
	Camera camera(45.f, 1280.f/720.f, 0.1f, 20.f);
	glm::vec3 point = {0,0,5};
	glm::vec3 dir = {0,0,-1};

	while (window->isWindowOpen()){
		c_start = clock();
		//std::cout << dt;

		// copy pastye till player klass senare!!! :D:D:D:D:D
		if (inputs.keyPressed(GLFW_KEY_W))
			point += dir * dt;
		if (inputs.keyPressed(GLFW_KEY_S))
			point -= dir * dt;

		// fixa rotation av kamera som ett mlg barn igen!- okej, då kör vi! p:
		glm::vec3 tempforward = {dir.x, 0, dir.z};
		glm::vec3 newAxisZ = glm::cross(tempforward, { 0,1,0 });
		
		dir = glm::rotateY(dir, (float)inputs.getDeltaPos().x/100.f);
		dir = glm::rotateX(dir, (float)inputs.getDeltaPos().y / 100.f);


		camera.camUpdate(point, dir);
		glfwPollEvents();
		inputs.update();
		engine->draw(&camera);
		window->update();
		c_end = clock();
		calculateDt(dt, c_start, c_end, totalTicks);

	}

	delete window;
	delete importer;
	glfwTerminate();
	delete engine;
	return 0;
}

void calculateDt(float& dt, const clock_t& start, const clock_t& end, const int& ticks) {
	
	dt = ((float)end - (float)start) / CLOCKS_PER_SEC;
	//std::cout << dt << std::endl;
}

