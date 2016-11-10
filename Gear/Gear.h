#pragma once
#include "Window.h"
#include "BaseIncludes.h"
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
	};
	GEAR_API double Add(double a, double b);
}