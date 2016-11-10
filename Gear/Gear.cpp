#include "Gear.h"

namespace Gear
{
	double Add(double a, double b)
	{
		return a + b;
	}

	GearEngine::GearEngine()
	{
		window = new Window();
	}
	GearEngine::~GearEngine()
	{
		delete window;
	}

	void GearEngine::draw() {
		/* Render here */
		

		/* Swap front and back buffers */
		window->update();

		/* Poll for and process events */
		//glfwPollESvents();

	}

	bool GearEngine::isRunning() {
		return window->isWindowOpen();
	}
}