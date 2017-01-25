#include "LevelWorldHandler.h"
LevelWorldHandler* LevelWorldHandler::g_instance = nullptr;

LevelWorldHandler* LevelWorldHandler::getInstance() {
	if (g_instance == nullptr)
		g_instance = new LevelWorldHandler();
	return g_instance;
}
void LevelWorldHandler::deleteInstance() {
	if (g_instance != nullptr)
		delete g_instance;
}


LevelWorldHandler::LevelWorldHandler() {

}
LevelWorldHandler::~LevelWorldHandler() {

}

void LevelWorldHandler::addStuff(Gear::GearEngine * engineRef, Assets * assetsRef, LevelUI * levelUiRef, Window * windowRef, Inputs * inputRef, Camera * cameraRef, Debug* debugRef)
{
	this->engineRef = engineRef;
	this->assetsRef = assetsRef;
	this->levelUiRef = levelUiRef;
	this->windowRef = windowRef;
	this->inputRef = inputRef;
	this->cameraRef = cameraRef;
	this->debugRef = debugRef;
}

void LevelWorldHandler::resetWorld()
{
	
	LevelActorFactory::resetInstance();
	LevelActorHandler::resetInstance();
	LevelAssetHandler::resetInstance();
	LevelActionHandler::resetInstance();
	LevelLightHandler::resetInstance();
	LevelTransformHandler::resetInstance(engineRef);
	LevelModelHandler::resetInstance(LevelTransformHandler::getInstance(), engineRef, assetsRef);

	this->levelUiRef->reset(windowRef->getGlfwWindow());

	LevelAssetHandler::getInstance()->setAssets(assetsRef);
	LevelAssetHandler::getInstance()->setInputs(inputRef);
	LevelAssetHandler::getInstance()->load();

	LevelActionHandler::getInstance()->setupGizmo(debugRef, cameraRef, inputRef);

	//levelGizmo = new LevelGizmo();
	//levelGizmo->addVariables(Debugger::getInstance(), this->camera, this->inputs);
	LevelLightHandler::getInstance()->addDebugger(debugRef);
}