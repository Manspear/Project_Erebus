#pragma once
#include "GL\glew.h"
#include "GLFW\glfw3.h"
#include "Window.h"

struct MousePos {
	double x, y;
};

static bool keys[GLFW_KEY_LAST];
static MousePos mousePos;
static MousePos deltaPos;
static bool mouseButtons[GLFW_MOUSE_BUTTON_LAST];
static double scrollX;

class Inputs
{
private:
	GLFWwindow* window;
public:
	Inputs(GLFWwindow* w);
	void update();
	bool keyPressed(unsigned int key);
	bool buttonPressed(unsigned int button);
	MousePos getMousePos();

	MousePos getDeltaPos();

	static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods); //will be called whenever a key is pressed or released
	static void mouse_button_callback(GLFWwindow* window, int button, int action, int mods); //will be called whenever a mouse button is pressed or released
	static void scroll_callback(GLFWwindow* window, double xoffset, double yoffset); //will be called whenever someone scrolls(both touchpad and mouse)
	
};