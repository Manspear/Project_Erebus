#include "Window.h"
#include "Inputs.h"

Window::Window()
{

	window = 0;
	cursor = glfwCreateStandardCursor(GLFW_ARROW_CURSOR);

	/* Initialize the library */
	if (!glfwInit())
		std::cout << "Error init GLFW!" << std::endl;

	createWindow(false);
	glfwSwapInterval(0);
	glClearColor(0, 0, 0, 0);
}


Window::~Window()
{
	glfwDestroyWindow(window);
}

void Window::initWindow()
{
	if (!window)
	{
		glfwTerminate();
		std::cout << "Error init WINDOW!" << std::endl;
	}



	//fixar inputs callback funktioner
	glfwSetKeyCallback(window, Inputs::key_callback);
	glfwSetCharCallback(window, Inputs::text_callback);
	glfwSetMouseButtonCallback(window, Inputs::mouse_button_callback);
	glfwSetScrollCallback(window, Inputs::scroll_callback);
}

bool Window::isWindowOpen() 
{
	return !glfwWindowShouldClose(window);
}


void Window::update() 
{
	glfwSwapBuffers(window);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

GLFWwindow * Window::getGlfwWindow()
{
	return window;
}

GLFWwindow * Window::getWindow()
{
	return this->window;
}

void Window::changeCursorStatus(bool hidden) {
	if (hidden)
		glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
	else
		glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
}

GEAR_API void Window::createWindow(bool fullscreen)
{
	/* Create a windowed mode window and its OpenGL context */
	if (fullscreen)
	{
		if (!window)
		{
			window = glfwCreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, "Erebus", glfwGetPrimaryMonitor(), NULL);

			// DEBUG: This moves the main window out of the way of the console window
			glfwSetWindowPos(window, 0, 0);

			/* Make the window's context current */
			glfwMakeContextCurrent(window);
			initWindow();
		}
		else
		{
			int xpos, ypos;
			glfwGetWindowPos(window, &xpos, &ypos);
			int count;
			int monitor;

			GLFWmonitor** monitors = glfwGetMonitors(&count);
			if (xpos < 0)
			{
				monitor = (int)(-(xpos + MONITOR_WIDTH) / MONITOR_WIDTH);
			}
			else
			{
				monitor = (int)(xpos / MONITOR_WIDTH);
			}

			glfwSetWindowMonitor(window, monitors[monitor], 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, NULL);
			glfwSetCursor(window, cursor);
		}
	}
	else
	{
		if (!window)
		{
			window = glfwCreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, "Erebus", NULL, NULL);

			// DEBUG: This moves the main window out of the way of the console window
			glfwSetWindowPos(window, 512, 128);

			/* Make the window's context current */
			glfwMakeContextCurrent(window);
			initWindow();
		}
		else
		{
			glfwSetWindowMonitor(window, NULL, 512, 128, WINDOW_WIDTH, WINDOW_HEIGHT, NULL);
			glfwSetCursor(window, cursor);
		}
	}

	
}
