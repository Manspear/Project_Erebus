#include "LevelActor.h"
#include "LevelActorHandler.h"


const char* LevelActor::EXPORT_TYPE_NAMES[MAX_EXPORT_TYPES] =
{
	"None",
	"Static",
	"Enemy",
	"Heightmap",
	"Collider"
};

void TW_CALL SetMyStdStringCB(const void *value, void *s /*clientData*/)
{
	// Set: copy the value of s from AntTweakBar
	const std::string *srcPtr = static_cast<const std::string *>(value);
	LevelActor* actor = (LevelActor*)s;
	actor->setActorDisplayName(*srcPtr);
	LevelActorHandler::getInstance()->updateWorldBar();
	
}

void TW_CALL GetMyStdStringCB(void *value, void *s /*clientData*/)
{
	// Get: copy the value of s to AntTweakBar
	std::string *destPtr = static_cast<std::string *>(value);
	LevelActor* actor = (LevelActor*)s;
	TwCopyStdStringToLibrary(*destPtr, actor->getActorDisplayName()); // the use of TwCopyStdStringToLibrary is required here
}

LevelActor::LevelActor(unsigned int id)
	: exportType( EXPORT_STATIC )
{
	this->id = id;
}


LevelActor::~LevelActor()
{
	for (auto element : this->actorComponents)
	{
		delete element.second;
	} 
}

void LevelActor::initialize(tinyxml2::XMLElement* data)
{
	this->actorType = data->Attribute("type");
	this->actorDisplayName = data->Attribute("displayName");
}

void LevelActor::update()
{
	for (auto it = this->actorComponents.begin(); it != this->actorComponents.end(); ++it)
	{
		it->second->update(1.0f);
	}
}

bool LevelActor::addComponent(LevelActorComponent * component)
{
	bool exists = false;// = actorComponents.find(component->getName()) == actorComponents.end();
	for (auto it = this->actorComponents.begin(); it != this->actorComponents.end(); ++it)
	{
		if (component->getName() == it->second->getName()) {
			exists = true;
			break;
		}
	}
	if (!exists) {
		this->actorComponents.insert(std::pair<std::string, LevelActorComponent*>(component->getName(), component));
		component->setParent(this);
	}
	return exists;
	
}

void LevelActor::printAllComponents()
{
	for (auto element : this->actorComponents)
	{
		std::cout << element.first <<"  " <<  element.second << std::endl;
	}
}

void LevelActor::postInitializeAllComponents()
{
	for (auto element : this->actorComponents)
	{
		element.second->postInitialize();
	}
}

std::string LevelActor::toXml()
{
	tinyxml2::XMLDocument doc;
	tinyxml2::XMLPrinter printer;
	const char* LevelActorElementValue = "LevelActor";

	tinyxml2::XMLElement* LevelActorElement = doc.NewElement(LevelActorElementValue);
	LevelActorElement->SetAttribute("type",this->actorType.c_str());
	LevelActorElement->SetAttribute("displayName", this->actorDisplayName.c_str());
	for (auto element : this->actorComponents)
	{
		LevelActorElement->LinkEndChild(element.second->toXml(&doc));
	}

	doc.LinkEndChild(LevelActorElement);
	doc.Accept(&printer);
	return printer.CStr();
}

std::string LevelActor::toLua()
{
	using namespace std;
	stringstream ss;

	ss << "local temp = {}" << endl;

	LevelModel* model = getComponent<LevelModel>();
	if( model )
	{
		LevelTransform* transform = getComponent<LevelTransform>();
		ss << transform->toLua("temp");
		ss << model->toLua("temp");
	}

	for( ComponentIT it = actorComponents.begin(); it != actorComponents.end(); it++ )
	{
		if( it->first != LevelModel::name && it->first != LevelTransform::name )
		{
			ss << it->second->toLua("temp");
		}
	}

	switch(exportType)
	{
		case EXPORT_STATIC:
			ss << "table.insert(props,temp)" << endl;
			break;

		case EXPORT_ENEMY:
			ss << "table.insert(enemies,temp)" << endl;
			break;

		case EXPORT_HEIGHTMAP:
			ss << "table.insert(heightmaps,temp)" << endl;
			break;
	}

	ss << "temp = nil" << endl << endl;

	return ss.str();
}

void LevelActor::setExportType( int type )
{
	exportType = type;
}

int LevelActor::getExportType()
{
	return exportType;
}

const std::string& LevelActor::getActorType() const
{
	return actorType;
}

void LevelActor::insertXmlElement(tinyxml2::XMLElement* root, tinyxml2::XMLDocument* doc) {
	const char* LevelActorElementValue = "LevelActor";
	
	tinyxml2::XMLElement* LevelActorElement = doc->NewElement(LevelActorElementValue);
	LevelActorElement->SetAttribute("type", this->actorType.c_str());
	LevelActorElement->SetAttribute("displayName", this->actorDisplayName.c_str());
	
	for (auto element : this->actorComponents)
	{
		LevelActorElement->InsertEndChild(element.second->toXml(doc));
	}
	root->InsertEndChild(LevelActorElement);
	//doc->LinkEndChild(LevelActorElement);
	
} 

std::map<std::string, LevelActorComponent*>& LevelActor::getAllComponents()
{
	return this->actorComponents;
}

bool LevelActor::setAsSelectedActor(TwBar * bar)
{
	TwRemoveAllVars(bar);
	int amountOfComponents = 0;
	glm::vec3 colorLabel = { 255,0,0 };

	//TwAddVarRW(bar, "ActorName", TW_TYPE_STDSTRING, &this->actorDisplayName, "");
	TwAddVarCB(bar, "ActorName", TW_TYPE_STDSTRING, SetMyStdStringCB, GetMyStdStringCB, (void*)this, "");
	for (auto it : this->actorComponents)
	{
		std::stringstream ss;
		ss << " label='" << it.second->getName() << ": '";
		std::string test = ss.str().c_str();
		TwAddButton(bar, "Name"+amountOfComponents, NULL, NULL, ss.str().c_str());
		//TwAddVarRW(bar, "name", TW_TYPE_CSSTRING(sizeof(it.second->getName())), (void*)it.second->getName().c_str(), "");
		//TwDefine(ss.str().c_str());
		it.second->setTwStruct(bar);
		TwAddSeparator(bar, NULL, NULL);
		amountOfComponents++;
	}

	return true;
}

const std::string& LevelActor::getActorDisplayName() const {
	return this->actorDisplayName;
}
void LevelActor::setActorType(std::string type) {
	this->actorType = type;
}
void LevelActor::setActorDisplayName(std::string name) {
	this->actorDisplayName = name;
}