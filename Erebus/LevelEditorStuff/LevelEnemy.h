#pragma once

#include "BaseIncludes.h"
#include "LevelActorComponent.h"
#include "Debug.h"
#include "LevelActor.h"
#include "LevelTransform.h"

enum
{
	ENEMY_MELEE = 0,
	ENEMY_RANGED,
	ENEMY_DUMMY,
	MAX_ENEMY_TYPES
};

enum enemyElement {
	FIRE,
	NATURE,
	ICE,
	NEUTRAL,
	NUM_ELEMENTS
};

class LevelEnemy : public LevelActorComponent {
private:
	float moveSpeed;
	float health;
	float visionRange;
	glm::vec3 visionColor;
	int type;
	int element;
	static Debug* g_debugger;

	static const char* ENEMY_TYPE_NAMES[MAX_ENEMY_TYPES];
	static const char* ENEMY_ELEMENT_NAMES[enemyElement::NUM_ELEMENTS];
	static TwType TW_TYPE_ENEMY_ENUM()
	{
		static TwEnumVal vals[MAX_ENEMY_TYPES] =
		{
			{ ENEMY_MELEE, ENEMY_TYPE_NAMES[ENEMY_MELEE] },
			{ ENEMY_RANGED, ENEMY_TYPE_NAMES[ENEMY_RANGED] },
			{ ENEMY_DUMMY, ENEMY_TYPE_NAMES[ENEMY_DUMMY] }
		};


		static TwType result = TwDefineEnum( "enemyTypeEnum", vals, MAX_ENEMY_TYPES );
		return result;
	}

	static TwType TW_ELEMENT_ENEMY_ENUM()
	{
		static TwEnumVal elementVals[enemyElement::NUM_ELEMENTS] =
		{
			{ enemyElement::FIRE, ENEMY_ELEMENT_NAMES[enemyElement::FIRE] },
			{ enemyElement::NATURE, ENEMY_ELEMENT_NAMES[enemyElement::NATURE] },
			{ enemyElement::ICE, ENEMY_ELEMENT_NAMES[enemyElement::ICE] },
			{ enemyElement::NEUTRAL, ENEMY_ELEMENT_NAMES[enemyElement::NEUTRAL] }
		};


		static TwType result = TwDefineEnum("enemyElementEnum", elementVals, enemyElement::NUM_ELEMENTS);
		return result;
	}


public:
	
	static const char* name;
	LevelEnemy();
	~LevelEnemy();
	void initialize(tinyxml2::XMLElement* element) override;
	void update(float deltaTime) override;
	std::string getName() override;
	tinyxml2::XMLElement* toXml(tinyxml2::XMLDocument* doc) override;
	std::string toLuaLoad(std::string name) override;
	std::string toLuaUnload(std::string name) override;
	void postInitialize() override;
	void setTwStruct(TwBar * twBar) override;
	static void setDebugger(Debug* debug);
	void removeComponent() override;
};