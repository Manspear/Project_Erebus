#include "Gear.h"
#include "BaseIncludes.h"

struct ScreenVertex
{
	float x, y, s, t;
};
GLuint testScreen;
namespace Gear
{
	GearEngine::GearEngine()
	{

		glewInit();

		renderQueue.init();

	}

	GearEngine::~GearEngine()
	{
		glfwTerminate();
	}

	void GearEngine::draw(Camera* camera) {
		/* Render here */
		
		//TEMP--------
		renderElements[0]->id = RenderQueueId(FORWARD, 0);
		renderElements[1]->id = RenderQueueId(FORWARD, 0);
		//------------

		renderQueue.updateUniforms(camera);
		//((Model*)renderElements[2])->shader = allShaders[0];
		renderQueue.process( renderElements );

	}

	bool GearEngine::isRunning(){
		return true;//window->isWindowOpen();
	}
	
}