#pragma once
#include "LevelActorComponent.h"
#include "BaseIncludes.h"
#include "glm/ext.hpp"
#include "glm/gtx/string_cast.hpp"
#include "../Transform.h"
#include "LevelTransform.h"
#include "LevelActor.h"
#include "LevelModelHandler.h"
class LevelModel : public LevelActorComponent
{
public:
	static const char* name;
	LevelModel();
	~LevelModel();
	void initialize(tinyxml2::XMLElement* element) override;
	void update(float deltaTime) override;
	std::string getName() override;
	tinyxml2::XMLElement* toXml(tinyxml2::XMLDocument* doc) override;
	void postInitialize() override;
	void setParent(LevelActor* parent);


private:
	std::string modelName;
};

