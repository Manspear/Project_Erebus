#pragma once
#include"LevelEditorStuff\LevelActorComponent.h"
#include "BaseIncludes.h"

class LevelPointLightComponent :LevelActorComponent
{
public:
	static const char* name;

	LevelPointLightComponent();
	~LevelPointLightComponent();

	void initialize(tinyxml2::XMLElement* element) override;

	std::string getName() override;
	tinyxml2::XMLElement* toXml(tinyxml2::XMLDocument* doc) override;
	std::string toLua(std::string name) override;
	void postInitialize() override;

private:

};