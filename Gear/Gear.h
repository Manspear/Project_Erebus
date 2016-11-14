#pragma once
#include "Window.h"
#include "BaseIncludes.h"
#include "ShaderProgram.h"
#include "Camera.h"

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

		GLuint vbo;
		int size;

	private:
		Window* window;
		std::vector<ShaderProgram*> allShaders;
	};
	GEAR_API double Add(double a, double b);
}