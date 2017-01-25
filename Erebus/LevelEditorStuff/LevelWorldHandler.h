#pragma once
#include "BaseIncludes.h"
#include "Gear.h"
#include "LevelUI.h"
#include "Window.h"
#include "LevelActorHandler.h"
#include "LevelActionHandler.h"
#include "LevelActorFactory.h"
#include "LevelAssetHandler.h"

class LevelWorldHandler {
private:
	Gear::GearEngine* engineRef;
	Assets* assetsRef;
	LevelUI* levelUiRef;
	Window* windowRef;
	Inputs* inputRef;
	Camera* cameraRef;
	Debug* debugRef;
	
	//engine, assets, ui, window, inputs, camera;
public:
	LevelWorldHandler();
	~LevelWorldHandler();
	static LevelWorldHandler* g_instance;

	static LevelWorldHandler* getInstance();
	static void deleteInstance();

	void addStuff(Gear::GearEngine* engineRef,Assets* assetsRef,LevelUI* levelUiRef,Window* windowRef,Inputs* inputRef,Camera* cameraRef, Debug* debugRef);

	void resetWorld();
};