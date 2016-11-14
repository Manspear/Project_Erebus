#pragma once
#include "BaseIncludes.h"


class Window
{
public:
	Window();
	~Window();

	bool isWindowOpen();
	//Swap front and back buffers
	void update();
	GLFWwindow* getGlfwWindow();
private:
	const int WINDOW_WIDTH = 1280, WINDOW_HEIGHT = 720;
	GLFWwindow* window;

	void initWindow();
	
};

