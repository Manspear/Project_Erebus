#pragma once

#include "BaseIncludes.h"
#include "Assets.h"
#include "ModelAsset.h"
#include "HeightMap.h"
#include <vector>
#include <string>
#include "AntTweakBar.h"
#include "LevelActorHandler.h"

class LevelAssetHandler
{
public:
	//LevelAssetHandler( Importer::Assets* assets );
	~LevelAssetHandler();

	static LevelAssetHandler* getInstance();

	void load();
	void updateBars();
	void updateAssetsBar();
	//void showContextBar( bool visible );
	void selectAsset( std::string model );
	//void selectPrefab( std::string prefab );
	void showContextBar( std::string model );
	void hideContextBar();
	void addToActor();
	void onMouseReleased();

	void selectPrefab( int index );
	int getSelectedPrefabIndex();
	const std::string& getSelectedPrefab();

	void setAssets( Importer::Assets* assets );
	void setInputs( Inputs* inputs );
	void setTweakBars( TweakBar* assetsBar, TweakBar* contextBar );

private:
	LevelAssetHandler();

	void loadAssets( std::vector<std::string>* container, std::string folder, std::string filter = "*" );
	static void TW_CALL onSetPrefab( const void* value, void* clientData );
	static void TW_CALL onGetPrefab( void* value, void* clientData );
	static void TW_CALL onSelectAsset( void* args );
	static void TW_CALL onAdd( void* args );
	static void TW_CALL onClose( void* args );

	Importer::Assets* assets;

	std::vector<std::string> prefabs;
	std::vector<bool> prefabSelection;
	std::vector<int> prefabSelectionIndices;
	std::vector<std::string> models;
	std::vector<std::string> textures;

	TweakBar* assetsBar, *contextBar;
	bool contextBarVisible;
	Inputs* inputs;
	std::string selectedModel;
	int selectedPrefab;

	static LevelAssetHandler* g_instance;
};