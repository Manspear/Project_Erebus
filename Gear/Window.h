#pragma once
#include <GLFW/glfw3.h>
#include <iostream>

class Window
{
public:
	Window();
	~Window();

	bool isWindowOpen();
	//Swap front and back buffers
	void update();
private:
	const int WINDOW_WIDTH = 1280, WINDOW_HEIGHT = 720;
	GLFWwindow* window;

	void initWindow();
	
};

