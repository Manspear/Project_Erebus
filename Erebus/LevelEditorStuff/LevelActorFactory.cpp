#include "LevelActorFactory.h"

LevelActorFactory* LevelActorFactory::actorFactoryInstance = nullptr;

LevelActorFactory::LevelActorFactory()
{
	actorID = 0;
	folder = "LevelEditorStuff/Resources/ActorsXML/";
	fileExtension = ".xml";
	savedDocuments = std::map<std::string, tinyxml2::XMLDocument*>();
	idPathMap = new std::map<unsigned int, const char*>();
}

LevelActorFactory::LevelActorFactory(LevelTransformHandler* transformHandlerRef, LevelModelHandler* modelHandlerRef) {
	actorID = 0;
	folder = "LevelEditorStuff/Resources/ActorsXML/";
	fileExtension = ".xml";
	savedDocuments = std::map<std::string, tinyxml2::XMLDocument*>();
	idPathMap = new std::map<unsigned int, const char*>();

	this->transformHandler = transformHandlerRef;
	this->modelHandler = modelHandlerRef;
}


LevelActorFactory::~LevelActorFactory()
{
	for (auto element : this->savedDocuments)
	{
		delete element.second;
	}
	if (idPathMap != nullptr)
	{
		delete idPathMap;
		idPathMap = nullptr;
	}
}

LevelActor* LevelActorFactory::createActor(std::string name)
{
	LevelActorFactory::actorID++;
	LevelActor* returnActor = new LevelActor(LevelActorFactory::actorID);
	std::string fullPath = folder + name + fileExtension;
	const char* nodeToPath = "Model";
	const char* elementToPath = "Path";

	tinyxml2::XMLDocument *doc = getDocument(fullPath);

	tinyxml2::XMLElement* startElement = doc->FirstChildElement();
	returnActor->initialize(startElement);

	for (tinyxml2::XMLElement* pNode = startElement->FirstChildElement(); pNode; pNode = pNode->NextSiblingElement())
	{
		if (std::strcmp(pNode->Value(), nodeToPath) == 0) //Map path to actorID
		{
			this->idPathMap->insert(std::pair<unsigned int, const char*>(returnActor->id,pNode->FirstChildElement(elementToPath)->GetText()));
		}
		LevelActorComponent* temp = getNewComponent(pNode->Value());
		temp->initialize(pNode);
		returnActor->addComponent(temp);
	}



	//returnActor->postInitializeAllComponents();

	return returnActor;
}

const char * LevelActorFactory::getPath(unsigned int id)
{
	const char* returnPath = "Fail";

	auto iterator = idPathMap->find(id);
	if (iterator != idPathMap->end())
	{
		return iterator->second;
	}
	return returnPath;
}

void LevelActorFactory::deleteSavedPaths()
{
	if (idPathMap != nullptr)
	{
		delete idPathMap;
		idPathMap = nullptr;
	}
}

tinyxml2::XMLDocument* LevelActorFactory::getDocument(std::string path) {
	tinyxml2::XMLDocument* returnDocument = nullptr;
	auto iterator = savedDocuments.find(path);
	if (iterator != savedDocuments.end())
	{
		//std::cout << "ALREAYD HAS INSTANCE: " + path << std::endl;
		returnDocument = iterator->second;
	}
	else 
	{
		//std::cout << "Creating new instance HAHA INSTANCE: " + path << std::endl;
		returnDocument = new tinyxml2::XMLDocument();
		returnDocument->LoadFile(path.c_str());
		savedDocuments.insert(std::pair<std::string, tinyxml2::XMLDocument*>(path, returnDocument));
	}
		

	return returnDocument;

}

LevelActorComponent * LevelActorFactory::getNewComponent(std::string componentName)
{
	LevelActorComponent* returnComponent = nullptr;
	this->transformHandler->b
	//Ugly if, but works
	if (componentName == LevelTransform::name)
	{
		returnComponent = new LevelTransform();
	}


	
	//else if (componentName == Model::name)
	//{
	//	returnComponent = new Model();
	//}

	return returnComponent;
}