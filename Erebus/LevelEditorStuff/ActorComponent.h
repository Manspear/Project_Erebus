#pragma once
#include "TinyXml\tinyxml2.h"
#include <string>

class Actor; // Forward declaration to avoid circular dependency

class ActorComponent
{
public:

	virtual ~ActorComponent() { }
	virtual void initialize(tinyxml2::XMLElement* element) = 0;
	virtual void postInitialize() = 0; // talking to other components are done here
	virtual std::string getName() = 0; // check actor.addComponent() to see why this is needed
	virtual tinyxml2::XMLElement* toXml(tinyxml2::XMLDocument* doc) = 0;
	virtual void update(float deltaTime) {}
	virtual void setParent(Actor* parent) { this->parent = parent; };

protected:
	Actor* parent = nullptr;
};

