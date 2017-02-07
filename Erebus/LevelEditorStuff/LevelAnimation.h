#pragma once

#include "LevelActorComponent.h"
#include "BaseIncludes.h"
#include "LevelActor.h"

class LevelAnimation : public LevelActorComponent
{
public:
	static const char* name;

	LevelAnimation();
	~LevelAnimation();
	void initialize(tinyxml2::XMLElement* element) override;
	void update(float deltaTime) override;
	std::string getName() override;
	tinyxml2::XMLElement* toXml(tinyxml2::XMLDocument* doc) override;
	std::string toLua(std::string name) override;
	void postInitialize() override;
	void setParent(LevelActor* parent);
	void removeComponent() override;


};