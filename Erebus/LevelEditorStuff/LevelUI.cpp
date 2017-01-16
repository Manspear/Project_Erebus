#include "LevelUI.h"



void TW_CALL setEditorState(void * clientData)
{
	std::cout << "HELLO";
}

LevelUI::LevelUI(GLFWwindow* window)
{

	TwInit(TW_OPENGL_CORE, NULL);
	TwWindowSize(WINDOW_WIDTH, WINDOW_HEIGHT);

	bars[0] = new TweakBar(glm::vec2((int)(WINDOW_WIDTH*(1.f - TweakBar::getMainThickness())), 0),
		glm::vec2((int)(WINDOW_WIDTH*TweakBar::getMainThickness()), WINDOW_HEIGHT),
		glm::vec4(0, 128, 255, 200), "Actor");

	bars[1] = new TweakBar(glm::vec2((int)(WINDOW_WIDTH*(1.f - TweakBar::getMainThickness() * 2)), 0),
		glm::vec2((int)(WINDOW_WIDTH*TweakBar::getMainThickness()), WINDOW_HEIGHT*.5f),
		glm::vec4(0, 128, 128, 200), "World");

	bars[2] = new TweakBar(glm::vec2((int)(WINDOW_WIDTH*(1.f - TweakBar::getMainThickness() * 2)), WINDOW_HEIGHT*.5f),
		glm::vec2((int)(WINDOW_WIDTH* TweakBar::getMainThickness()), WINDOW_HEIGHT*.5f),
		glm::vec4(0, 255, 128, 200), "Assets");

	TwStructMember vector3fMember[] = {
		{ "x", TW_TYPE_FLOAT, offsetof(uiVec3, x), "" },
		{ "y", TW_TYPE_FLOAT, offsetof(uiVec3, y), "" },
		{ "z", TW_TYPE_FLOAT, offsetof(uiVec3, z), "" }
	};

	TW_TYPE_VECTOR3F = TwDefineStruct("Vector3f", vector3fMember, 3, sizeof(uiVec3), NULL, NULL);
	
	if (TwGetLastError() != nullptr) {
		printf("error");
	}

}

std::string LevelUI::vec2ToString(glm::vec2& val, std::string type) {
	std::stringstream ss;
	ss << type << "'" << val.x << " " << val.y << "'";
	return ss.str();
}

std::string LevelUI::vec3ToString(glm::vec3& val, std::string type) {
	std::stringstream ss;
	ss << type << "'" << val.x << " " << val.y<<" " << val.z << "'";
	return ss.str();
}

LevelUI::~LevelUI()
{
}

void LevelUI::Draw() {
	TwDraw();
}