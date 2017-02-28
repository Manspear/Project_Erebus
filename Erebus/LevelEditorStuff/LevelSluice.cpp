#include "LevelSluice.h"
const char* LevelSluice::name = "LevelSluice";
int LevelSluice::SluiceID = 1;

LevelSluice::LevelSluice() {
	this->cSluiceID = SluiceID++;
	this->slussName = "sluice" + std::to_string(this->cSluiceID);
	this->wallClosedName = "";
	this->wallOpenName = "";
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


void LevelSluice::initialize(tinyxml2::XMLElement* element) {
	this->wallClosedName = element->FirstChildElement("wallClosed")->Attribute("name");
	this->wallOpenName = element->FirstChildElement("wallOpen")->Attribute("name");
	this->cSluiceID = std::stof(element->FirstChildElement("sluiceID")->Attribute("id"));
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
	tinyxml2::XMLElement* wallClosed = doc->NewElement("wallClosed");
	wallClosed->SetAttribute("name", this->wallClosedName.c_str());

	tinyxml2::XMLElement* wallOpen = doc->NewElement("wallOpen");
	wallOpen->SetAttribute("name", this->wallOpenName.c_str());

	tinyxml2::XMLElement* sluiceID = doc->NewElement("sluiceID");
	sluiceID->SetAttribute("id", this->cSluiceID);

	element->LinkEndChild(wallClosed);
	element->LinkEndChild(wallOpen);
	element->LinkEndChild(sluiceID);

	return element;
}
std::string LevelSluice::toLuaLoad(std::string name) {
	std::stringstream ss;
	int tileID = this->parent->getTileID();

	//level01.props.WoodenFenceID.transformID
	//level01.props.WoodenFenceID.collider
	std::string closedFullName = "level0" + std::to_string(tileID) + ".props." + this->wallClosedName;
	std::string openFullName = "level0" + std::to_string(tileID) + ".props." + this->wallOpenName;
	std::string transID = ".transformID";
	std::string col = ".collider";
	ss << this->slussName << " = CreateSluice("<<name
		<<", "<<closedFullName<<"ID"<<transID
		<<", "<<closedFullName<<"ID"
		<<", "<<openFullName << "ID" <<transID<<")"
		<<std::endl;

	return ss.str();
}
std::string LevelSluice::toLuaUnload(std::string name) {
	return "";
}
void LevelSluice::postInitialize() {

}
void LevelSluice::setTwStruct(TwBar * twBar) {
	TwAddVarRO(twBar, "SluiceName", TW_TYPE_STDSTRING, &this->slussName, "label='Name:'");
	TwAddVarCB(twBar, "SluiceOpen", TW_TYPE_STDSTRING, SetOpenName, getOpenName, (void*)this, "label='open name:'");
	TwAddVarCB(twBar, "SluiceClose", TW_TYPE_STDSTRING, setClosedName, getClosedName, (void*)this, "label='closed name:'");
	TwAddButton(twBar, "SluiceGenFunction", onGenTrigger, this->parent, "label='Gen Trigger:'");
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