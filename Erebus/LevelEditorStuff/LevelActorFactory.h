#pragma once
#include "LevelActor.h"
#include "LevelActorComponent.h"
#include "LevelTransform.h"
#include "LevelModel.h"
#include"LevelPointLightComponent.h"
#include "Model.h"
#include <map>
#include <vector>
#include "LevelTransformHandler.h"
#include "LevelModelHandler.h"
#include "Gear.h"


class LevelActorFactory
{
public:
	LevelActorFactory();
	LevelActorFactory(LevelTransformHandler* transformHandlerRef, LevelModelHandler* modelHandlerRef);
	~LevelActorFactory();
	LevelActor* createActor(std::string name);
	const char* getPath(unsigned int id);
	void deleteSavedPaths();
	void saveWorld(std::string fileName, std::vector<LevelActor*>* actors);
	void loadWorld(std::string fileName, std::vector<LevelActor*>* actors);
	void saveToLua(std::string fileName, std::vector<LevelActor*>* actors);
	LevelActor* loadActor(tinyxml2::XMLElement* element);

private:
	const char* folder;
	const char* levelFolder;
	const char* fileExtension;
	unsigned int actorID;
	std::map<std::string, tinyxml2::XMLDocument*> savedDocuments;
	LevelActorComponent* getNewComponent(std::string componentName);
	tinyxml2::XMLDocument* getDocument(std::string path);
	static LevelActorFactory* actorFactoryInstance;
	std::map<unsigned int, const char*>* idPathMap;
	LevelTransformHandler* transformHandler;
	LevelModelHandler* modelHandler;
	//Singleton things here
public:
	static LevelActorFactory* getInstance()
	{
		if (LevelActorFactory::actorFactoryInstance == nullptr)
			LevelActorFactory::actorFactoryInstance = new LevelActorFactory(LevelTransformHandler::getInstance(), LevelModelHandler::getInstance());

		return LevelActorFactory::actorFactoryInstance;
	}

	static void deleteInstance()
	{
		if (LevelActorFactory::actorFactoryInstance != nullptr)
			delete LevelActorFactory::actorFactoryInstance;
	}
};


