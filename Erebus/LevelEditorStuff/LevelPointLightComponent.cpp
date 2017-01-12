#include"LevelPointLightComponent.h"

const char* LevelPointLightComponent::name = "LevelPointLight";

LevelPointLightComponent::LevelPointLightComponent()
{

}

LevelPointLightComponent::~LevelPointLightComponent()
{
	
}

void LevelPointLightComponent::initialize(tinyxml2::XMLElement* element)
{
	this->radius = std::stof(element->FirstChildElement("Radius")->Attribute("r"));
}

tinyxml2::XMLElement* LevelPointLightComponent::toXml(tinyxml2::XMLDocument* doc)
{
	tinyxml2::XMLElement* element = doc->NewElement(LevelPointLightComponent::name);

	//element->LinkEndChild(modelElement);
	//tinyxml2::XMLElement* positionElement = doc->NewElement("Position");
	//positionElement->SetAttribute("x", position.x);
	//positionElement->SetAttribute("y", position.y);
	//positionElement->SetAttribute("z", position.z);

	//tinyxml2::XMLElement* rotationElement = doc->NewElement("Rotation");
	//rotationElement->SetAttribute("x", rotation.x);
	//rotationElement->SetAttribute("y", rotation.y);
	//rotationElement->SetAttribute("z", rotation.z);

	//element->LinkEndChild(positionElement);
	//element->LinkEndChild(rotationElement);

	return element;
}

std::string LevelPointLightComponent::getName()
{
	return LevelPointLightComponent::name;
}

void LevelPointLightComponent::postInitialize()
{
	

}

std::string LevelPointLightComponent::toLua(std::string name)
{
	std::stringstream ss;

	//ss << name << ".model = Assets.LoadModel('Models/" << "GODDAMN" << ".model')" << std::endl;
/*
	if (parent->getComponent<LevelAnimation>())
		ss << "Gear.AddAnimatedInstance(" << name << ".model, " << name << ".transformID, " << name << ".animation)" << std::endl;
	else
		ss << "Gear.AddStaticInstance(" << name << ".model, " << name << ".transformID)" << std::endl;
*/
	return ss.str();
}