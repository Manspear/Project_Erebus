#include "Gear.h"
#include "BaseIncludes.h"

struct ScreenVertex
{
	float x, y, s, t;
};

GLuint testScreen;
GLuint testScreen2;
namespace Gear
{
	double Add(double a, double b)
	{
		return a + b;
	}
	void derp(GLFWwindow * window, int key, int scancode, int action, int mods) {
		std::cout << "print";
	}

	GearEngine::GearEngine()
	{

		glewInit();

		std::string paths[2];
		paths[0] = "Shaders/vertex.glsl";
		paths[1] = "Shaders/pixel.glsl";
		GLuint types[2];

		types[0] = GL_VERTEX_SHADER;
		types[1] = GL_FRAGMENT_SHADER;
		allShaders.push_back(new ShaderProgram(2, paths, types));

		std::string paths2[2];
		paths2[0] = "Shaders/defvertex.glsl";
		paths2[1] = "Shaders/defpixel.glsl";
		allShaders.push_back(new ShaderProgram(2, paths2, types));


		GLuint* hej[4];
		hej[0] = new GLuint(GL_RGBA);
		hej[1] = new GLuint(GL_RGB);
		hej[2] = new GLuint(GL_FLOAT);
		hej[3] = new GLuint(GL_COLOR_ATTACHMENT0);
		allShaders.at(1)->framebufferInit(1, 1280, 720, hej[0], hej[1], hej[2], hej[3]);
		delete hej[0];
		delete hej[1];
		delete hej[2];
		delete hej[3];


	
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


	
		glGenBuffers(1, &testScreen2);
		ScreenVertex vertexData2[6];
		vertexData2[0].x = -1.0; vertexData2[0].y = -1.0; vertexData2[0].s = 0.0; vertexData2[0].t = 0.0;
		vertexData2[1].x = -1.0; vertexData2[1].y = 1.0; vertexData2[1].s = 0.0; vertexData2[1].t = 1.0;
		vertexData2[2].x = 1.0; vertexData2[2].y = -1.0; vertexData2[2].s = 1.0; vertexData2[2].t = 0.0;
		vertexData2[3].x = 1.0; vertexData2[3].y = -1.0; vertexData2[3].s = 1.0; vertexData2[3].t = 0.0;
		vertexData2[4].x = 1.0; vertexData2[4].y = 1.0; vertexData2[4].s = 1.0; vertexData2[4].t = 1.0;
		vertexData2[5].x = -1.0; vertexData2[5].y = 1.0; vertexData2[5].s = 0.0; vertexData2[5].t = 1.0;
		glBindBuffer(GL_ARRAY_BUFFER, testScreen2);
		glBufferData(GL_ARRAY_BUFFER, sizeof(vertexData2), &vertexData2[0], GL_STATIC_DRAW);
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

		allShaders.at(1)->use();

		glBindBuffer(GL_ARRAY_BUFFER, testScreen);
		glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 3, 0);
		glDrawArrays(GL_TRIANGLES, 0, 6);
		glBindBuffer(GL_ARRAY_BUFFER, 0);

		allShaders.at(1)->unUse();

		allShaders.at(0)->use();

		GLuint texloc = glGetUniformLocation(allShaders.at(0)->getProgramID(), "texSampler");
		glBindTexture(GL_TEXTURE_2D, 1);
		glUniform1i(texloc, 0);


		glBindBuffer(GL_ARRAY_BUFFER, testScreen2);
		glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, sizeof(ScreenVertex), (void*)offsetof(ScreenVertex, x));
		glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, sizeof(ScreenVertex), (void*)offsetof(ScreenVertex, s));
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