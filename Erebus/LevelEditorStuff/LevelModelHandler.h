#pragma once
#include "LevelTransformHandler.h"
#include "Gear.h"
#include "Assets.h"
class LevelModelHandler
{
private:
	LevelTransformHandler* transformHandlerRef;
	Gear::GearEngine* engineRef;
	Importer::Assets* assetsRef;

	std::vector<ModelInstance> models;
	std::vector<AnimatedInstance> animatedModels;
public:
	LevelModelHandler();
	LevelModelHandler(LevelTransformHandler* transHandlerRef, Gear::GearEngine* gearRef, Importer::Assets* assetRef);
	~LevelModelHandler();

	void loadModel(std::string modelName);

	std::vector<ModelInstance>* getModels();
	std::vector<AnimatedInstance>* getAnimatedModels();
};

