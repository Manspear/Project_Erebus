#pragma once

#include "BaseIncludes.h"
#include "LevelActorComponent.h"
#include "Debug.h"
#include "LevelActor.h"
#include "LevelTransform.h"

class LevelEnemy : public LevelActorComponent {
private:
	float moveSpeed;
	float health;
	float visionRange;
	glm::vec3 visionColor;
	static Debug* g_debugger;
public:
	
	static const char* name;
	LevelEnemy();
	~LevelEnemy();
	void initialize(tinyxml2::XMLElement* element) override;
	void update(float deltaTime) override;
	std::string getName() override;
	tinyxml2::XMLElement* toXml(tinyxml2::XMLDocument* doc) override;
	std::string toLua(std::string name) override;
	void postInitialize() override;
	void setTwStruct(TwBar * twBar) override;
	static void setDebugger(Debug* debug);
	void removeComponent() override;
};