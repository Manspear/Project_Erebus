#pragma once
#include "BaseIncludes.h"
#include <memory>
#include <AntTweakBar.h>

#define USE_ANT

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

	static inline void TwEventMousePosGLFW3(GLFWwindow* window, double xpos, double ypos) { TwMouseMotion(int(xpos), int(ypos)); }

	GLFWwindow* window;
	GLFWcursor* cursor;

	const static int MONITOR_WIDTH = 1920;
	bool currentFullscreen = true;

	void initWindow();
	
};

