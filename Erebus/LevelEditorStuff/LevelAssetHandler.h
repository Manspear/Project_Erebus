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
	void showContextBar( std::string model );
	void hideContextBar();
	void addToActor();

	void setAssets( Importer::Assets* assets );
	void setInputs( Inputs* inputs );
	void setTweakBars( TweakBar* assetsBar, TweakBar* contextBar );

private:
	LevelAssetHandler();

	void loadAssets( std::vector<std::string>* container, std::string folder, std::string filter = "*" );
	static void TW_CALL onSelectAsset( void* args );
	static void TW_CALL onAdd( void* args );
	static void TW_CALL onClose( void* args );

	Importer::Assets* assets;

	std::vector<std::string> models;
	std::vector<std::string> textures;
	std::vector<int> selectionIndices;

	TweakBar* assetsBar, *contextBar;
	bool contextBarVisible;
	Inputs* inputs;
	std::string selectedModel;

	static LevelAssetHandler* g_instance;
};