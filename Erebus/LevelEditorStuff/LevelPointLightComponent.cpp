#include"LevelPointLightComponent.h"

const char* LevelPointLightComponent::name = "LevelPointLight";

LevelPointLightComponent::LevelPointLightComponent()
{
	this->radius = 3;
	this->pos = { 0,0,0 };
	this->color = { 1,0,1 };
	this->worldPos = { 0,0,0 };
	this->light = LevelLightHandler::getInstance()->addPointLight(pos, color, radius);
}

LevelPointLightComponent::~LevelPointLightComponent()
{
	if (this->parent != nullptr)
		this->parent->getComponent<LevelTransform>()->deleteListener(this);
	if(light != nullptr)
		LevelLightHandler::getInstance()->deletePointLight(light);
}

void LevelPointLightComponent::update(float deltaTime) {
	LevelLightHandler::getInstance()->drawLight(this->light);
	//Debugger::getInstance()->drawSphere(this->pos, this->radius);
}

void LevelPointLightComponent::initialize(tinyxml2::XMLElement* element)
{

	pos.x = std::stof(element->FirstChildElement("Position")->Attribute("x"));
	pos.y = std::stof(element->FirstChildElement("Position")->Attribute("y"));
	pos.z = std::stof(element->FirstChildElement("Position")->Attribute("z"));

	this->light->color.x = std::stof(element->FirstChildElement("Color")->Attribute("x"));
	this->light->color.y = std::stof(element->FirstChildElement("Color")->Attribute("y"));
	this->light->color.z = std::stof(element->FirstChildElement("Color")->Attribute("z"));

	this->light->radius.x = std::stof(element->FirstChildElement("Radius")->Attribute("r"));
	

	



}

tinyxml2::XMLElement* LevelPointLightComponent::toXml(tinyxml2::XMLDocument* doc)
{
	tinyxml2::XMLElement* element = doc->NewElement(LevelPointLightComponent::name);

	tinyxml2::XMLElement* positionElement = doc->NewElement("Position");
	positionElement->SetAttribute("x", pos.x);
	positionElement->SetAttribute("y", pos.y);
	positionElement->SetAttribute("z", pos.z);

	tinyxml2::XMLElement* colorElement = doc->NewElement("Color");
	colorElement->SetAttribute("x", this->light->color.x);
	colorElement->SetAttribute("y", this->light->color.y);
	colorElement->SetAttribute("z", this->light->color.z);

	tinyxml2::XMLElement* radius = doc->NewElement("Radius");
	radius->SetAttribute("r", this->light->radius.x);

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
	light->pos = glm::vec4(transform->getChangeTransformRef()->getPos() + this->pos,1);
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
	TwAddVarRW(tempBar, "Color", LevelUI::TW_TYPE_VECTOR3F(), (void*)&this->light->color, NULL);
	TwAddVarRW(tempBar, "Radius", TW_TYPE_FLOAT, (void*)&this->light->radius, NULL);
	TwAddVarRW(tempBar, "Intensity", TW_TYPE_FLOAT, (void*)&this->light->radius[1], NULL);
}

void LevelPointLightComponent::callListener(LevelActorComponent* component) {
	setWorldPos(((LevelTransform*)component));
	std::cout << "NEW WORLD POS"<<glm::to_string(worldPos) << std::endl;
}