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
	std::string toLuaLoad(std::string name) override;
	std::string toLuaUnload(std::string name) override;
	void postInitialize() override;
	void setParent(LevelActor* parent);

	void setTransform(int index);

	Transform* getTransformRef();
	Transform* getChangeTransformRef();

	void setTwStruct(TwBar * twBar) override;
	void callListener(LevelActorComponent* component) override;
	void removeComponent() override;

private:
	Transform* transformRef;
	TransformStruct* transformStructTemp;
	bool recievedModelTransform;
	bool exportTransform;
};

