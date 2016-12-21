#pragma once
#include "LevelActorComponent.h"
#include "BaseIncludes.h"
#include "glm/ext.hpp"
#include "glm/gtx/string_cast.hpp"
#include "../Transform.h"
#include "LevelTransformHandler.h"
class LevelTransform : public LevelActorComponent
{
public:		
	static const char* name;
	LevelTransform();
	~LevelTransform();
	void initialize(tinyxml2::XMLElement* element) override;
	void update(float deltaTime) override;
	std::string getName() override;
	tinyxml2::XMLElement* toXml(tinyxml2::XMLDocument* doc) override;
	void postInitialize() override;
	void setParent(LevelActor* parent);

	void setTransform(int index);

	Transform* getTransformRef();

private:
	Transform* transformRef;
	TransformStruct* transformStructTemp;
	
};

