#include "LevelActor.h"

const char* LevelActor::EXPORT_TYPE_NAMES[MAX_EXPORT_TYPES] =
{
	"None",
	"Static",
	"Enemy"
};

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
}

void LevelActor::update()
{
	for (auto it = this->actorComponents.begin(); it != this->actorComponents.end(); ++it)
	{
		it->second->update(1.0f);
	}
}

void LevelActor::addComponent(LevelActorComponent * component)
{
	this->actorComponents.insert(std::pair<std::string,LevelActorComponent*>(component->getName(),component));
	component->setParent(this);
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
	std::stringstream ss;

	std::string name = actorType + std::string("_") + std::to_string(id);

	ss << name << " = {}" << std::endl;
	
	if( actorComponents.find("LevelTransform") != actorComponents.end() )
		ss << actorComponents["LevelTransform"]->toLua( name );

	for( std::map<std::string, LevelActorComponent*>::iterator it = actorComponents.begin(); it != actorComponents.end(); it++ )
	{
		if( it->first != "LevelTransform" )
			ss << it->second->toLua(name);
	}

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