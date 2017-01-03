#include "LevelAnimation.h"

const char* LevelAnimation::name = "LevelAnimation";

LevelAnimation::LevelAnimation()
{
}

LevelAnimation::~LevelAnimation()
{
}

void LevelAnimation::initialize(tinyxml2::XMLElement* element)
{
}

void LevelAnimation::update(float deltaTime)
{
}

std::string LevelAnimation::getName()
{
	return LevelAnimation::name;
}

tinyxml2::XMLElement* LevelAnimation::toXml(tinyxml2::XMLDocument* doc)
{
	return nullptr;
}

std::string LevelAnimation::toLua(std::string name)
{
	std::stringstream ss;

	ss << name << ".animation = Animation.Create()" << std::endl;

	return ss.str();
}

void LevelAnimation::postInitialize()
{
}

void LevelAnimation::setParent(LevelActor* parent)
{
	this->parent = parent;
}