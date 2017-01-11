#include "LevelUI.h"
#include "Inputs.h"


inline void TwEventMouseButtonGLFW3(GLFWwindow* window, int button, int action, int mods) { TwEventMouseButtonGLFW(button, action); }

inline void TwEventMousePosGLFW3(GLFWwindow* window, double xpos, double ypos) { TwMouseMotion(int(xpos), int(ypos)); }


void TW_CALL setEditorState(void * clientData) {

}


LevelUI::LevelUI(GLFWwindow* window)
{
	changeValue = 0;


	TwInit(TW_OPENGL_CORE, NULL);
	TwWindowSize(WINDOW_WIDTH, WINDOW_HEIGHT);
	mainBar = TwNewBar("Main");
	TwDefine("Main label='EditorState' position='0 0' size='150 720' help='Choose what component of the level to edit'");

	//std::string heightMapString = "HeightMap";
	//std::string enemyString = "Enemy";

	TwAddVarRW(mainBar, "change Val", TW_TYPE_FLOAT, &changeValue, " min=0 max=10 step=0.01 group=Engine label='Rotation speed' ");

	glfwSetMouseButtonCallback(window, (GLFWmousebuttonfun)TwEventMouseButtonGLFW3);
	
	glfwSetCursorPosCallback(window, (GLFWcursorposfun)TwEventMousePosGLFW3);

	
	//glfwSetMouseWheelCallback(window, (GLFWmousewheelfun)TwEventMouseWheelGLFW);
	//glfwSetKeyCallback(window, (GLFWkeyfun)TwEventKeyGLFW);
	//glfwSetCharCallback(window, (GLFWcharfun)TwEventCharGLFW);
	//glfwSetMouseWheelCallback(window, (GLFWscrollfun))
	//glfwSetMouseButtonCallback(window, (GLFWmousebuttonfun)TwEventMouseButtonGLFW3);
	//glfwSetCursorPosCallback(window, (GLFWcursorposfun)TwEventMousePosGLFW3);

	

	//TwAddButton(mainBar, "HeightMap" "HeightMap", setEditorState, &heightMapString, "label='HeightMap'");
	//TwAddButton(mainBar, "HeightMap" "Enemy", setEditorState, &enemyString, "label='Enemy'");
}



LevelUI::~LevelUI()
{
}

void LevelUI::Draw() {
	TwDraw();
}