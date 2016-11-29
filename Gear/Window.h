#pragma once
#include "BaseIncludes.h"


class Window
{
public:
	GEAR_API Window();
	GEAR_API ~Window();

	GEAR_API bool isWindowOpen();
	//Swap front and back buffers
	GEAR_API void update();
	GEAR_API GLFWwindow* getGlfwWindow();
	GLFWwindow * getWindow();
private:
	const int WINDOW_WIDTH = 1280, WINDOW_HEIGHT = 720;
	GLFWwindow* window;

	void initWindow();
	
};

