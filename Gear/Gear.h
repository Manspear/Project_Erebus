#pragma once
#include "BaseIncludes.h"
#include "ShaderProgram.h"

namespace Gear
{
	class GearEngine {
	public:
		GEAR_API GearEngine();
		GEAR_API ~GearEngine();
		GEAR_API void draw();
		GEAR_API bool isRunning();
	private:
		//Window* window;
		std::vector<ShaderProgram*> allShaders;
	};
	GEAR_API double Add(double a, double b);
}