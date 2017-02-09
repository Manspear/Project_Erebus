#pragma once
#include "BaseIncludes.h"


class Window
{
public:
	GEAR_API Window();
	GEAR_API ~Window();

	GEAR_API bool isWindowOpen();
	//Swap front and back buffers
	GEAR_API void update();
	GEAR_API GLFWwindow* getGlfwWindow();
	GLFWwindow * getWindow();
	GEAR_API void changeCursorStatus(bool hidden);
	GEAR_API void createWindow(bool fullscreen = false);
private:
	GLFWwindow* window;
	GLFWcursor* cursor;

	const static int MONITOR_WIDTH = 1920;
	bool currentFullscreen = true;

	void initWindow();
	
};

