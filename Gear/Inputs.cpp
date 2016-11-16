#include "Inputs.h"


Inputs::Inputs(GLFWwindow* w)
{
	deltaPos = {0.0 , 0.0};
	
	scrollX = 0;
	for (size_t i = 0; i < GLFW_KEY_LAST; i++)
	{
		keys[i] = false;
		keysPressedThisFrame[i] = false;
		keysReleasedThisFrame[i] = false;
	}
	for (size_t i = 0; i < GLFW_MOUSE_BUTTON_LAST; i++)
	{
		mouseButtons[i] = false;
		mouseButtonsPressedThisFrame[i] = false;
		mouseButtonsReleasedThisFrame[i] = false;
	}
	window = w;

	glfwGetCursorPos(window, &mousePos.x, &mousePos.y);

	
}

Inputs::~Inputs()
{
}

void Inputs::update()
{
	MousePos newPos;
	glfwGetCursorPos(window, &newPos.x, &newPos.y);
	deltaPos = { mousePos.x - newPos.x, mousePos.y - newPos.y };
	mousePos = newPos;
	for (size_t i = 0; i < GLFW_KEY_LAST; i++)
	{
		keysPressedThisFrame[i] = false;
		keysReleasedThisFrame[i] = false;
	} 
	for (size_t i = 0; i < GLFW_MOUSE_BUTTON_LAST; i++)
	{
		mouseButtonsPressedThisFrame[i] = false;
		mouseButtonsReleasedThisFrame[i] = false;
	}
	glfwPollEvents();
}

bool Inputs::keyPressed(unsigned int key)
{
	return keys[key];
}

bool Inputs::keyPressedThisFrame(unsigned int key)
{
	return keysPressedThisFrame[key];
}

GEAR_API bool Inputs::keyReleasedThisFrame(unsigned int key)
{
	return keysReleasedThisFrame[key];
}

bool Inputs::buttonPressed(unsigned int button)
{
	return mouseButtons[button];
}

bool Inputs::buttonPressedThisFrame(unsigned int button)
{
	return mouseButtonsPressedThisFrame[button];
}

GEAR_API bool Inputs::buttonReleasedThisFrame(unsigned int button)
{
	return mouseButtonsReleasedThisFrame[button];
}

MousePos Inputs::getMousePos()
{
	return mousePos;
}

MousePos Inputs::getDeltaPos()
{
	return deltaPos;
}

void Inputs::key_callback(GLFWwindow * window, int key, int scancode, int action, int mods)
{	
	keys[key] = action > 0;
	if (action == GLFW_PRESS) {
		std::cout << "key pressed" << std::endl;
		keysPressedThisFrame[key] = true;
	}
	if (action == GLFW_RELEASE) {
		std::cout << "key released" << std::endl;
		keysReleasedThisFrame[key] = true;
	}
}

void Inputs::mouse_button_callback(GLFWwindow * window, int button, int action, int mods)
{
	mouseButtons[button] = action > 0;
	if (action == GLFW_PRESS) {
		std::cout << "button pressed" << std::endl;
		mouseButtonsPressedThisFrame[button] = true;
	}
	if (action == GLFW_RELEASE) {
		std::cout << "button released" << std::endl;
		mouseButtonsReleasedThisFrame[button] = true;
	}
}

void Inputs::scroll_callback(GLFWwindow * window, double xoffset, double yoffset)
{
	scrollX += xoffset;
}