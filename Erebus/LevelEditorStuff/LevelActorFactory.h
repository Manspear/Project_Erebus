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
#include "LevelActorHandler.h"
#include "LevelFileDialog.h"
#include "LevelHeightmap.h"
#include "LevelCollider.h"

class LevelActorFactory
{
public:
	LevelActorFactory();
	LevelActorFactory(LevelTransformHandler* transformHandlerRef, LevelModelHandler* modelHandlerRef);
	~LevelActorFactory();
	LevelActor* createActor();
	LevelActor* createActor(std::string name);
	const char* getPath(unsigned int id);
	void deleteSavedPaths();
	void saveWorld(std::string fileName, std::vector<LevelActor*>* actors);
	void saveWorld();
	//void loadWorld(std::string fileName, std::vector<LevelActor*>* actors);
	void loadWorld(std::string fileName);
	void loadWorld();
	void saveToLua(std::string fileName, std::vector<LevelActor*>* actors);
	LevelActor* loadActor(tinyxml2::XMLElement* element);

	void addToBar( TwBar* bar );
	LevelActorComponent* getNewComponent(std::string componentName);
private:
	static void TW_CALL addComponent( void* args );

	const char* folder;
	const char* levelFolder;
	const char* fileExtension;
	unsigned int actorID;
	std::map<std::string, tinyxml2::XMLDocument*> savedDocuments;
	
	tinyxml2::XMLDocument* getDocument(std::string path);
	static LevelActorFactory* actorFactoryInstance;
	std::map<unsigned int, const char*>* idPathMap;
	LevelTransformHandler* transformHandler;
	LevelModelHandler* modelHandler;
	LevelFileDialog fileDialog;
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

	static void resetInstance() {
		if (LevelActorFactory::actorFactoryInstance != nullptr)
			delete LevelActorFactory::actorFactoryInstance;
		LevelActorFactory::actorFactoryInstance = new LevelActorFactory(LevelTransformHandler::getInstance(), LevelModelHandler::getInstance());
	}
};


