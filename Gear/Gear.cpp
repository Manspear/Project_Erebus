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

		std::string paths[3];
		paths[0] = "Shaders/forward.vert";
		paths[1] = "Shaders/forward.frag";
		paths[2] = "Shaders/forward.geom";
		GLuint types[3];

		types[0] = GL_VERTEX_SHADER;
		types[1] = GL_FRAGMENT_SHADER;
		types[2] = GL_GEOMETRY_SHADER;
		allShaders.push_back(new ShaderProgram(3, paths, types));

	}

	GearEngine::~GearEngine()
	{
		for (size_t i = 0; i < allShaders.size(); i++)
			delete allShaders.at(i);

		glfwTerminate();
	}

	void GearEngine::draw(Camera* camera) {
		/* Render here */
		allShaders.at( 0 )->use();

		Camera tempKamera = Camera(45.f, 1280.f / 720.f, 0.1f, 20.f);

		allShaders.at(0)->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
		allShaders.at(0)->addUniform(camera->getViewMatrix(), "viewMatrix");
		allShaders.at(0)->addUniform(camera->getPosition(), "viewPos");

		glBindBuffer( GL_ARRAY_BUFFER, vbo );
		glVertexAttribPointer( 0, 3, GL_FLOAT, GL_FALSE, sizeof( float ) * 22, 0 );
		glVertexAttribPointer( 1, 3, GL_FLOAT, GL_FALSE, sizeof( float ) * 22, (void*)(sizeof( float ) * 3) );
		glDrawArrays( GL_TRIANGLES, 0, size );
		glBindBuffer( GL_ARRAY_BUFFER, 0 );



		allShaders.at(0)->unUse();


	}

	bool GearEngine::isRunning(){
		return true;//window->isWindowOpen();
	}
	
}