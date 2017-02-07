#pragma once

#include "LevelActorComponent.h"
#include "LevelTransform.h"
#include <sstream>

class LevelSettings : public LevelActorComponent
{
public:
	LevelSettings();
	virtual ~LevelSettings();
	void initialize( tinyxml2::XMLElement* element ) override;
	void postInitialize() override;
	std::string getName() override;
	tinyxml2::XMLElement* toXml( tinyxml2::XMLDocument* doc ) override;
	std::string toLua( std::string name ) override;
	void update( float deltaTime ) override;
	void setTwStruct( TwBar* bar ) override;

	void callListener( LevelActorComponent* component ) override;

	static const char* name;
	static Debug* s_debugger;
	static void setDebugger( Debug* debugger );
	void removeComponent() override;

private:
	glm::vec3 playerStart;
	int heightmapStart;
};