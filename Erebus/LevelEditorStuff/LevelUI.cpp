#include "LevelUI.h"

void TW_CALL setEditorState(void * clientData)
{
	std::cout << "HELLO";
}

LevelUI::LevelUI(GLFWwindow* window,LevelActorFactory* factory)
{
	radius = 1;

	this->factory = factory;

	TwInit(TW_OPENGL_CORE, NULL);
	TwWindowSize(WINDOW_WIDTH, WINDOW_HEIGHT);
	mainBar = TwNewBar( "Main" );


	TwStructMember vector3fMember[] = {
		{ "x", TW_TYPE_FLOAT, offsetof(uiVec3, x), "" },
		{ "y", TW_TYPE_FLOAT, offsetof(uiVec3, y), "" },
		{ "z", TW_TYPE_FLOAT, offsetof(uiVec3, z), "" }
	};

	TW_TYPE_VECTOR3F = TwDefineStruct("Vector3f", vector3fMember, 3, sizeof(uiVec3), NULL, NULL);
	
	if (TwGetLastError() != nullptr) {
		printf("error");
	}

	//TwDeleteBar(mainBar);
	TwDefine("Main label='EditorState' position='0 0' size='150 720' resizable=false buttonalign=right color='192 255 192' text=dark movable=true fontresizable=false help='Choose what component of the level to edit'");

	TwAddVarRW(mainBar, "Radius", TW_TYPE_FLOAT, (void*)&radius, NULL);
	//std::string heightMapString = "HeightMap";
	//std::string enemyString = "Enemy";
	//TwAddButton(mainBar, "HeightMap" "HeightMap", setEditorState, &heightMapString, "label='HeightMap'");
}


LevelUI::~LevelUI()
{
}

void LevelUI::Draw() {
	TwDraw();
}

TwBar* LevelUI::getMainBar() {
	return this->mainBar;
}