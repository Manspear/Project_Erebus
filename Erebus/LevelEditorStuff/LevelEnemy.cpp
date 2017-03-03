#include "LevelEnemy.h"

const char* LevelEnemy::ENEMY_TYPE_NAMES[MAX_ENEMY_TYPES] =
{
	 "Melee",
	 "Ranged",
	 "Dummy"
};

const char* LevelEnemy::ENEMY_ELEMENT_NAMES[enemyElement::NUM_ELEMENTS] =
{
	"Fire",
	"Nature",
	"Ice",
	"Neutral"
};

const char* LevelEnemy::name = "LevelEnemy";
Debug* LevelEnemy::g_debugger = nullptr;

LevelEnemy::LevelEnemy()
	: moveSpeed(5), health(50), visionRange(10), visionColor(192, 192, 192), type(ENEMY_MELEE), element(enemyElement::NEUTRAL)
{
}
LevelEnemy::~LevelEnemy() {

}
void LevelEnemy::initialize(tinyxml2::XMLElement* element) {

	this->moveSpeed = std::stof(element->FirstChildElement("MoveSpeed")->Attribute("amount"));
	this->health = std::stof(element->FirstChildElement("Health")->Attribute("amount"));
	this->visionRange = std::stof(element->FirstChildElement("VisionRange")->Attribute("amount"));
	this->type = std::stof(element->FirstChildElement("Type")->Attribute("amount"));
	if(element->FirstChildElement("Element") != nullptr){
		this->element = std::stof(element->FirstChildElement("Element")->Attribute("amount"));
	}
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

	tinyxml2::XMLElement* enemyTypeElement = doc->NewElement("Type");
	enemyTypeElement->SetAttribute("amount", this->type);

	tinyxml2::XMLElement* enemyElementElement = doc->NewElement("Element");
	enemyElementElement->SetAttribute("amount", this->element);

	element->LinkEndChild(moveSpeedElement);
	element->LinkEndChild(healthElement);
	element->LinkEndChild(visionRangeElement);
	element->LinkEndChild(enemyTypeElement);
	element->LinkEndChild(enemyElementElement);

	return element;
}
std::string LevelEnemy::toLuaLoad(std::string name){
	using namespace std;
	stringstream ss;

	LevelTransform* transform = parent->getComponent<LevelTransform>();
	glm::vec3 pos = transform->getTransformRef()->getPos();
	if(type==ENEMY_DUMMY)
		ss << name << " = CreateEnemy(" << "ENEMY_DUMMY" << ", {x=" << pos.x << ", y=" << pos.y << ", z=" << pos.z << "})" << endl;
	else {
		ss  << name << " = CreateEnemy(" << (type == ENEMY_MELEE ? "ENEMY_MELEE" : "ENEMY_RANGED") << ", {x=" << pos.x << ", y=" << pos.y << ", z=" << pos.z << "}, "<< element <<")" << endl;
	}
		

	ss << name << ".moveSpeed = " << moveSpeed << endl;
	ss << name << ".health = " << health << endl;
	ss << name << ".visionRange = " << visionRange << endl;

	return ss.str();
}

std::string LevelEnemy::toLuaUnload(std::string name)
{
	return ("DestroyEnemy(" + name + ")");
}

void LevelEnemy::postInitialize() {
	parent->setExportType( EXPORT_ENEMY );
}

void LevelEnemy::setTwStruct(TwBar * twBar) {
	TwAddVarRW(twBar, "enemyMoveSpeed", TW_TYPE_FLOAT, &this->moveSpeed, "label='Movement Speed:'");
	TwAddVarRW(twBar, "enemyHealth", TW_TYPE_FLOAT, &this->health, "label='Health:'");
	TwAddVarRW(twBar, "enemyVisionRange", TW_TYPE_FLOAT, &this->visionRange, "label='Vision Range:'");
	TwAddVarRW(twBar, "enemyType", TW_TYPE_ENEMY_ENUM(), &type, "label='Type:'" );
	TwAddVarRW(twBar, "enemyElement", TW_ELEMENT_ENEMY_ENUM(), &element, "label='Element:'");
}

void LevelEnemy::setDebugger(Debug* debug) {
	g_debugger = debug;
}

void LevelEnemy::removeComponent() {
	this->parent->deleteComponent<LevelEnemy>();
}