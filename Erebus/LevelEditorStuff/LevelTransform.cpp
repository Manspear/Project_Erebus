#include "LevelTransform.h"

const char* LevelTransform::name = "LevelTransform";



LevelTransform::LevelTransform()
{
	
}


LevelTransform::~LevelTransform()
{
}

void LevelTransform::initialize(tinyxml2::XMLElement* element)
{
	std::string test = element->FirstChildElement("Position")->Attribute("x");

	this->position.x = std::stof(element->FirstChildElement("Position")->Attribute("x"));
	this->position.y = std::stof(element->FirstChildElement("Position")->Attribute("y"));
	this->position.z = std::stof(element->FirstChildElement("Position")->Attribute("z"));

	this->rotation.x = std::stof(element->FirstChildElement("Rotation")->Attribute("x"));
	this->rotation.y = std::stof(element->FirstChildElement("Rotation")->Attribute("y"));
	this->rotation.z = std::stof(element->FirstChildElement("Rotation")->Attribute("z"));

}

void LevelTransform::update(float deltaTime)
{
}

void LevelTransform::setParent(LevelActor * parent)
{
	this->parent = parent;
}

std::string LevelTransform::getName()
{
	return LevelTransform::name;
}

void LevelTransform::postInitialize()
{
	std::cout << " I IS: " << LevelTransform::name << " AND I HAS POS: " << glm::to_string(this->position) << std::endl;
	std::cout << " I IS: " << LevelTransform::name << " AND I HAS ROT: " << glm::to_string(this->rotation) << std::endl;
}

void LevelTransform::setTransform(int index) {
	this->transformRef = LevelTransformHandler::getInstance()->getTransformAt(index);
}

tinyxml2::XMLElement* LevelTransform::toXml(tinyxml2::XMLDocument* doc)
{
	tinyxml2::XMLElement* element = doc->NewElement(LevelTransform::name);
	
	tinyxml2::XMLElement* positionElement = doc->NewElement("Position");
	positionElement->SetAttribute("x", position.x);
	positionElement->SetAttribute("y", position.y);
	positionElement->SetAttribute("z", position.z);

	tinyxml2::XMLElement* rotationElement = doc->NewElement("Rotation");
	rotationElement->SetAttribute("x", rotation.x);
	rotationElement->SetAttribute("y", rotation.y);
	rotationElement->SetAttribute("z", rotation.z);

	element->LinkEndChild(positionElement);
	element->LinkEndChild(rotationElement);

	return element;
}

Transform* LevelTransform::getTransformRef() {
	return this->transformRef;
}