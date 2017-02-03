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
	EXPORT_HEIGHTMAP,
	EXPORT_COLLIDER,
	EXPORT_PLAYER_SPAWN,
	EXPORT_PLAYER,
	EXPORT_HEALTH_ORB,
	EXPORT_PARTICLE,
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
	bool addComponent(LevelActorComponent* component);
	void printAllComponents();
	void insertXmlElement(tinyxml2::XMLElement* root, tinyxml2::XMLDocument* doc);
	unsigned int id;
	std::string toXml();
	std::string toLua();
	void setExportType( int type );

	int getExportType();
	const std::string& getActorType() const;
	const std::string& getActorDisplayName() const;

	std::map<std::string, LevelActorComponent*>& getAllComponents();

	bool LevelActor::setAsSelectedActor(TwBar * bar);

	static const char* EXPORT_TYPE_NAMES[MAX_EXPORT_TYPES];

	void setActorType(std::string type);
	void setActorDisplayName(std::string name);

private:
	typedef std::map<std::string, LevelActorComponent*>::iterator ComponentIT;

	std::map<std::string, LevelActorComponent*> actorComponents;
	std::string actorType;
	int exportType;
	std::string actorDisplayName;

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
		static TwEnumVal exportVals[] =
		{
			{ EXPORT_NONE, EXPORT_TYPE_NAMES[EXPORT_NONE] },
			{ EXPORT_STATIC, EXPORT_TYPE_NAMES[EXPORT_STATIC] },
			{ EXPORT_ENEMY, EXPORT_TYPE_NAMES[EXPORT_ENEMY] },
			{ EXPORT_HEIGHTMAP, EXPORT_TYPE_NAMES[EXPORT_HEIGHTMAP] },
			{ EXPORT_COLLIDER, EXPORT_TYPE_NAMES[EXPORT_COLLIDER] },
			{ EXPORT_PLAYER_SPAWN, EXPORT_TYPE_NAMES[EXPORT_PLAYER_SPAWN] },
			{ EXPORT_PLAYER, EXPORT_TYPE_NAMES[EXPORT_PLAYER] },
			{ EXPORT_HEALTH_ORB, EXPORT_TYPE_NAMES[EXPORT_HEALTH_ORB] },
		};


		static TwType result = TwDefineEnum( "ExportType", exportVals, MAX_EXPORT_TYPES );

		return result;
	}
};

