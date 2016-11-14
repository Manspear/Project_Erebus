#include <iostream>
#include "Gear.h"
#include "Inputs.h"
#include "Window.h"

int main()
{
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
	Window *window = new Window();
	Gear::GearEngine *engine = new Gear::GearEngine();

	GLFWwindow* w = window->getGlfwWindow();
	Inputs inputs(w);
	

	glfwSetKeyCallback(w, Inputs::key_callback);
	glfwSetMouseButtonCallback(w, Inputs::mouse_button_callback);
	glfwSetScrollCallback(w, Inputs::scroll_callback);
	

	while (engine->isRunning()) {

		//inputs.update();
		engine->draw();
		window->update();
	}

	delete engine;
	//system("pause");
	return 0;
}

