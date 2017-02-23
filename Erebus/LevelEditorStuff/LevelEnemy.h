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

class LevelEnemy : public LevelActorComponent {
private:
	float moveSpeed;
	float health;
	float visionRange;
	glm::vec3 visionColor;
	int type;
	static Debug* g_debugger;

	static const char* ENEMY_TYPE_NAMES[MAX_ENEMY_TYPES];
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