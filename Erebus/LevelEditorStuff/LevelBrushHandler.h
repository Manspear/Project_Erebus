#pragma once

#include "BaseIncludes.h"
#include "Assets.h"
#include "ModelAsset.h"
#include "HeightMap.h"
#include <vector>
#include <string>
#include "AntTweakBar.h"
#include "LevelActorHandler.h"

class LevelBrushHandler
{
public:

	~LevelBrushHandler();

	
	static LevelBrushHandler* getInstance();
	static void deleteInstance();
	static void resetInstance();

	void updateBrushBar(); //nothing here right now

	//void selectPrefab( std::string prefab );
	//void selectPrefab(int index);
	//void showContextBar(std::string asset);
	//void hideContextBar();
	//void addToActor();
	//void onMouseReleased();


	//int getSelectedPrefabIndex();
	//const std::string& getSelectedPrefab();

	
	void setTweakBar(TweakBar* brushBar);
	static void testDraw(Gear::GearEngine* engine, Camera* camera, Inputs* inputs, Debug* debug);
	//Importer::Assets* getAssets();

private:
	float radius = 1;
	float density = 1;
	LevelBrushHandler();
	TweakBar* actionBar;
/*	void loadAssets(std::vector<std::string>* container, std::string folder, std::string filter = "*");
	static void TW_CALL onSetPrefab(const void* value, void* clientData);
	static void TW_CALL onGetPrefab(void* value, void* clientData);
	static void TW_CALL onSelectModel(void* args);
	static void TW_CALL onSelectTexture(void* args);
	static void TW_CALL onSelectSound(void* args);
	static void TW_CALL onAdd(void* args);
	static void TW_CALL onClose(void* args)*/;

	std::vector<std::string> prefabs;
	std::vector<bool> prefabSelection;
	//std::vector<int> prefabSelectionIndices;


	TweakBar* brushBar;
	//bool contextBarVisible;
	//int selectedPrefab;

	static LevelBrushHandler* g_instance;
};