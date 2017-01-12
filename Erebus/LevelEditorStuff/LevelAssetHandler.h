#pragma once

#include "BaseIncludes.h"
#include "Assets.h"
#include "ModelAsset.h"
#include "HeightMap.h"
#include <vector>
#include <string>
#include "AntTweakBar.h"

class LevelAssetHandler
{
public:
	//LevelAssetHandler( Importer::Assets* assets );
	~LevelAssetHandler();

	static LevelAssetHandler* getInstance();

	void load();

	void setAssets( Importer::Assets* assets );

private:
	LevelAssetHandler();

	void loadAssets( std::vector<std::string>* container, std::string folder, std::string filter = "*" );

	Importer::Assets* assets;

	std::vector<std::string> models;
	std::vector<std::string> textures;

	TwBar* bar;

	static LevelAssetHandler* g_instance;
};