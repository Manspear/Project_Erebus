#include "LevelTransform.h"

const char* LevelTransform::name = "LevelTransform";



LevelTransform::LevelTransform()
{
	transformStructTemp = new TransformStruct();
	this->transformRef = new Transform();
	transformRef->setThePtr(transformStructTemp);
	recievedModelTransform = false;
}


LevelTransform::~LevelTransform()
{
	if (!recievedModelTransform)
	{
		delete this->transformRef;
		delete this->transformStructTemp;
	}
}

void LevelTransform::initialize(tinyxml2::XMLElement* element)
{
	this->transformRef->setThePtr(this->transformStructTemp);

	float xPos;
	float yPos;
	float zPos;

	float xRot;
	float yRot;
	float zRot;

	float xScale;
	float yScale;
	float zScale;


	xPos = std::stof(element->FirstChildElement("Position")->Attribute("x"));
	yPos = std::stof(element->FirstChildElement("Position")->Attribute("y"));
	zPos = std::stof(element->FirstChildElement("Position")->Attribute("z"));

	xRot = std::stof(element->FirstChildElement("Rotation")->Attribute("x"));
	yRot = std::stof(element->FirstChildElement("Rotation")->Attribute("y"));
	zRot = std::stof(element->FirstChildElement("Rotation")->Attribute("z"));

	xScale = std::stof(element->FirstChildElement("Scale")->Attribute("x"));
	yScale = std::stof(element->FirstChildElement("Scale")->Attribute("y"));
	zScale = std::stof(element->FirstChildElement("Scale")->Attribute("z"));

	glm::vec3 pos = glm::vec3(xPos, yPos, zPos);
	glm::vec3 rot = glm::vec3(xRot, yRot, zRot);
	glm::vec3 scale = glm::vec3(xScale, yScale, zScale);

	transformRef->setPos(pos);

	transformRef->setRotation(rot);

	transformRef->setScale(scale);
	

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
	glm::vec3 oldScale = glm::vec3(this->transformRef->getScale());
	delete this->transformRef;
	delete this->transformStructTemp;
	recievedModelTransform = true;

	this->transformRef = LevelTransformHandler::getInstance()->getTransformAt(index);
	this->transformRef->setPos(oldPos);
	this->transformRef->setRotation(oldRot);
	this->transformRef->setScale(oldScale);
}

tinyxml2::XMLElement* LevelTransform::toXml(tinyxml2::XMLDocument* doc)
{
	tinyxml2::XMLElement* element = doc->NewElement(LevelTransform::name);
	glm::vec3 position = this->transformRef->getPos();
	glm::vec3 rotation = this->transformRef->getRotation();
	glm::vec3 scale = this->transformRef->getScale();

	tinyxml2::XMLElement* positionElement = doc->NewElement("Position");
	positionElement->SetAttribute("x", position.x);
	positionElement->SetAttribute("y", position.y);
	positionElement->SetAttribute("z", position.z);

	tinyxml2::XMLElement* rotationElement = doc->NewElement("Rotation");
	rotationElement->SetAttribute("x", rotation.x);
	rotationElement->SetAttribute("y", rotation.y);
	rotationElement->SetAttribute("z", rotation.z);

	tinyxml2::XMLElement* scaleElement = doc->NewElement("Scale");
	scaleElement->SetAttribute("x", scale.x);
	scaleElement->SetAttribute("y", scale.y);
	scaleElement->SetAttribute("z", scale.z);

	element->LinkEndChild(positionElement);
	element->LinkEndChild(rotationElement);
	element->LinkEndChild(scaleElement);

	return element;
}

std::string LevelTransform::toLua(std::string name)
{
	using namespace std;
	stringstream ss;

	glm::vec3 pos = transformRef->getPos();
	glm::vec3 scale = transformRef->getScale();
	glm::vec3 rot = transformRef->getRotation();

	ss << name << ".transformID = Transform.Bind()" << endl;
	ss << "Transform.SetPosition(" << name << ".transformID, " <<  "{x=" << pos.x << ", y=" << pos.y << ", z=" << pos.z << "})" << endl;
	ss << "Transform.SetScaleNonUniform(" << name << ".transformID, " << scale.x << ", " << scale.y << ", " << scale.z << ")" << endl;
	ss << "Transform.SetRotation(" << name << ".transformID" << rot.x << ", " << rot.y << ", " << rot.z << ")" << endl;

	return ss.str();
}

Transform* LevelTransform::getTransformRef(){
	for (size_t i = 0; i < this->Listeners.size(); i++)
	{
		this->Listeners[i]->callListener(this);

	}
	return this->transformRef;
}

Transform* LevelTransform::getChangeTransformRef() {
	return this->transformRef;
}

void LevelTransform::setTwStruct(TwBar * twBar) {

	//TwAddVarRO(twBar, "compName", TW_TYPE_CHAR, this->name, NULL);
	TwAddVarRW(twBar, "Position", LevelUI::TW_TYPE_VECTOR3F(), (void*)&transformRef->getPosRef(), NULL);
	TwAddVarRW(twBar, "Rotation", LevelUI::TW_TYPE_VECTOR3F(), (void*)&transformRef->getRotationRef(), NULL);
	TwAddVarRW(twBar, "Scale", LevelUI::TW_TYPE_VECTOR3F(), (void*)&transformRef->getScaleRef(), NULL);
}

void LevelTransform::callListener(LevelActorComponent* component) {

}