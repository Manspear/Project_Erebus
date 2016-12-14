#include "Inputs.h"

bool Inputs::keys[GLFW_KEY_LAST] = {false};
bool Inputs::keysPressedThisFrame[GLFW_KEY_LAST] = { false };
bool Inputs::keysReleasedThisFrame[GLFW_KEY_LAST] = { false };
MousePos Inputs::mousePos = { 0.0, 0.0 };
MousePos Inputs::deltaPos = { 0.0, 0.0 };
bool Inputs::mouseButtons[GLFW_MOUSE_BUTTON_LAST] = { false };
bool Inputs::mouseButtonsPressedThisFrame[GLFW_MOUSE_BUTTON_LAST] = { false };
bool Inputs::mouseButtonsReleasedThisFrame[GLFW_MOUSE_BUTTON_LAST] = { false };
double Inputs::dScrollY = 0.0;
double Inputs::scrollY = 0.0;

Inputs::Inputs(GLFWwindow* w)
{
	deltaPos = {0.0 , 0.0};
	
	scrollY = 0;
	dScrollY = 0;
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
	
	dScrollY = 0;
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

GEAR_API int Inputs::getScroll()
{
	return scrollY;
}

GEAR_API int Inputs::getDeltaScroll()
{
	return dScrollY;
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
		keysPressedThisFrame[key] = true;
	}
	if (action == GLFW_RELEASE) {
		keysReleasedThisFrame[key] = true;
	}
}

void Inputs::mouse_button_callback(GLFWwindow * window, int button, int action, int mods)
{
	mouseButtons[button] = action > 0;
	if (action == GLFW_PRESS) {
		mouseButtonsPressedThisFrame[button] = true;
	}
	if (action == GLFW_RELEASE) {
		mouseButtonsReleasedThisFrame[button] = true;
	}
}

void Inputs::scroll_callback(GLFWwindow * window, double xoffset, double yoffset)
{
	scrollY += yoffset;
	dScrollY = yoffset;
}
