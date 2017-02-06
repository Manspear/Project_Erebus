#include "LevelActorFactory.h"
#include "LevelActionHandler.h"

LevelActorFactory* LevelActorFactory::actorFactoryInstance = nullptr;

LevelActorFactory::LevelActorFactory()
{
	actorID = 1;
	folder = "LevelEditorStuff/Resources/ActorsXML/";
	levelFolder = "LevelEditorStuff/Resources/LevelsXML/";
	fileExtension = ".xml";
	savedDocuments = std::map<std::string, tinyxml2::XMLDocument*>();
	idPathMap = new std::map<unsigned int, const char*>();
}

LevelActorFactory::LevelActorFactory(LevelTransformHandler* transformHandlerRef, LevelModelHandler* modelHandlerRef) {
	actorID = 1;
	folder = "LevelEditorStuff/Resources/ActorsXML/";
	levelFolder = "LevelEditorStuff/Resources/LevelsXML/";
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

LevelActor* LevelActorFactory::createActor()
{
	LevelActor* actor = new LevelActor(++actorID);
	actor->addComponent( getNewComponent( LevelTransform::name ) );

	actor->setActorDisplayName(LevelActorHandler::getInstance()->tryActorName("New"));
	actor->setActorType("Empty");
	return actor;
}

LevelActor* LevelActorFactory::createActor(std::string name)
{
	std::string fullPath = folder + name + fileExtension;
	const char* nodeToPath = "Model";
	const char* elementToPath = "Path";

	tinyxml2::XMLDocument *doc = getDocument(fullPath);

	LevelActor* returnActor = nullptr;
	if( !doc->Error() )
	{
		LevelActorFactory::actorID++;
		returnActor = new LevelActor(LevelActorFactory::actorID);

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



		returnActor->postInitializeAllComponents();
	}

	return returnActor;
}

LevelActor* LevelActorFactory::loadActor(tinyxml2::XMLElement* element) {
	LevelActorFactory::actorID++;
	LevelActor* returnActor = new LevelActor(LevelActorFactory::actorID);

	returnActor->initialize(element);

	for (tinyxml2::XMLElement* pNode = element->FirstChildElement(); pNode; pNode = pNode->NextSiblingElement())
	{
		LevelActorComponent* temp = getNewComponent(pNode->Value());
		temp->initialize(pNode);
		returnActor->addComponent(temp);
	}

	returnActor->postInitializeAllComponents();

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

tinyxml2::XMLDocument* LevelActorFactory::getDocument(std::string path, bool saveDoc) {
	tinyxml2::XMLDocument* returnDocument = nullptr;
	auto iterator = savedDocuments.find(path);
	if (saveDoc) {
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
	}
	else {
		returnDocument = new tinyxml2::XMLDocument();
		returnDocument->LoadFile(path.c_str());
	}

	return returnDocument;

}

LevelActorComponent * LevelActorFactory::getNewComponent(std::string componentName)
{
	LevelActorComponent* returnComponent = nullptr;

	if (componentName == LevelTransform::name)
	{
		returnComponent = new LevelTransform();
	}
	else if (componentName == LevelModel::name) {
		returnComponent = new LevelModel();
	}
	else if (componentName == LevelAnimation::name)
	{
		returnComponent = new LevelAnimation();
	}
	else if (componentName == LevelPointLightComponent::name)
	{
		returnComponent = new LevelPointLightComponent();
	}
	else if(componentName == LevelHeightmap::name)
	{
		returnComponent = new LevelHeightmap();
	}
	else if(componentName == LevelCollider::name)
	{
		returnComponent = new LevelCollider();
	}
	else if(componentName == LevelSound::name)
	{
		returnComponent = new LevelSound();
	}
	else if (componentName == LevelEnemy::name)
	{
		returnComponent = new LevelEnemy();
	}
	else if(componentName == LevelSettings::name)
	{
		returnComponent = new LevelSettings();
	}
	return returnComponent;
}

/*void LevelActorFactory::saveWorld(std::string fileName, std::vector<LevelActor*>* actors) {
	tinyxml2::XMLDocument doc;
	std::string fullPath = levelFolder + fileName + fileExtension;

	const char* LevelActorElementValue = "Level";
	tinyxml2::XMLElement* LevelElement = doc.NewElement(LevelActorElementValue);

	for (size_t i = 0; i < actors->size(); i++)
	{
		actors->at(i)->insertXmlElement(LevelElement, &doc);
	}

	doc.LinkEndChild(LevelElement);
	tinyxml2::XMLError eResult = doc.SaveFile(fullPath.c_str());
	
	int k = 0;
	//tinyxml2::XMLDeclaration* dcl = new tinyxml2::XMLDeclaration(&doc);
}*/

void LevelActorFactory::saveWorld( const std::string& filename )
{
	tinyxml2::XMLDocument doc;

	const char* LevelActorElementValue = "Level";
	tinyxml2::XMLElement* LevelElement = doc.NewElement(LevelActorElementValue);

	std::map<unsigned int, LevelActor*>& actors = LevelActorHandler::getInstance()->getActors();

	for( std::map<unsigned int, LevelActor*>::iterator it = actors.begin(); it != actors.end(); it++ )
	{
		it->second->insertXmlElement(LevelElement, &doc);
	}

	doc.LinkEndChild(LevelElement);
	tinyxml2::XMLError eResult = doc.SaveFile(filename.c_str());
}

void LevelActorFactory::saveWorld()
{
	if( fileDialog.show( DIALOG_SAVE_FILE ) )
	{
		saveWorld( fileDialog.getFilePath() );
	}
}

/*void LevelActorFactory::loadWorld(std::string fileName, std::vector<LevelActor*>* actors) {
	for (size_t i = 0; i < actors->size(); i++)
	{
		delete actors->at(i);
	}
	actors->clear();

	std::string fullPath = levelFolder + fileName + fileExtension;

	tinyxml2::XMLDocument *doc = getDocument(fullPath);

	tinyxml2::XMLElement* startElement = doc->FirstChildElement();
	

	for (tinyxml2::XMLElement* pNode = startElement->FirstChildElement(); pNode; pNode = pNode->NextSiblingElement())
	{
		actors->push_back(loadActor(pNode));
	}
}*/

void LevelActorFactory::loadWorld( std::string fileName )
{
	std::string fullPath = levelFolder + fileName + fileExtension;

	tinyxml2::XMLDocument* doc = getDocument( fullPath );
	tinyxml2::XMLElement* startElement = doc->FirstChildElement();

	for( tinyxml2::XMLElement* pNode = startElement->FirstChildElement(); pNode; pNode = pNode->NextSiblingElement())
		LevelActorHandler::getInstance()->addActor(loadActor(pNode));
}

void LevelActorFactory::loadWorld()
{
	if( fileDialog.show( DIALOG_OPEN_FILE ) )
	{
		std::string filePath = fileDialog.getFilePath();

		//LevelWorldHandler::getInstance()->resetWorld();
		tinyxml2::XMLDocument* doc = getDocument( filePath );
		tinyxml2::XMLElement* startElement = doc->FirstChildElement();

		for( tinyxml2::XMLElement* pNode = startElement->FirstChildElement(); pNode; pNode = pNode->NextSiblingElement())
			LevelActorHandler::getInstance()->addActor(loadActor(pNode));
	}
}

void LevelActorFactory::saveToLua(std::string fileName, std::vector<LevelActor*>* actors)
{
	std::ofstream stream( fileName );
	if( stream.is_open() )
	{
		for( size_t i = 0; i<actors->size(); i++ )
		{
			stream << actors->at(i)->toLua();
		}

		stream.close();
	}
}

void LevelActorFactory::addToBar( TwBar* bar )
{
	TwAddButton( bar, LevelTransform::name, addComponent, (void*)LevelTransform::name, NULL );
	TwAddButton( bar, LevelModel::name, addComponent, (void*)LevelModel::name, NULL );
	TwAddButton( bar, LevelAnimation::name, addComponent, (void*)LevelAnimation::name, NULL );
	TwAddButton( bar, LevelPointLightComponent::name, addComponent, (void*)LevelPointLightComponent::name, NULL );
}

void TW_CALL LevelActorFactory::addComponent( void* args )
{
	const char* componentName = (const char*)args;

	LevelActor* actor;
	// get selected actor from singleton

	//actor->addComponent( LevelActorFactory::getInstance()->getNewComponent( componentName ) );
}

void LevelActorFactory::saveActor(LevelActor * actor, std::string fileName)
{
	std::string fullPath = folder + fileName + fileExtension;
	FILE* file = NULL;
	fopen_s(&file, fullPath.c_str(), "w");
	if (file)
	{
		fprintf(file, "%s", actor->toXml().c_str());
		fclose(file);
	}
}

LevelActor * LevelActorFactory::loadActor(std::string fileName)
{
	
	std::string fullPath = folder + fileName + fileExtension;

	tinyxml2::XMLDocument* doc = getDocument(fullPath, false);
	LevelActor* tempActor = loadActor(doc->FirstChildElement());
	LevelActorHandler::getInstance()->addActor(tempActor);
	delete doc;
	return tempActor;
	//for (tinyxml2::XMLElement* pNode = startElement->FirstChildElement(); pNode; pNode = pNode->NextSiblingElement())
	//	LevelActorHandler::getInstance()->addActor(loadActor(pNode));
	//return nullptr;
}