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
	(w, Inputs::scroll_callback);
	
	Camera camera(45.f, 1280.f/720.f, 0.1f, 20.f);
	glm::vec3 point = {0,0,5};
	glm::vec3 dir = {0,0,-1};
	int i = 0;
	int a = 0;
	while (i++ < 100){
		a++;
		camera.setCamPosition(point);
		camera.setCamDirection(point + dir);

		glfwPollEvents();
		inputs.update();
		engine->draw(&camera);
		window->update();
	}
	std::cout << a;
	delete window;
	glfwTerminate();
	//delete engine;
	//system("pause");
	return 0;
}

