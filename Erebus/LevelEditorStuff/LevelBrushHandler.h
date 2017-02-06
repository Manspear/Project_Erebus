#pragma once

#include "BaseIncludes.h"
#include "Assets.h"
#include "ModelAsset.h"
#include "HeightMap.h"
#include <vector>
#include <string>
#include "AntTweakBar.h"
#include "LevelActorHandler.h"
#include "../RNG.h"



class LevelBrushHandler
{
public:

	~LevelBrushHandler();

	
	static LevelBrushHandler* getInstance();
	static void deleteInstance();
	static void resetInstance();

	
	void updateBrushBar(); //nothing here right now

	void setIsRotation(bool t_f);
	void setIsScale(bool t_f);

	bool getIsRotation();
	bool getIsScale();
	//void selectPrefab( std::string prefab );
	//void selectPrefab(int index);
	//void showContextBar(std::string asset);
	//void hideContextBar();
	//void addToActor();
	//void onMouseReleased();


	//int getSelectedPrefabIndex();
	//const std::string& getSelectedPrefab();

	
	void setTweakBar(TweakBar* brushBar);
	void testDraw(Gear::GearEngine* engine, Camera* camera,const double deltaTime, Inputs* inputs, Debug* debug);
	//Importer::Assets* getAssets();

private:
	int numSavedPositions = 20;
	float radius = 1;
	float VacancyRadius = 8;
	float yOffset = 0;
	float PIx2 = 6.2832;
	double timer = 0;
	bool preventOverDraw = false; //Allow Meshes to be drawn in the same place?
	bool isRotation = false;
	bool isScale = false;


	float maxScale = 2.0;
	float minScale = 0.5;
	std::vector<glm::vec3> earlierPositions; //this will have a max size of 4
	std::string saveAsType = "Brush";
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