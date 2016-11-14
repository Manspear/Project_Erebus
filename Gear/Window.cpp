#include "Window.h"


Window::Window()
{
	initWindow();
	glClearColor(.5f, .5f, 1, 0);
}


Window::~Window()
{
}

void Window::initWindow()
{
	/* Initialize the library */
	if (!glfwInit())
		std::cout << "Error init GLFW!" << std::endl;

	/* Create a windowed mode window and its OpenGL context */
	window = glfwCreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, "Erebus", NULL, NULL);
	if (!window)
	{
		glfwTerminate();
		std::cout << "Error init WINDOW!" << std::endl;
	}

	/* Make the window's context current */
	glfwMakeContextCurrent(window);
	glewInit();
}

bool Window::isWindowOpen() {
	return !glfwWindowShouldClose(window);
}


void Window::update() 
{
	glfwSwapBuffers(window);
	glfwPollEvents();
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}