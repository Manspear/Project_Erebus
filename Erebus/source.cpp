#include <iostream>
#include "Gear.h"
#include "Inputs.h"
#include "Window.h"
#include <ctime>

void calculateDt(float& dt, const clock_t& start, const clock_t& end, const int& ticks);

int main()
{
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
	Window *window = new Window();
	Gear::GearEngine *engine = new Gear::GearEngine();
	
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
		if (inputs.keyPressed(GLFW_KEY_W))
			point += dir * dt;
		if (inputs.keyPressed(GLFW_KEY_S))
			point -= dir * dt;
		camera.camUpdate(point, dir);
		glfwPollEvents();
		inputs.update();
		engine->draw(&camera);
		window->update();
		c_end = clock();
		calculateDt(dt, c_start, c_end, totalTicks);

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

