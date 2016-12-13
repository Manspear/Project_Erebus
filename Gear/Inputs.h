#pragma once
#include "BaseIncludes.h"

struct MousePos {
	double x, y;
};


class Inputs
{
public:
	static bool keys[GLFW_KEY_LAST];
	static bool keysPressedThisFrame[GLFW_KEY_LAST];
	static bool keysReleasedThisFrame[GLFW_KEY_LAST];
	static MousePos mousePos;
	static MousePos deltaPos;
	static bool mouseButtons[GLFW_MOUSE_BUTTON_LAST];
	static bool mouseButtonsPressedThisFrame[GLFW_MOUSE_BUTTON_LAST];
	static bool mouseButtonsReleasedThisFrame[GLFW_MOUSE_BUTTON_LAST];
	static double scrollY;
	static double dScrollY;

private:
	GLFWwindow* window;


public:
	GEAR_API Inputs(GLFWwindow* w);
	GEAR_API ~Inputs();
	GEAR_API void update();
	GEAR_API bool keyPressed(unsigned int key);
	GEAR_API bool keyPressedThisFrame(unsigned int key);
	GEAR_API bool keyReleasedThisFrame(unsigned int key);
	GEAR_API bool buttonPressed(unsigned int button);
	GEAR_API bool buttonPressedThisFrame(unsigned int button);
	GEAR_API bool buttonReleasedThisFrame(unsigned int button);
	GEAR_API int getScroll();
	GEAR_API int getDeltaScroll();
	GEAR_API MousePos getMousePos();
	GEAR_API MousePos getDeltaPos();

	GEAR_API static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods); //will be called whenever a key is pressed or released
	GEAR_API static void mouse_button_callback(GLFWwindow* window, int button, int action, int mods); //will be called whenever a mouse button is pressed or released
	GEAR_API static void scroll_callback(GLFWwindow* window, double xoffset, double yoffset); //will be called whenever someone scrolls(both touchpad and mouse)
	
};