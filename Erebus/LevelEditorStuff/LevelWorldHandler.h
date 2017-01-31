#pragma once
#include "BaseIncludes.h"
#include "Gear.h"
#include "LevelUI.h"
#include "Window.h"
#include "LevelActorHandler.h"
#include "LevelActionHandler.h"
#include "LevelActorFactory.h"
#include "LevelAssetHandler.h"
#include "LevelColiderHandler.h"

#define LEVEL_AUTOSAVE_TIME 60.0f // seconds
#define LEVEL_MAX_AUTOSAVES 5

class LevelWorldHandler {
private:
	Gear::GearEngine* engineRef;
	Assets* assetsRef;
	LevelUI* levelUiRef;
	Window* windowRef;
	Inputs* inputRef;
	Camera* cameraRef;
	Debug* debugRef;
	float elapsedTime;
	int currentAutosave;
	
	//engine, assets, ui, window, inputs, camera;
public:
	LevelWorldHandler();
	~LevelWorldHandler();
	static LevelWorldHandler* g_instance;

	static LevelWorldHandler* getInstance();
	static void deleteInstance();

	void addStuff(Gear::GearEngine* engineRef,Assets* assetsRef,LevelUI* levelUiRef,Window* windowRef,Inputs* inputRef,Camera* cameraRef, Debug* debugRef);

	void resetWorld();
	void updateAutosave( float deltaTime );
	int findLastAutosave();
	std::string getLastAutosaveFile();
};