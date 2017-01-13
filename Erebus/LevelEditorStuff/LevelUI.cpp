#include "LevelUI.h"

void TW_CALL setEditorState(void * clientData)
{
	std::cout << "HELLO";
}

LevelUI::LevelUI(GLFWwindow* window, LevelActorFactory* factory)
{
	radius = 1;

	this->factory = factory;

	TwInit(TW_OPENGL_CORE, NULL);
	TwWindowSize(WINDOW_WIDTH, WINDOW_HEIGHT);
	mainBar = TwNewBar("Main");

	float thickness = .125f;
	std::stringstream ss;
	glm::vec2 posVal, sizeVal;
	posVal = glm::vec2((int)(WINDOW_WIDTH*(1.f - thickness)), 0);
	sizeVal = glm::vec2((int)(WINDOW_WIDTH*thickness), WINDOW_HEIGHT);
	std::string position = this->vec2ToString(posVal, " position=");
	std::string size = this->vec2ToString(sizeVal, " size=");
	std::string color = " color='0 128 255' alpha=128";
	std::string refresh = " refresh=.05";
	std::string resize = " resizable=false";
	std::string moveable = " movable=false";
	ss << "Main" << position << size << color << refresh << resize << moveable;

	TwDefine(ss.str().c_str());

	bar2 = TwNewBar("bar2");
	std::stringstream ss1;
	posVal = glm::vec2((int)(WINDOW_WIDTH*(1.f - thickness * 2)), 0);
	sizeVal = glm::vec2((int)(WINDOW_WIDTH*thickness), WINDOW_HEIGHT*.5f);
	position = this->vec2ToString(posVal, " position=");
	size = this->vec2ToString(sizeVal, " size=");
	color = " color='0 128 128' alpha=128";
	refresh = " refresh=.05";
	resize = " resizable=false";
	moveable = " movable=false";
	ss1 << "bar2" << position << size << color << refresh << resize << moveable;

	TwDefine(ss1.str().c_str());

	bar3 = TwNewBar("bar3");
	std::stringstream ss2;
	posVal = glm::vec2((int)(WINDOW_WIDTH*(1.f - thickness * 2)), WINDOW_HEIGHT*.5f);
	sizeVal = glm::vec2((int)(WINDOW_WIDTH*thickness), WINDOW_HEIGHT*.5f);
	position = this->vec2ToString(posVal, " position=");
	size = this->vec2ToString(sizeVal, " size=");
	color = " color='0 255 128' alpha=128";
	refresh = " refresh=.05";
	resize = " resizable=false";
	moveable = " movable=false";
	ss2 << "bar3" << position << size << color << refresh << resize << moveable;

	TwDefine(ss2.str().c_str());

	TwStructMember vector3fMember[] = {
		{ "x", TW_TYPE_FLOAT, offsetof(uiVec3, x), "" },
		{ "y", TW_TYPE_FLOAT, offsetof(uiVec3, y), "" },
		{ "z", TW_TYPE_FLOAT, offsetof(uiVec3, z), "" }
	};

	TW_TYPE_VECTOR3F = TwDefineStruct("Vector3f", vector3fMember, 3, sizeof(uiVec3), NULL, NULL);

	if (TwGetLastError() != nullptr) {
		printf("error");
	}


	TwDefine("Main label='EditorState' position='0 0' size='150 720' resizable=false buttonalign=right color='192 255 192' text=dark movable=true fontresizable=false help='Choose what component of the level to edit'");
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

TwBar* LevelUI::getMainBar() {
	return this->mainBar;
}