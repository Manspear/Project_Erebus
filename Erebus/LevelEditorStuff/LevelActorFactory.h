#pragma once
#include "LevelActor.h"
#include "LevelActorComponent.h"
#include "levelTransform.h"
#include "Model.h"
#include <map>
#include <vector>


class LevelActorFactory
{
public:
	LevelActorFactory();
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

	//Singleton things here
public:
	static LevelActorFactory* getInstance()
	{
		if (LevelActorFactory::actorFactoryInstance == nullptr)
			LevelActorFactory::actorFactoryInstance = new LevelActorFactory();

		return LevelActorFactory::actorFactoryInstance;
	}

	static void deleteInstance()
	{
		if (LevelActorFactory::actorFactoryInstance != nullptr)
			delete LevelActorFactory::actorFactoryInstance;
	}
};

