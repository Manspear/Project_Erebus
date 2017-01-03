#pragma once
#include<map>
#include <string>
#include "LevelActorComponent.h"
#include "TinyXml\tinyxml2.h"
#include <iostream> // prob remove dis
					// yes
#include <sstream>

class LevelActor
{
public:
	LevelActor(unsigned int id);
	~LevelActor();
	void initialize(tinyxml2::XMLElement* data);
	//bool deleteComponent(std::string componentName);
	void postInitializeAllComponents();
	void update();
	void addComponent(LevelActorComponent* component);
	void printAllComponents();
	void insertXmlElement(tinyxml2::XMLElement* root, tinyxml2::XMLDocument* doc);
	unsigned int id;
	std::string toXml();
	std::string toLua();
	const std::string& getActorType() const;


private:
	std::map<std::string, LevelActorComponent*> actorComponents;
	std::string actorType;


	// template class here
public:
	//Returns nullptr when not found
	template <class T>
	T* getComponent()
	{
		T* component = nullptr;
		auto iterator = this->actorComponents.find(T::name);
		if (iterator != this->actorComponents.end())
		{
			component = dynamic_cast<T*>(iterator->second);

		}
		return component;
	}

	template <class T>
	bool deleteComponent()
	{
		bool deleted = false;
		auto it = this->actorComponents.find(T::name);
		if (it != this->actorComponents.end())
		{
			delete it->second;
			this->actorComponents.erase(it);
			deleted = true;
		}
		return deleted;
	}
};

