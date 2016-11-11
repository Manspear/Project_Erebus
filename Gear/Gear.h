#pragma once
#include "Window.h"
#include "RenderQueue.h"

#include <windows.h>
#include <stdlib.h>
#include <string.h>
#include <tchar.h>
#include <stdio.h>
//#include "Windows.h"
#include "Wincon.h"

#include <GLFW/glfw3.h>

#ifdef GEAR_EXPORTS  
#define GEAR_API __declspec(dllexport)   
#else  
#define GEAR_API __declspec(dllimport)   
#endif

namespace Gear
{
	class GearEngine {
	public:
		GEAR_API GearEngine();
		GEAR_API ~GearEngine();
		GEAR_API void draw();
		GEAR_API bool isRunning();
	private:
		Window* window;
		RenderQueue* renderQ;
	};
	GEAR_API double Add(double a, double b);
}