#pragma once
#include"LevelActorComponent.h"
#include "BaseIncludes.h"
#include"Gear.h"
#include "LevelActor.h"
#include "LevelTransform.h"
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
	float getRadius();
	glm::vec3 getPos();
	glm::vec3 getColor();

	void setPos(glm::vec3);
	void setColor(glm::vec3);
	void setRadius(float radius);
	void update(float deltaTime) override;

	void setTwStruct(TwBar*) override;
	Lights::PointLight light;

	void callListener(LevelActorComponent* component) override;
private:
	float radius;
	glm::vec3 color;
	glm::vec3 pos;
	glm::vec3 worldPos;

	void setWorldPos(LevelTransform* transform);

	
};