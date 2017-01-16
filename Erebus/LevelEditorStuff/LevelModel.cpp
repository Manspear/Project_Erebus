#include "LevelModel.h"

const char* LevelModel::name = "LevelModel";



LevelModel::LevelModel()
{

}


LevelModel::~LevelModel()
{
}

void LevelModel::initialize(tinyxml2::XMLElement* element)
{

	this->modelName = element->FirstChildElement("ModelName")->GetText();
	
	

	//std::string test = element->FirstChildElement("Position")->Attribute("x");

	//this->position.x = std::stof(element->FirstChildElement("Position")->Attribute("x"));
	//this->position.y = std::stof(element->FirstChildElement("Position")->Attribute("y"));
	//this->position.z = std::stof(element->FirstChildElement("Position")->Attribute("z"));

	//this->rotation.x = std::stof(element->FirstChildElement("Rotation")->Attribute("x"));
	//this->rotation.y = std::stof(element->FirstChildElement("Rotation")->Attribute("y"));
	//this->rotation.z = std::stof(element->FirstChildElement("Rotation")->Attribute("z"));

}

void LevelModel::update(float deltaTime)
{
}

void LevelModel::setParent(LevelActor * parent)
{
	this->parent = parent;
}

std::string LevelModel::getName()
{
	return LevelModel::name;
}

void LevelModel::postInitialize()
{
	LevelTransform* thisTransform = this->parent->getComponent<LevelTransform>();

	LevelModelHandler* handlerRef = LevelModelHandler::getInstance();
	transformIndice = handlerRef->loadModel(this->modelName,parent->id);

	thisTransform->setTransform(transformIndice);
	
}

int LevelModel::getModelIndex() {
	return this->modelIndex;
}

tinyxml2::XMLElement* LevelModel::toXml(tinyxml2::XMLDocument* doc)
{
	tinyxml2::XMLElement* element = doc->NewElement(LevelModel::name);
	tinyxml2::XMLElement* modelElement = doc->NewElement("ModelName");
	modelElement->SetText(modelName.c_str());

	element->LinkEndChild(modelElement);
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

std::string LevelModel::toLua(std::string name)
{
	std::stringstream ss;

	ss << name << ".model = Assets.LoadModel('Models/" << modelName << ".model')" << std::endl;

	if( parent->getComponent<LevelAnimation>() )
		ss << "Gear.AddAnimatedInstance(" << name << ".model, " << name << ".transformID, " << name << ".animation)" << std::endl;
	else
		ss << "Gear.AddStaticInstance(" << name << ".model, " << name << ".transformID)" << std::endl;

	return ss.str();
}