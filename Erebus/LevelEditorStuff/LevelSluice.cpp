#include "LevelSluice.h"
const char* LevelSluice::name = "LevelSluice";
int LevelSluice::SluiceID = 1;

const char* LevelSluice::SLUICE_TYPE_NAMES[NUM_SLUICE_TYPES] =
{
	"Branch",
	"Combine",
};

const char* LevelSluice::wallOpenBaseName = "BlockerOpen";
const char* LevelSluice::wallClosedBaseName = "BlockerClosed";

LevelSluice::LevelSluice() {
	this->cSluiceID = SluiceID;
	LevelSluice::SluiceID = LevelSluice::SluiceID + 1;
	this->slussName = "sluice" + std::to_string(this->cSluiceID);
	this->wallClosedName = "";
	this->wallOpenName = "";
	this->combineRemoveObject = "";
}
LevelSluice::~LevelSluice() {

}


void TW_CALL setClosedName(const void *value, void *s /*clientData*/)
{
	// Set: copy the value of s from AntTweakBar
	const std::string *srcPtr = static_cast<const std::string *>(value);
	LevelSluice* sluice = (LevelSluice*)s;
	sluice->setWallClosedName(*srcPtr);

}

void TW_CALL getClosedName(void *value, void *s /*clientData*/)
{
	// Get: copy the value of s to AntTweakBar
	std::string *destPtr = static_cast<std::string *>(value);
	LevelSluice* actor = (LevelSluice*)s;
	TwCopyStdStringToLibrary(*destPtr, actor->getWallClosedName()); // the use of TwCopyStdStringToLibrary is required here
}

void TW_CALL setCombineNameCB(const void *value, void *s /*clientData*/)
{
	// Set: copy the value of s from AntTweakBar
	const std::string *srcPtr = static_cast<const std::string *>(value);
	LevelSluice* sluice = (LevelSluice*)s;
	sluice->setCombineName(*srcPtr);

}

void TW_CALL getCombineNameCB(void *value, void *s /*clientData*/)
{
	// Get: copy the value of s to AntTweakBar
	std::string *destPtr = static_cast<std::string *>(value);
	LevelSluice* actor = (LevelSluice*)s;
	TwCopyStdStringToLibrary(*destPtr, actor->getCombineName()); // the use of TwCopyStdStringToLibrary is required here
}

void TW_CALL SetOpenName(const void *value, void *s /*clientData*/)
{
	// Set: copy the value of s from AntTweakBar
	const std::string *srcPtr = static_cast<const std::string *>(value);
	LevelSluice* sluice = (LevelSluice*)s;
	sluice->setWallOpenName(*srcPtr);

}

void TW_CALL getOpenName(void *value, void *s /*clientData*/)
{
	// Get: copy the value of s to AntTweakBar
	std::string *destPtr = static_cast<std::string *>(value);
	LevelSluice* actor = (LevelSluice*)s;
	TwCopyStdStringToLibrary(*destPtr, actor->getWallOpenName()); // the use of TwCopyStdStringToLibrary is required here
}

void TW_CALL onGenTrigger(void* args)
{
	LevelActor* actor = (LevelActor*)args;
	LevelCollider* colRef = actor->getComponent<LevelCollider>();
	LevelSluice* sluiceRef = actor->getComponent<LevelSluice>();
	if (colRef != nullptr) {
		std::string onEnterString = "function(self) SluiceEnter(" + sluiceRef->getSluiceName() + ") end";
		std::string onExitString = "function(self) SluiceExit(" + sluiceRef->getSluiceName() + ") end";
		std::string onTriggeringString = "function(self, dt) SluiceUpdate(dt, " + sluiceRef->getSluiceName()+ ") end";

		colRef->setOnEnterString(onEnterString);
		colRef->setOnExitString(onExitString);
		colRef->setOnTriggeringString(onTriggeringString);
	}
	//LevelActorHandler::getInstance()->setSelected(actor->id);
}

void TW_CALL onGenCombineTrigger(void* args)
{
	LevelActor* actor = (LevelActor*)args;
	LevelCollider* colRef = actor->getComponent<LevelCollider>();
	LevelSluice* sluiceRef = actor->getComponent<LevelSluice>();
	if (colRef != nullptr) {

		int tileID = actor->getTileID();

		//level01.props.WoodenFenceID.transformID
		//level01.props.WoodenFenceID.collider
		std::string combineFullName = "level0" + std::to_string(tileID) + ".props." + sluiceRef->getCombineName();

		std::string onEnterString = "";
		std::string onExitString = "function(self) hideCombinationImage() end";
		std::string onTriggeringString = "function(dt) TutorialBarrier("+ combineFullName + ", dt) end";

		colRef->setOnEnterString(onEnterString);
		colRef->setOnExitString(onExitString);
		colRef->setOnTriggeringString(onTriggeringString);
	}
	//LevelActorHandler::getInstance()->setSelected(actor->id);
}



void LevelSluice::initialize(tinyxml2::XMLElement* element) {
	if (element->FirstChildElement("sluiceType") != nullptr)
		this->sluiceType = (SluiceType)element->FirstChildElement("sluiceType")->Int64Attribute("type");
	else
		this->sluiceType = SluiceType::BRANCH_BLOCKER;


	if (this->sluiceType == SluiceType::BRANCH_BLOCKER) {
		this->wallClosedName = element->FirstChildElement("wallClosed")->Attribute("name");
		this->wallOpenName = element->FirstChildElement("wallOpen")->Attribute("name");
	}
	else if (this->sluiceType == SluiceType::BRANCH_COMBINER) {
		this->combineRemoveObject = element->FirstChildElement("wallCombine")->Attribute("name");
	}

	int tempID = std::stof(element->FirstChildElement("sluiceID")->Attribute("id"));
	if (!this->doesSluiceIDExist(tempID)) {
		this->cSluiceID = tempID;
	}
	this->slussName = "sluice" + std::to_string(this->cSluiceID);

	if (SluiceID <= cSluiceID)
		SluiceID = cSluiceID + 1;
}
void LevelSluice::update(float deltaTime) {

}
std::string LevelSluice::getName() {
	return LevelSluice::name;
}
tinyxml2::XMLElement* LevelSluice::toXml(tinyxml2::XMLDocument* doc) {
	tinyxml2::XMLElement* element = doc->NewElement(LevelSluice::name);

	tinyxml2::XMLElement* sluiceType = doc->NewElement("sluiceType");
	sluiceType->SetAttribute("type", this->sluiceType);

	tinyxml2::XMLElement* wallClosed;
	tinyxml2::XMLElement* wallOpen;
	tinyxml2::XMLElement* combineWall;
	if (this->sluiceType == SluiceType::BRANCH_BLOCKER) {
		wallClosed = doc->NewElement("wallClosed");
		wallClosed->SetAttribute("name", this->wallClosedName.c_str());

		wallOpen = doc->NewElement("wallOpen");
		wallOpen->SetAttribute("name", this->wallOpenName.c_str());
	}
	else if (this->sluiceType == SluiceType::BRANCH_COMBINER) {
		combineWall = doc->NewElement("wallCombine");
		combineWall->SetAttribute("name", this->combineRemoveObject.c_str());
	}


	tinyxml2::XMLElement* sluiceID = doc->NewElement("sluiceID");
	sluiceID->SetAttribute("id", this->cSluiceID);

	element->LinkEndChild(sluiceType);
	if (this->sluiceType == SluiceType::BRANCH_BLOCKER) {
		element->LinkEndChild(wallClosed);
		element->LinkEndChild(wallOpen);
	}
	else if (this->sluiceType == SluiceType::BRANCH_COMBINER) {
		element->LinkEndChild(combineWall);
	}

	element->LinkEndChild(sluiceID);

	return element;
}
std::string LevelSluice::toLuaLoad(std::string name) {
	std::stringstream ss;
	if (this->sluiceType == SluiceType::BRANCH_BLOCKER) {
		int tileID = this->parent->getTileID();

		//level01.props.WoodenFenceID.transformID
		//level01.props.WoodenFenceID.collider
		std::string closedFullName = "level0" + std::to_string(tileID) + ".props." + +wallClosedBaseName + this->wallClosedName;
		std::string openFullName = "level0" + std::to_string(tileID) + ".props." + wallOpenBaseName + this->wallOpenName;
		std::string transID = ".transformID";
		std::string col = ".collider";
		ss << this->slussName << " = CreateSluice(" << name
			<< ", " << closedFullName << "ID" << transID
			<< ", " << closedFullName << "ID"
			<< ", " << openFullName << "ID" << transID << ")"
			<< std::endl;
	}


	return ss.str();
}
std::string LevelSluice::toLuaUnload(std::string name) {
	return "";
}
void LevelSluice::postInitialize() {

}


void TW_CALL onSetType(const void* value, void* clientData)
{
	SluiceType type = *(SluiceType*)value;
	LevelSluice* sluice = (LevelSluice*)clientData;
	sluice->setSluiceType(type);

	LevelActorHandler::getInstance()->updateActorBar();
}

void TW_CALL onGetType(void* value, void* clientData)
{
	LevelSluice* sluice = (LevelSluice*)clientData;
	*(int*)value = sluice->getSluiceType();
}

SluiceType LevelSluice::getSluiceType() {
	return this->sluiceType;
}
void LevelSluice::setSluiceType(SluiceType type) {
	this->sluiceType = type;
}

void LevelSluice::setTwStruct(TwBar * twBar) {
	TwAddVarRO(twBar, "SluiceName", TW_TYPE_STDSTRING, &this->slussName, "label='Name:'");
	TwAddVarCB(twBar, "SluiceType", TW_TYPE_SLUICE(), onSetType, onGetType, this, "label='Type:'");

	switch (this->sluiceType) {
	case SluiceType::BRANCH_BLOCKER:
		TwAddVarCB(twBar, "SluiceOpen", TW_TYPE_STDSTRING, SetOpenName, getOpenName, (void*)this, "label='open name:'");
		TwAddVarCB(twBar, "SluiceClose", TW_TYPE_STDSTRING, setClosedName, getClosedName, (void*)this, "label='closed name:'");
		TwAddButton(twBar, "SluiceGenFunction", onGenTrigger, this->parent, "label='Gen Trigger:'");
		break;
	case SluiceType::BRANCH_COMBINER:
		TwAddVarCB(twBar, "SluiceCombine", TW_TYPE_STDSTRING, setCombineNameCB, getCombineNameCB, (void*)this, "label='combine name:'");
		TwAddButton(twBar, "SluiceGenCombineFunction", onGenCombineTrigger, this->parent, "label='Gen Trigger:'");
		break;
	}

}
void LevelSluice::removeComponent() {
	this->parent->deleteComponent<LevelSluice>();
}

void LevelSluice::setWallClosedName(std::string name) {
	this->wallClosedName = name; 
}
void LevelSluice::setWallOpenName(std::string name) {
	this->wallOpenName = name;
}
std::string LevelSluice::getWallClosedName() {
	return this->wallClosedName;
}
std::string LevelSluice::getWallOpenName() {
	return this->wallOpenName;
}

std::string LevelSluice::getSluiceName()
{
	return this->slussName;
}
void  LevelSluice::setCombineName(std::string name) {
	this->combineRemoveObject = name;
}
std::string LevelSluice::getCombineName() {
	return this->combineRemoveObject;
}

int LevelSluice::getSluiceID()
{
	return this->cSluiceID;
}

bool LevelSluice::doesSluiceIDExist(unsigned int sluiceID)
{
	bool exists = false;

	for (auto it : LevelActorHandler::getInstance()->getActors()) {
		LevelSluice* sluiceRef = it.second->getComponent<LevelSluice>();
		if (sluiceRef != nullptr) {
			if (sluiceRef->getSluiceID() == sluiceID) {
				exists = true;
				break;
			}
		}
	}

	return exists;
}