#include "LevelEnemy.h"

const char* LevelEnemy::name = "LevelEnemy";
Debug* LevelEnemy::g_debugger = nullptr;

LevelEnemy::LevelEnemy() {
	this->health = 50;
	this->moveSpeed = 5;
	this->visionRange = 10;
	this->visionColor = glm::vec3(192, 192, 192);
}
LevelEnemy::~LevelEnemy() {

}
void LevelEnemy::initialize(tinyxml2::XMLElement* element) {

	this->moveSpeed = std::stof(element->FirstChildElement("MoveSpeed")->Attribute("amount"));
	this->health = std::stof(element->FirstChildElement("Health")->Attribute("amount"));
	this->visionRange = std::stof(element->FirstChildElement("VisionRange")->Attribute("amount"));
}
void LevelEnemy::update(float deltaTime) {
	
	g_debugger->drawSphere(parent->getComponent<LevelTransform>()->getTransformRef()->getPos(), this->visionRange, this->visionColor);
}
std::string LevelEnemy::getName() {
	return LevelEnemy::name;
}
tinyxml2::XMLElement* LevelEnemy::toXml(tinyxml2::XMLDocument* doc) {
	tinyxml2::XMLElement* element = doc->NewElement(LevelEnemy::name);
	tinyxml2::XMLElement* moveSpeedElement = doc->NewElement("MoveSpeed");
	moveSpeedElement->SetAttribute("amount", this->moveSpeed);

	tinyxml2::XMLElement* healthElement = doc->NewElement("Health");
	healthElement->SetAttribute("amount", this->health);

	tinyxml2::XMLElement* visionRangeElement = doc->NewElement("VisionRange");
	visionRangeElement->SetAttribute("amount", this->visionRange);

	element->LinkEndChild(moveSpeedElement);
	element->LinkEndChild(healthElement);
	element->LinkEndChild(visionRangeElement);

	return element;
}
std::string LevelEnemy::toLua(std::string name) {
	return "";
}
void LevelEnemy::postInitialize() {

}

void LevelEnemy::setTwStruct(TwBar * twBar) {
	TwAddVarRW(twBar, "MoveSpeed", TW_TYPE_FLOAT, &this->moveSpeed, "label='Movement Speed'");
	TwAddVarRW(twBar, "Health", TW_TYPE_FLOAT, &this->health, NULL);
	TwAddVarRW(twBar, "VisionRange", TW_TYPE_FLOAT, &this->visionRange, "label='Vision Range'");
}

void LevelEnemy::setDebugger(Debug* debug) {
	g_debugger = debug;
}

void LevelEnemy::removeComponent() {
	this->parent->deleteComponent<LevelEnemy>();
}