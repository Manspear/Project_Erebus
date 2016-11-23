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
		renderElements[2]->id = RenderQueueId(PARTICLES, 0);
		//------------

		renderQueue.updateUniforms(camera);
			
		renderQueue.process( renderElements );

	}


	bool GearEngine::isRunning(){
		return true;//window->isWindowOpen();
	}
	
}