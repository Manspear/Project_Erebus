#include<AntTweakBar.h>


#include"MenuTest.h"
#include "Gear.h"
#include "BaseIncludes.h"

#include"HeightMapEditor.h"
#include"ParticleEditor.h"

inline void TwEventMouseButtonGLFW3(GLFWwindow* window, int button, int action, int mods) { TwEventMouseButtonGLFW(button, action); }

inline void TwEventMousePosGLFW3(GLFWwindow* window, double xpos, double ypos) { TwMouseMotion(int(xpos), int(ypos)); }

enum EditorState
{
	HEIGHTMAP_EDIT,
	PARTICES_EDIT,

};

int main()
{
	EditorState editorState;
	editorState = HEIGHTMAP_EDIT;

	Gear::GearEngine *engine = new Gear::GearEngine();

	TwInit(TW_OPENGL_CORE, NULL);

	MenuTest menuTest;
	ParticleEditor* particleEditor;
	HeightMapEditor* heightMapEditor;
	
	

	TwWindowSize(1280, 720);
	
	glfwSetMouseButtonCallback(engine->getWindow(),(GLFWmousebuttonfun)TwEventMouseButtonGLFW3);
	glfwSetCursorPosCallback(engine->getWindow(), (GLFWcursorposfun)TwEventMousePosGLFW3);
	
	
	
	while (engine->isRunning())
	{

		
		switch (editorState)
		{
		case HEIGHTMAP_EDIT:

			break;

		case PARTICES_EDIT:

			break;
		default:
			break;
		}

	#pragma region DRAW
		engine->draw();
		TwDraw();
		engine->updateWindow();
	#pragma endregion
	
	}

	return 0;
}
