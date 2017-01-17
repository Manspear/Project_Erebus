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
	this->transformRef = new Transform();
	this->transformStructTemp = new TransformStruct();
	this->transformRef->setThePtr(this->transformStructTemp);
	//transformRef->setPos()

	float xPos;
	float yPos;
	float zPos;

	float xRot;
	float yRot;
	float zRot;


	xPos = std::stof(element->FirstChildElement("Position")->Attribute("x"));
	yPos = std::stof(element->FirstChildElement("Position")->Attribute("y"));
	zPos = std::stof(element->FirstChildElement("Position")->Attribute("z"));

	xRot = std::stof(element->FirstChildElement("Rotation")->Attribute("x"));
	yRot = std::stof(element->FirstChildElement("Rotation")->Attribute("y"));
	zRot = std::stof(element->FirstChildElement("Rotation")->Attribute("z"));

	glm::vec3 pos = glm::vec3(xPos, yPos, zPos);
	glm::vec3 rot = glm::vec3(xRot, yRot, zRot);

	transformRef->setPos(pos);

	transformRef->setRotation(rot);
	

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
}

void LevelTransform::setTransform(int index) {
	glm::vec3 oldPos = glm::vec3(this->transformRef->getPos());
	glm::vec3 oldRot = glm::vec3(this->transformRef->getRotation());
	delete this->transformRef;
	delete this->transformStructTemp;

	this->transformRef = LevelTransformHandler::getInstance()->getTransformAt(index);
	this->transformRef->setPos(oldPos);
	this->transformRef->setRotation(oldRot);
}

tinyxml2::XMLElement* LevelTransform::toXml(tinyxml2::XMLDocument* doc)
{
	tinyxml2::XMLElement* element = doc->NewElement(LevelTransform::name);
	glm::vec3 position = this->transformRef->getPos();
	glm::vec3 rotation = this->transformRef->getRotation();

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

std::string LevelTransform::toLua(std::string name)
{
	std::stringstream ss;

	glm::vec3 pos = transformRef->getPos();

	ss << name << ".transformID = Transform.Bind()" << std::endl;
	ss << "Transform.SetPosition(" << name << ".transformID, " <<  "{x=" << pos.x << ", y=" << pos.y << ", z=" << pos.z << "})" << std::endl;

	return ss.str();
}

Transform* LevelTransform::getTransformRef() {
	return this->transformRef;
}

void LevelTransform::setTwStruct(TwBar * twBar) {

	//TwAddVarRO(twBar, "compName", TW_TYPE_CHAR, this->name, NULL);
	TwAddVarRW(twBar, "Position", LevelUI::TW_TYPE_VECTOR3F(), (void*)&transformRef->getPosRef(), NULL);
	TwAddVarRW(twBar, "Rotation", LevelUI::TW_TYPE_VECTOR3F(), (void*)&transformRef->getRotationRef(), NULL);
	TwAddVarRW(twBar, "Scale", LevelUI::TW_TYPE_VECTOR3F(), (void*)&transformRef->getScaleRef(), NULL);
}