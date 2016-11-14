#include "Inputs.h"


Inputs::Inputs(GLFWwindow* w)
{
	deltaPos = {0.0 , 0.0};
	
	scrollX = 0;
	for (size_t i = 0; i < GLFW_KEY_LAST; i++)
	{
		keys[i] = false;
	}
	for (size_t i = 0; i < GLFW_MOUSE_BUTTON_LAST; i++)
	{
		mouseButtons[i] = false;
	}
	window = w;

	glfwGetCursorPos(window, &mousePos.x, &mousePos.y);

	
}

void Inputs::update()
{
	MousePos newPos;
	glfwGetCursorPos(window, &newPos.x, &newPos.y);
	deltaPos = { mousePos.x - newPos.x, mousePos.y - newPos.y };
	mousePos = newPos;
}

bool Inputs::keyPressed(unsigned int key)
{
	return keys[key];
}

bool Inputs::buttonPressed(unsigned int button)
{
	return mouseButtons[button];
}

MousePos Inputs::getMousePos()
{
	return mousePos;
}

void Inputs::key_callback(GLFWwindow * window, int key, int scancode, int action, int mods)
{
	std::cout << action << " tryckt knapp" << std::endl;
	keys[key] = action ;
}

void Inputs::mouse_button_callback(GLFWwindow * window, int button, int action, int mods)
{
	mouseButtons[button] = action;
}

void Inputs::scroll_callback(GLFWwindow * window, double xoffset, double yoffset)
{
	scrollX += xoffset;
}
