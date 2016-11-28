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

	void GearEngine::draw(Camera* camera)
	{
		/* Render here */
		
		//TEMP--------
		//renderElements[0]->id = RenderQueueId(FORWARD, 0);
		//renderElements[1]->id = RenderQueueId(FORWARD, 0);
		//renderElements[3]->id = RenderQueueId(FORWARD, 0);
		//------------

		renderQueue.updateUniforms(camera);
		renderQueue.draw();
		GLfloat positions[] = { 0.5, 0.5, 0.0 };


		//glVertexAttribPointer( 0, 3, GL_FLOAT, GL_FALSE, sizeof( float ) * 22, 0 );
		//glVertexAttribPointer( 1, 3, GL_FLOAT, GL_FALSE, sizeof( float ) * 22, (void*)(sizeof( float ) * 3) );
		//glDrawArrays( GL_TRIANGLES, 0, size );

		glVertexAttribPointer(0, 1, GL_FLOAT, GL_FALSE, sizeof(GLfloat), 0);
		glDrawArrays(GL_POINTS, 0, 1);
		glBufferData(GL_ARRAY_BUFFER, sizeof(positions), positions, GL_STATIC_DRAW);


		//renderQueue.process( renderElements );

	}

	GEAR_API void GearEngine::drawParticles(Particle * particles)
	{
		/*return GEAR_API void();*/
	}


	bool GearEngine::isRunning(){
		return true;//window->isWindowOpen();
	}
	
}