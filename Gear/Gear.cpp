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
		//paths[0] = "Shaders/forward.vert";
		//paths[1] = "Shaders/forward.frag";
		//paths[2] = "Shaders/forward.geom";
		paths[0] = "Shaders/phong.vert";
		paths[1] = "Shaders/phong.frag";
		GLuint types[2];

		types[0] = GL_VERTEX_SHADER;
		types[1] = GL_FRAGMENT_SHADER;
		//types[2] = GL_GEOMETRY_SHADER;
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
	float ko = 1.01;
	void GearEngine::draw(Camera* camera) {
		/* Render here */
		allShaders.at( 0 )->use();

		Camera tempKamera = Camera(45.f, 1280.f / 720.f, 0.1f, 20.f);
		GLuint tjabba = glGetUniformLocation(allShaders.at(0)->getProgramID(), "VPmatrix");
		glm::mat4 tempmat = camera->getViewPers();
		glUniformMatrix4fv(tjabba, 1, GL_FALSE, &tempmat[0][0]);

		setTestLight(camera->getCamPosition());

		/*glBindBuffer(GL_ARRAY_BUFFER, testScreen);
		glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 3, 0);
		glDrawArrays(GL_TRIANGLES, 0, 6);
		glBindBuffer(GL_ARRAY_BUFFER, 0);*/

		glBindBuffer( GL_ARRAY_BUFFER, vbo );
		glVertexAttribPointer( 0, 3, GL_FLOAT, GL_FALSE, sizeof( float ) * 22, 0 );
		glVertexAttribPointer( 1, 3, GL_FLOAT, GL_FALSE, sizeof( float ) * 22, (void*)(sizeof( float ) * 3) );
		glDrawArrays( GL_TRIANGLES, 0, size );
		glBindBuffer( GL_ARRAY_BUFFER, 0 );

		allShaders.at(0)->unUse();

		/* Swap front and back buffers */

		/* Poll for and process events */
		//glfwPollESvents();

	}

	bool GearEngine::isRunning(){
		return true;//window->isWindowOpen();
	}

	void GearEngine::setTestLight(glm::vec3 camPos)
	{
		GLuint uPos;
		glm::vec3 val;

		uPos = glGetUniformLocation(allShaders.at(0)->getProgramID(), "lightPos");
		//val = glm::vec3(1.0f, 1.0f, 0.5f);
		val = glm::vec3(camPos.x, camPos.y, camPos.z + 2.0f);
		glUniform3fv(uPos, 1, &val[0]);

		uPos = glGetUniformLocation(allShaders.at(0)->getProgramID(), "viewPos");
		val = camPos;
		glUniform3fv(uPos, 1, &val[0]);

		uPos = glGetUniformLocation(allShaders.at(0)->getProgramID(), "lightAmbient");
		val = glm::vec3(0.3f, 0.3f, 0.3f);
		glUniform3fv(uPos, 1, &val[0]);

		uPos = glGetUniformLocation(allShaders.at(0)->getProgramID(), "lightDiffuse");
		val = glm::vec3(0.9f, 0.9f, 0.9f);
		glUniform3fv(uPos, 1, &val[0]);

		uPos = glGetUniformLocation(allShaders.at(0)->getProgramID(), "lightSpecular");
		val = glm::vec3(0.7f, 0.7f, 0.7f);
		glUniform3fv(uPos, 1, &val[0]);
	}
	
}