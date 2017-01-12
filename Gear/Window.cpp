#include "Window.h"
#include "Inputs.h"

Window::Window()
{
	initWindow();
	glClearColor(0, 0, 0, 0);
}

void TW_CALL setEditorState(void * clientData)
{
	std::cout << "HELLO";
}

Window::~Window()
{
	glfwDestroyWindow(window);
}

void Window::initWindow()
{

	if (!glfwInit())
		std::cout << "Error init GLFW!" << std::endl;

	/* Initialize the library */

	/* Create a windowed mode window and its OpenGL context */
	window = glfwCreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, "Erebus", NULL, NULL);

	if (!window)
	{
		glfwTerminate();
		std::cout << "Error init WINDOW!" << std::endl;
	}

	// DEBUG: This moves the main window out of the way of the console window
	glfwSetWindowPos( window, 128, 64 );

	/* Make the window's context current */
	glfwMakeContextCurrent(window);

	//fixar inputs callback funktioner
	glfwSetKeyCallback(window, Inputs::key_callback);
	glfwSetCharCallback(window, Inputs::text_callback);
	glfwSetMouseButtonCallback(window, Inputs::mouse_button_callback);
	glfwSetScrollCallback(window, Inputs::scroll_callback);

	//Removers the cursor and enables unlimited movement :)
	glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);


	
	//glfwSetScrollCallback(window, glfw_scroll);    // - Directly redirect GLFW mouse wheel events to AntTweakBar
	//glfwSetKeyCallback(window, glfw_key);                         // - Directly redirect GLFW key events to AntTweakBar
#ifdef USE_ANT
	glfwSetCursorPosCallback(window, TwEventMousePosGLFW3);        // - Directly redirect GLFW mouse position events to AntTweakBar
	//glfwSetCharCallback(window, glfw_char);                      // - Directly redirect GLFW char events to AntTweakBar
#endif

																 //glfwSetMouseButtonCallback(window, (GLFWmousebuttonfun)TwEventMouseButtonGLFW3);
																 //glfwSetCursorPosCallback(window, (GLFWcursorposfun)TwEventMousePosGLFW3);
																 //glfwSetKeyCallback(window, (GLFWkeyfun))


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
