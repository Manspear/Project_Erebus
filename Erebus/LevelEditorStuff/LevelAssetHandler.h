#pragma once

#include "BaseIncludes.h"
#include "Assets.h"
#include "ModelAsset.h"
#include "HeightMap.h"
#include <vector>
#include <string>

class LevelAssetHandler
{
public:
	LevelAssetHandler( Importer::Assets* assets );
	~LevelAssetHandler();

	void load( std::string assetFolder );

private:
	Importer::Assets* assets;
	std::vector<std::string> assetFiles;

	std::vector<Importer::ModelAsset*> models;
	std::vector<std::string> modelNames;

	std::vector<Importer::HeightMap*> heightmaps;
	std::vector<std::string> heightmapNames;
};