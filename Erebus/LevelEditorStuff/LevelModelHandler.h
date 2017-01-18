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
	//std::vector<std::vector<int>> modelToActorID;
	std::vector<std::vector<std::pair<int, unsigned int>>> modelInstanceAgentIDs;
public:
	LevelModelHandler();
	LevelModelHandler(LevelTransformHandler* transHandlerRef, Gear::GearEngine* gearRef, Importer::Assets* assetRef);
	~LevelModelHandler();

	//Loads the model, and returns the index which the transform is in! 
	int loadModel(std::string modelName, unsigned int &actorID);
	void replaceModel( std::string modelName, unsigned int actorID );

	std::vector<ModelInstance>* getModels();
	std::vector<AnimatedInstance>* getAnimatedModels();
	//std::vector<std::vector<int>>* getModelToActorID();
	std::vector<std::vector<std::pair<int, unsigned int>>>* getModelInstanceAgentIDs();

public:
	static LevelModelHandler* m_instance;

	static void createInstance(LevelTransformHandler* transHandlerRef, Gear::GearEngine* gearRef, Importer::Assets* assetRef) {
		m_instance = new LevelModelHandler(transHandlerRef, gearRef, assetRef);
	}

	static LevelModelHandler* getInstance() {
		if (!m_instance)
			std::cout << "wtf man";
		return m_instance;
	}
};