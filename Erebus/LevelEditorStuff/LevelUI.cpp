#include "LevelUI.h"
#include "LevelActorHandler.h"


void TW_CALL setEditorState(void * clientData)
{
	std::cout << "HELLO";
}

LevelUI::LevelUI(GLFWwindow* window)
{

	TwInit(TW_OPENGL_CORE, NULL);
	TwWindowSize(WINDOW_WIDTH, WINDOW_HEIGHT);
	mainBar = TwNewBar( "Main" );

	bars[0] = new TweakBar(glm::vec2((int)(WINDOW_WIDTH*(1.f - TweakBar::getMainThickness())), 0),
		glm::vec2((int)(WINDOW_WIDTH*TweakBar::getMainThickness()), WINDOW_HEIGHT),
		glm::vec4(0, 128, 255, 128), "Agent");

	bars[1] = new TweakBar(glm::vec2((int)(WINDOW_WIDTH*(1.f - TweakBar::getMainThickness() * 2)), 0),
		glm::vec2((int)(WINDOW_WIDTH*TweakBar::getMainThickness()), WINDOW_HEIGHT*.5f),
		glm::vec4(0, 128, 128, 128), "World");

	bars[2] = new TweakBar(glm::vec2((int)(WINDOW_WIDTH*(1.f - TweakBar::getMainThickness() * 2)), WINDOW_HEIGHT*.5f),
		glm::vec2((int)(WINDOW_WIDTH* TweakBar::getMainThickness()), WINDOW_HEIGHT*.5f),
		glm::vec4(0, 255, 128, 128), "Assets");
	
	LevelActorHandler::getInstance()->setTweakBars( bars[1], bars[0] );

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

TwBar* LevelUI::getMainBar() {
	return this->bars[0]->getBar();
}

