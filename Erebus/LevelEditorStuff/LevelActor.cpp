#include "LevelActor.h"
#include "LevelActorHandler.h"


const char* LevelActor::EXPORT_TYPE_NAMES[MAX_EXPORT_TYPES] =
{
	"None",
	"Static",
	"Enemy",
	"Heightmap",
	"Collider",
	"Player",
	"Health Orb",
	"Particle",
	"Trigger",
	"Settings"
};

void TW_CALL setDisplayCB(const void *value, void *s /*clientData*/)
{
	// Set: copy the value of s from AntTweakBar
	const std::string *srcPtr = static_cast<const std::string *>(value);
	LevelActor* actor = (LevelActor*)s;
	actor->setActorDisplayName(LevelActorHandler::getInstance()->tryActorName(*srcPtr));
	LevelActorHandler::getInstance()->updateTweakBars();
	
}

void TW_CALL getDisplayCB(void *value, void *s /*clientData*/)
{
	// Get: copy the value of s to AntTweakBar
	std::string *destPtr = static_cast<std::string *>(value);
	LevelActor* actor = (LevelActor*)s;
	TwCopyStdStringToLibrary(*destPtr, actor->getActorDisplayName()); // the use of TwCopyStdStringToLibrary is required here
}

void TW_CALL setTypeCB(const void *value, void *s /*clientData*/)
{
	// Set: copy the value of s from AntTweakBar
	const std::string *srcPtr = static_cast<const std::string *>(value);
	LevelActor* actor = (LevelActor*)s;
	actor->setActorType(*srcPtr);
	LevelActorHandler::getInstance()->updateTweakBars();

}

void TW_CALL getTypeCB(void *value, void *s /*clientData*/)
{
	// Get: copy the value of s to AntTweakBar
	std::string *destPtr = static_cast<std::string *>(value);
	LevelActor* actor = (LevelActor*)s;
	TwCopyStdStringToLibrary(*destPtr, actor->getActorType()); // the use of TwCopyStdStringToLibrary is required here
}

void TW_CALL setTileIDCB( const void* value, void* clientData )
{
	int newID = *(int*)value;
	LevelActor* actor = (LevelActor*)clientData;

	actor->setTileID( newID );
}

void TW_CALL getTileIDCB( void* value, void* clientData )
{
	LevelActor* actor = (LevelActor*)clientData;
	*(int*)value = actor->getTileID();
}

LevelActor::LevelActor(unsigned int id)
	: exportType( EXPORT_STATIC ), tileID( TILE_ID_INVALID )
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
	this->tileID = data->IntAttribute("tileID");
	this->exportType = data->IntAttribute("exportType");
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
	LevelActorElement->SetAttribute("tileID", tileID);
	LevelActorElement->SetAttribute("exportType", this->exportType);
	for (auto element : this->actorComponents)
	{
		LevelActorElement->LinkEndChild(element.second->toXml(&doc));
	}

	doc.LinkEndChild(LevelActorElement);
	doc.Accept(&printer);
	return printer.CStr();
}

//std::string LevelActor::toLua()
std::string LevelActor::toLuaLoad(std::string levelName)
{
	//If the object is a wall :)
	if (this->actorComponents.size() == 2) {
		if (this->getComponent<LevelTransform>() != nullptr && this->getComponent<LevelCollider>() != nullptr) {
			if(this->getComponent<LevelCollider>()->getParentColider() != nullptr)
				return "";
		}
	}


	using namespace std;
	stringstream ss;

	std::string tempName = this->actorDisplayName;
	tempName.erase(remove_if(tempName.begin(), tempName.end(), isspace), tempName.end());
	char chars[] = "()";

	for (unsigned int i = 0; i < strlen(chars); ++i)
	{
		// you need include <algorithm> to use general algorithms like std::remove()
		tempName.erase(std::remove(tempName.begin(), tempName.end(), chars[i]), tempName.end());
	}
	std::string fullName = tempName + to_string(id) + "ID";

	if( exportType == EXPORT_ENEMY )
	{
		LevelTransform* transform = getComponent<LevelTransform>();
		glm::vec3 pos = transform->getTransformRef()->getPos();

		LevelEnemy* enemy = getComponent<LevelEnemy>();
		ss << enemy->toLuaLoad( fullName ) << endl;
	}
	else if( exportType == EXPORT_SETTINGS )
	{
		LevelSettings* settings = getComponent<LevelSettings>();
		if( settings )
		{
			ss << settings->toLuaLoad(fullName) << endl;
		}
	}
	else
	{
		std::string tableName;
		switch(exportType)
		{
			case EXPORT_STATIC:
				tableName = "props";
				break;

			case EXPORT_HEIGHTMAP:
			{
				LevelHeightmap* heightmap = getComponent<LevelHeightmap>();
				if( heightmap )
				{
					tableName = "props";
				}
			} break;

			case EXPORT_COLLIDER:
				tableName = "colliders";
				break;

			case EXPORT_TRIGGER:
				tableName = "triggers";
				break;

			case EXPORT_PARTICLE:
				tableName = "particles";
				break;
		}

		fullName = levelName + "." + tableName + "." + fullName;

		ss<< fullName <<" = {}" << endl;

		LevelModel* model = getComponent<LevelModel>();
		
		//LevelTransform* transform = getComponent<LevelTransform>();
		//ss << transform->toLuaLoad(fullName);
		if( model )
		{
			ss << model->toLuaLoad(fullName);
		}

		for( ComponentIT it = actorComponents.begin(); it != actorComponents.end(); it++ )
		{
			if( it->first != LevelModel::name && it->first != LevelTransform::name )
			{
				if (it->second->getName() == LevelCollider::name) {
					LevelCollider* testCol = (LevelCollider*)it->second;
					if (testCol != nullptr) {
						if (testCol->getParentColider() != nullptr)
							continue;
					}
				}

				if(it->second->getName() != LevelHeightmap::name)
					ss << it->second->toLuaLoad(fullName);
			}
		}

		
		//ss << fullName << " = nil" << endl<<endl;
	}

	return ss.str();
}

std::string LevelActor::toLuaUnload(std::string levelName)
{
	using namespace std;
	stringstream ss;

	if( exportType != EXPORT_SETTINGS )
	{
		std::string tableName;
		switch(exportType)
		{
			case EXPORT_STATIC:
				tableName = "props";
				break;

			case EXPORT_HEIGHTMAP:
			{
				LevelHeightmap* heightmap = getComponent<LevelHeightmap>();
				if( heightmap )
				{
					tableName = "props";
				}
			} break;

			case EXPORT_COLLIDER:
				tableName = "colliders";
				break;

			case EXPORT_TRIGGER:
				tableName = "triggers";
				break;

			case EXPORT_PARTICLE:
				tableName = "particles";
				break;
		}

		std::string tempName = this->actorDisplayName;
		tempName.erase(remove_if(tempName.begin(), tempName.end(), isspace), tempName.end());
		char chars[] = "()";

		for (unsigned int i = 0; i < strlen(chars); ++i)
		{
			// you need include <algorithm> to use general algorithms like std::remove()
			tempName.erase(std::remove(tempName.begin(), tempName.end(), chars[i]), tempName.end());
		}
		std::string fullName = tempName + to_string(id) + "ID";

		if( exportType == EXPORT_ENEMY )
		{
			LevelTransform* transform = getComponent<LevelTransform>();
			glm::vec3 pos = transform->getTransformRef()->getPos();



			LevelEnemy* enemy = getComponent<LevelEnemy>();
			ss << enemy->toLuaUnload( fullName ) << endl;
		}
		else
		{
			fullName = levelName + "." + tableName + "." + fullName;

			for( ComponentIT it = actorComponents.begin(); it != actorComponents.end(); it++ )
			{
				if( it->first != LevelModel::name && it->first != LevelTransform::name )
				{
					if(it->second->getName() != LevelHeightmap::name)
						ss << it->second->toLuaUnload(fullName);
				}
			}

			LevelModel* model = getComponent<LevelModel>();

			//LevelTransform* transform = getComponent<LevelTransform>();
			//ss << transform->toLuaUnload(fullName);
			if( model )
			{
				ss << model->toLuaUnload(fullName);
			}

			ss << fullName << " = nil" << endl;
		}
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
	LevelActorElement->SetAttribute("displayName", this->actorDisplayName.c_str());
	LevelActorElement->SetAttribute("tileID", tileID);
	LevelActorElement->SetAttribute("exportType", this->exportType);
	
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

void TW_CALL removeCompBtnCB(void *compIn)
{
	LevelActorComponent*srcPtr = static_cast<LevelActorComponent *>(compIn);
	std::string message = "";
	message += "Are you sure you would like to remove component:\n" + srcPtr->getName();
	if (MessageBoxA(NULL, message.c_str(), "Level Editor - Remove Component", MB_YESNO) == IDYES)
	{
		
		srcPtr->removeComponent();
		LevelActorHandler::getInstance()->updateTweakBars();
	}

}

bool LevelActor::setAsSelectedActor(TwBar * bar)
{
	
	TwRemoveAllVars(bar);
	int amountOfComponents = 0;
	glm::vec3 colorLabel = { 255,0,0 };

	//TwAddVarRW(bar, "ActorName", TW_TYPE_STDSTRING, &this->actorDisplayName, "");
	TwAddVarCB(bar, "ActorName", TW_TYPE_STDSTRING, setDisplayCB, getDisplayCB, (void*)this, "");
	TwAddVarCB(bar, "ActorType", TW_TYPE_STDSTRING, setTypeCB, getTypeCB, (void*)this, "");
	TwAddVarCB(bar, "actorTileID", TW_TYPE_INT32, setTileIDCB, getTileIDCB, this, "label='TileID:'" );
	TwAddSeparator(bar, NULL, NULL);
	for (auto it : this->actorComponents)
	{
		std::stringstream ss;
		ss << " label='" << it.second->getName() << ": '";
		std::string test = ss.str().c_str();
		TwAddButton(bar, "Name"+amountOfComponents, NULL, NULL, ss.str().c_str());
		//TwDefine(ss.str().c_str());
		it.second->setTwStruct(bar);
		
		amountOfComponents++;

		TwAddButton(bar, ("remove" + std::to_string(amountOfComponents)).c_str(), removeCompBtnCB, it.second, "label='Remove Comp'");
		TwAddSeparator(bar, NULL, NULL);
	}

	return true;
}

const std::string& LevelActor::getActorDisplayName() const {
	return this->actorDisplayName;
}
int LevelActor::getTileID() const {
	return tileID;
}
void LevelActor::setActorType(std::string type) {
	this->actorType = type;
}
void LevelActor::setActorDisplayName(std::string name) {
	this->actorDisplayName = name;
}
void LevelActor::setTileID( int id ) {
	tileID = id;
}