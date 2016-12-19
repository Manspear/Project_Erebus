#pragma once
#include "Actor.h"
#include "ActorComponent.h"
#include "levelTransform.h"
#include "Model.h"
#include <map>
#include <vector>


class ActorFactory
{
public:
	ActorFactory();
	~ActorFactory();
	Actor* createActor(std::string name);
	const char* getPath(unsigned int id);
	void deleteSavedPaths();
	 

private:
	const char* folder;
	const char* fileExtension;
	unsigned int actorID;
	std::map<std::string, tinyxml2::XMLDocument*> savedDocuments;
	ActorComponent* getNewComponent(std::string componentName);
	tinyxml2::XMLDocument* getDocument(std::string path);
	static ActorFactory* actorFactoryInstance;
	std::map<unsigned int, const char*>* idPathMap;

	//Singleton things here
public:
	static ActorFactory* getInstance()
	{
		if (ActorFactory::actorFactoryInstance == nullptr)
			ActorFactory::actorFactoryInstance = new ActorFactory();

		return ActorFactory::actorFactoryInstance;
	}

	static void deleteInstance()
	{
		if (ActorFactory::actorFactoryInstance != nullptr)
			delete ActorFactory::actorFactoryInstance;
	}
};

