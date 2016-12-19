#pragma once
#include "LevelActor.h"
#include "LevelActorComponent.h"
#include "levelTransform.h"
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
	 

private:
	const char* folder;
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
	static LevelActorFactory* getInstance(LevelTransformHandler* transformHandlerRef, LevelModelHandler* modelHandlerRef)
	{
		if (LevelActorFactory::actorFactoryInstance == nullptr)
			LevelActorFactory::actorFactoryInstance = new LevelActorFactory(transformHandlerRef, modelHandlerRef);

		return LevelActorFactory::actorFactoryInstance;
	}

	static void deleteInstance()
	{
		if (LevelActorFactory::actorFactoryInstance != nullptr)
			delete LevelActorFactory::actorFactoryInstance;
	}
};

