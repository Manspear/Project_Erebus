#pragma once
#include"LevelActorComponent.h"
#include "BaseIncludes.h"

class LevelPointLightComponent : public LevelActorComponent
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
	float radius;
	glm::vec3 color;
	glm::vec3 pos;
};