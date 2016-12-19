#pragma once
#include<map>
#include <string>
#include "ActorComponent.h"
#include "TinyXml\tinyxml2.h"
#include <iostream> // prob remove dis


class Actor
{
public:
	Actor(unsigned int id);
	~Actor();
	void initialize(tinyxml2::XMLElement* data);
	//bool deleteComponent(std::string componentName);
	void postInitializeAllComponents();
	void update();
	void addComponent(ActorComponent* component);
	void printAllComponents();
	unsigned int id;
	std::string toXml();
	
	


private:
	std::map<std::string, ActorComponent*> actorComponents;
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

