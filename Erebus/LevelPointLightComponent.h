#pragma once
#include "LevelActor.h"
#include "BaseIncludes.h"
#include "glm/ext.hpp"
#include "glm/gtx/string_cast.hpp"

class LevelPointLightComponent :public LevelActorComponent
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