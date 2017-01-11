#include "LevelUI.h"



LevelUI::LevelUI(GLFWwindow* window)
{
	TwInit(TW_OPENGL_CORE, NULL);
	TwWindowSize(1280, 720);
	mainBar = TwNewBar( "Main" );
	TwDefine("Main label='EditorState' position='0 0' size='150 720' resizable=false buttonalign=right color='192 255 192' text=dark movable=false fontresizable=false help='Choose what component of the level to edit'");

	std::string heightMapString = "HeightMap";
	std::string enemyString = "Enemy";

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