#include "LevelUI.h"
#include "LevelActorHandler.h"
#include "LevelAssetHandler.h"
#include "LevelActionHandler.h"
#include "LevelBrushHandler.h"
#include "LevelTransform.h"
#include "LevelModel.h"
#include "levelpointlightcomponent.h"
#include "LevelHeightmap.h"
#include "LevelCollider.h"
#include "LevelSound.h"

TwType LevelUI::vector3Tw = TW_TYPE_FLOAT;
//TwType LevelUI::componentTw = TW_TYPE_FLOAT;
const char* LevelUI::actorBarName = "Actor";
const char* LevelUI::worldBarName = "World";
const char* LevelUI::assetBarName = "Assets";
const char* LevelUI::assetContextBarName = "AssetsContext";
const char* LevelUI::actionBarName = "Actions";
const char* LevelUI::brushBarName = "Brush";
const char * LevelUI::componentLinker[] = { "Choose", LevelTransform::name, LevelPointLightComponent::name, LevelHeightmap::name, LevelCollider::name, LevelSound::name };

void TW_CALL setEditorState(void * clientData)
{
	std::cout << "HELLO";
}

LevelUI::LevelUI(GLFWwindow* window)
{
	
	 //LevelUI::vector3Tw = TwDefineStruct("Vector3f", vector3fMember, 3, sizeof(uiVec3), NULL, NULL);
	//LevelUI::vector3Tw =  TwDefineStruct("Vector3f", vector3fMember, 3, sizeof(uiVec3), NULL, NULL);
	TwInit(TW_OPENGL_CORE, NULL);
	TwWindowSize(WINDOW_WIDTH, WINDOW_HEIGHT);


	initBars();

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
	for (size_t i = 0; i < 6; i++)
	{
		delete bars[i];
	}
}

void LevelUI::Draw() {
	TwDraw();
}
TwBar* LevelUI::getMainBar() {
	return this->bars[0]->getBar();
}

void LevelUI::reset(GLFWwindow* window)
{
	for (size_t i = 0; i < 5; i++)
	{
		delete bars[i];
	}

	initBars();
}

void LevelUI::initBars()
{
	TwDeleteAllBars();
	bars[1] = new TweakBar(glm::vec2((int)(WINDOW_WIDTH*(1.f - TweakBar::getMainThickness())), 0),
		glm::vec2((int)(WINDOW_WIDTH*TweakBar::getMainThickness()), WINDOW_HEIGHT),
		glm::vec4(0, 128, 255, 200) , 128 , worldBarName);


	bars[0] = new TweakBar(glm::vec2((int)(WINDOW_WIDTH*(1.f - TweakBar::getMainThickness() * 2)), 0),
		glm::vec2((int)(WINDOW_WIDTH*TweakBar::getMainThickness()), WINDOW_HEIGHT*.5f),
		glm::vec4(0, 128, 128, 200), 128, actorBarName);

	glm::vec2 bar2Position((int)(WINDOW_WIDTH*(1.f - TweakBar::getMainThickness() * 2)), WINDOW_HEIGHT*.5f);
	bars[2] = new TweakBar(bar2Position, glm::vec2((int)(WINDOW_WIDTH * TweakBar::getMainThickness()), WINDOW_HEIGHT*.5f),
		glm::vec4(0, 255, 128, 200), 128, assetBarName);

	bars[3] = new TweakBar(glm::vec2(bar2Position.x - 192, bar2Position.y), glm::vec2(148, 72), glm::vec4(255, 255, 0, 200), 1, assetContextBarName);

	bars[4] = new TweakBar(glm::vec2(bar2Position.x - 148, 0), glm::vec2(148, 178), glm::vec4(128, 32, 32, 200), 1, actionBarName);

	bars[5] = new TweakBar(glm::vec2(bar2Position.x - 148, 178), glm::vec2(148, 178), glm::vec4(128, 32, 32, 200), 1, brushBarName);
	
	//Make Class tomorrow->
	//float radius;
	//TwAddVarRW(bars[5]->getBar(), "radius", TW_TYPE_FLOAT, &radius, NULL);
	//End of things to Add.

	LevelActorHandler::getInstance()->setTweakBars(bars[1], bars[0]);
	LevelAssetHandler::getInstance()->setTweakBars(bars[2], bars[3]);
	LevelActionHandler::getInstance()->setTweakBar(bars[4]);
	LevelBrushHandler::getInstance()->setTweakBar(bars[5]);
	
	const char* errorMessage = TwGetLastError();
	if (errorMessage != nullptr) {
		printf(errorMessage);
		
	}
}