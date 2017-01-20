#include"LevelPointLightComponent.h"

const char* LevelPointLightComponent::name = "LevelPointLight";

LevelPointLightComponent::LevelPointLightComponent()
{
	this->radius = 0;
	this->pos = { 0,0,0 };
	this->color = { 0,0,0 };
	this->worldPos = { 0,0,0 };
}

LevelPointLightComponent::~LevelPointLightComponent()
{
	this->parent->getComponent<LevelTransform>()->deleteListener(this);
}

void LevelPointLightComponent::update(float deltaTime) {

	//Debugger::getInstance()->drawSphere(this->pos, this->radius);
}

void LevelPointLightComponent::initialize(tinyxml2::XMLElement* element)
{
	this->radius = std::stof(element->FirstChildElement("Radius")->Attribute("r"));
	
	this->color.x = std::stof(element->FirstChildElement("Color")->Attribute("x"));
	this->color.y = std::stof(element->FirstChildElement("Color")->Attribute("y"));
	this->color.z = std::stof(element->FirstChildElement("Color")->Attribute("z"));
	
	this->pos.x = std::stof(element->FirstChildElement("Position")->Attribute("x"));
	this->pos.y = std::stof(element->FirstChildElement("Position")->Attribute("y"));
	this->pos.z = std::stof(element->FirstChildElement("Position")->Attribute("z"));


}

tinyxml2::XMLElement* LevelPointLightComponent::toXml(tinyxml2::XMLDocument* doc)
{
	tinyxml2::XMLElement* element = doc->NewElement(LevelPointLightComponent::name);

	tinyxml2::XMLElement* positionElement = doc->NewElement("Position");
	positionElement->SetAttribute("x", this->pos.x);
	positionElement->SetAttribute("y", this->pos.y);
	positionElement->SetAttribute("z", this->pos.z);

	tinyxml2::XMLElement* colorElement = doc->NewElement("Color");
	colorElement->SetAttribute("x", this->color.x);
	colorElement->SetAttribute("y", this->color.y);
	colorElement->SetAttribute("z", this->color.z);

	tinyxml2::XMLElement* radius = doc->NewElement("Radius");
	radius->SetAttribute("r", this->radius);

	element->LinkEndChild(positionElement);
	element->LinkEndChild(colorElement);
	element->LinkEndChild(radius);

	return element;
}

std::string LevelPointLightComponent::getName()
{
	return LevelPointLightComponent::name;
}

void LevelPointLightComponent::postInitialize()
{
	
	this->parent->getComponent<LevelTransform>()->addListener(this);
	
	

	setWorldPos(parent->getComponent<LevelTransform>());
}

void LevelPointLightComponent::setWorldPos(LevelTransform* transform) {
	this->worldPos = transform->getChangeTransformRef()->getPos() + this->pos;
}

std::string LevelPointLightComponent::toLua(std::string name)
{
	std::stringstream ss;
	return ss.str();
}

float LevelPointLightComponent::getRadius()
{
	return radius;
}
glm::vec3 LevelPointLightComponent::getPos()
{
	return pos;
}
glm::vec3 LevelPointLightComponent::getColor()
{
	return color;
}

void LevelPointLightComponent::setPos(glm::vec3 inPos)
{
	pos = inPos;
}

void LevelPointLightComponent::setColor(glm::vec3 inColor)
{
	color = inColor;
}

void LevelPointLightComponent::setRadius(float inRadius)
{
	radius = inRadius;
}

void LevelPointLightComponent::setTwStruct(TwBar* tempBar )
{
	TwAddVarRW(tempBar, "Offset", LevelUI::TW_TYPE_VECTOR3F(), (void*)&this->pos, NULL);
	TwAddVarRW(tempBar, "Color", LevelUI::TW_TYPE_VECTOR3F(), (void*)&this->color, NULL);
	TwAddVarRW(tempBar, "Radius", TW_TYPE_FLOAT, (void*)&this->radius, NULL);
}

void LevelPointLightComponent::callListener(LevelActorComponent* component) {
	setWorldPos(((LevelTransform*)component));
	std::cout << "NEW WORLD POS"<<glm::to_string(worldPos) << std::endl;
}