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

		GLuint internalFormat[] = {GL_RGB16F,GL_RGB16F,GL_RGBA};
		GLuint format[] = { GL_RGB,GL_RGB,GL_RGBA };
		GLuint attachment[] = { GL_COLOR_ATTACHMENT0, GL_COLOR_ATTACHMENT1, GL_COLOR_ATTACHMENT2 };
		GLuint type[] = { GL_FLOAT, GL_FLOAT, GL_UNSIGNED_INT};

		gBuffer.deferredInit(3, WINDOW_WIDTH, WINDOW_HEIGHT, internalFormat, format, attachment, type);
		quadShader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "quad");
	}

	GearEngine::~GearEngine()
	{

		glfwTerminate();
		delete quadShader;
	}

	void GearEngine::draw(Camera* camera)
	{
		/* Render here */
		
		//TEMP--------
		//renderElements[0]->id = RenderQueueId(FORWARD, 0);
		//renderElements[1]->id = RenderQueueId(FORWARD, 0);
		//renderElements[3]->id = RenderQueueId(FORWARD, 0);
		//------------
		//gBuffer.use();
		//glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		renderQueue.updateUniforms(camera);
		renderQueue.draw();
		//GLfloat positions[] = { 0.5, 0.5, 0.0 };
		//gBuffer.unUse();

		//glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

		//quadShader->use();

		//gBuffer.BindTexturesToProgram(quadShader, "texture", 0);
		//drawQuad();

		//quadShader->unUse();

		//glVertexAttribPointer( 0, 3, GL_FLOAT, GL_FALSE, sizeof( float ) * 22, 0 );
		//glVertexAttribPointer( 1, 3, GL_FLOAT, GL_FALSE, sizeof( float ) * 22, (void*)(sizeof( float ) * 3) );
		//glDrawArrays( GL_TRIANGLES, 0, size );

		/*glVertexAttribPointer(0, 1, GL_FLOAT, GL_FALSE, sizeof(GLfloat), 0);
		glDrawArrays(GL_POINTS, 0, 1);
		glBufferData(GL_ARRAY_BUFFER, sizeof(positions), positions, GL_STATIC_DRAW);*/


		//renderQueue.process( renderElements );

	}

	bool GearEngine::isRunning(){
		return true;//window->isWindowOpen();
	}

	void GearEngine::drawQuad()
	{
		if (quadVAO == 0) {
			GLfloat quadVertices[] = {
				-1.0f, 1.0f, 0.0f, 0.0f, 1.0f,
				-1.0f, -1.0f, 0.0f, 0.0f, 0.0f,
				1.0f, 1.0f, 0.0f, 1.0f, 1.0f,
				1.0f, -1.0f, 0.0f, 1.0f, 0.0f,
			};

			glGenVertexArrays(1, &quadVAO);
			glGenBuffers(1, &quadVBO);
			glBindVertexArray(quadVAO);
			glBindBuffer(GL_ARRAY_BUFFER, quadVBO);
			glBufferData(GL_ARRAY_BUFFER, sizeof(quadVertices), &quadVertices, GL_STATIC_DRAW);
			glEnableVertexAttribArray(0);
			glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(GLfloat), (GLvoid*)0);
			glEnableVertexAttribArray(1);
			glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(GLfloat), (GLvoid*)(3 * sizeof(GLfloat)));
		}

		glBindVertexArray(quadVAO);
		glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
		glBindVertexArray(0);
	}
	
}