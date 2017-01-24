#pragma once
#include<map>
#include <string>
#include "LevelActorComponent.h"
#include "TinyXml\tinyxml2.h"
#include <iostream> // prob remove dis
					// yes
#include <sstream>

enum
{
	EXPORT_ERROR = -1,
	EXPORT_NONE = 0,
	EXPORT_STATIC,
	EXPORT_ENEMY,
	MAX_EXPORT_TYPES
};

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
	void setExportType( int type );
	const std::string& getActorType() const;

	std::map<std::string, LevelActorComponent*>& getAllComponents();

	bool LevelActor::setAsSelectedActor(TwBar * bar);

	static const char* EXPORT_TYPE_NAMES[MAX_EXPORT_TYPES];

private:
	std::map<std::string, LevelActorComponent*> actorComponents;
	std::string actorType;
	int exportType;

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

	static TwType TW_TYPE_EXPORT_TYPES()
	{
		TwEnumVal exportVals[] =
		{
			{ EXPORT_NONE, EXPORT_TYPE_NAMES[EXPORT_NONE] },
			{ EXPORT_STATIC, EXPORT_TYPE_NAMES[EXPORT_STATIC] },
			{ EXPORT_ENEMY, EXPORT_TYPE_NAMES[EXPORT_ENEMY] },
		};
	}
};

