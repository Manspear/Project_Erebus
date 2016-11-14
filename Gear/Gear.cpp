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

		std::string paths[2];
		paths[0] = "Shaders/forward.vertex";
		paths[1] = "Shaders/forward.fragment";
		GLuint types[2];

		types[0] = GL_VERTEX_SHADER;
		types[1] = GL_FRAGMENT_SHADER;
		allShaders.push_back(new ShaderProgram(2, paths, types));
	
		glGenBuffers(1, &testScreen);
		float vertexData[18];
		vertexData[0] = -0.5; vertexData[1] = -1.0; vertexData[2] = 1.0;
		vertexData[3] = -0.5; vertexData[4] = 1.0; vertexData[5] = 1.0;
		vertexData[6] = 1.0; vertexData[7] = -1.0; vertexData[8] = 1.0;
		vertexData[9] = 1.0; vertexData[10] = -1.0; vertexData[11] = 1.0;
		vertexData[12] = 1.0; vertexData[13] = 1.0; vertexData[14] = 1.0;
		vertexData[15] = -1.0; vertexData[16] = 1.0; vertexData[17] = 1.0;
		glBindBuffer(GL_ARRAY_BUFFER, testScreen);
		glBufferData(GL_ARRAY_BUFFER, sizeof(vertexData), &vertexData[0], GL_STATIC_DRAW);
		glBindBuffer(GL_ARRAY_BUFFER, 0);
	}
	GearEngine::~GearEngine()
	{
		for (size_t i = 0; i < allShaders.size(); i++)
			delete allShaders.at(i);
		
		glfwTerminate();
	}

	void GearEngine::draw() {
		/* Render here */
		allShaders.at(0)->use();
		
		Camera tempKamera = Camera(45.f, 1280.f / 720.f, 0.f, 20.f);
		GLuint tjabba = glGetUniformLocation(allShaders.at(0)->getProgramID(), "VPmatrix");
		glUniformMatrix4fv(tjabba, 1, GL_FALSE, &tempKamera.getViewPers()[0][0]);

		glBindBuffer(GL_ARRAY_BUFFER, testScreen);
		glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 3, 0);
		glDrawArrays(GL_TRIANGLES, 0, 6);
		glBindBuffer(GL_ARRAY_BUFFER, 0);

		allShaders.at(0)->unUse();
		
		/* Swap front and back buffers */

		/* Poll for and process events */
		//glfwPollESvents();

	}

	bool GearEngine::isRunning() {
		return true;//window->isWindowOpen();
	}
	
}