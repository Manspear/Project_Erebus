#include "Actor.h"



Actor::Actor(unsigned int id)
{
	this->id = id;
}


Actor::~Actor()
{
	for (auto element : this->actorComponents)
	{
		delete element.second;
	} 
}

void Actor::initialize(tinyxml2::XMLElement* data)
{
	this->actorType = data->Attribute("type");
}

void Actor::update()
{
	for (auto it = this->actorComponents.begin(); it != this->actorComponents.end(); ++it)
	{
		it->second->update(1.0f);
	}
}

void Actor::addComponent(ActorComponent * component)
{
	this->actorComponents.insert(std::pair<std::string,ActorComponent*>(component->getName(),component));
	component->setParent(this);
}

void Actor::printAllComponents()
{
	for (auto element : this->actorComponents)
	{
		std::cout << element.first <<"  " <<  element.second << std::endl;
	}
}

void Actor::postInitializeAllComponents()
{
	for (auto element : this->actorComponents)
	{
		element.second->postInitialize();
	}
}

std::string Actor::toXml()
{
	tinyxml2::XMLDocument doc;
	tinyxml2::XMLPrinter printer;
	const char* actorElementValue = "Actor";

	tinyxml2::XMLElement* actorElement = doc.NewElement(actorElementValue);
	actorElement->SetAttribute("type",this->actorType.c_str());
	for (auto element : this->actorComponents)
	{
		actorElement->LinkEndChild(element.second->toXml(&doc));
	}

	doc.LinkEndChild(actorElement);
	doc.Accept(&printer);
	return printer.CStr();
}