#pragma once

#include "LevelActor.h"
#include "LevelActorComponent.h"
#include "..\SoundEngine.h"
#include "Debug.h"
#include "LevelTransform.h"

class LevelSound : public LevelActorComponent
{
public:
	LevelSound();
	~LevelSound();

	void initialize( tinyxml2::XMLElement* element ) override;
	void postInitialize();
	std::string getName();
	tinyxml2::XMLElement* toXml( tinyxml2::XMLDocument* doc );
	std::string toLua( std::string name );

	void setTwStruct(TwBar* bar);
	void update( float deltaTime ) override;

	void setSoundName( const std::string& name );
	void setVolume( float volume );
	
	const std::string& getSoundName() const;
	float getVolume() const;

	void callListener( LevelActorComponent* component ) override;

	static const char* name;
	static void setDebugger( Debug* debugger );

private:
	static Debug* s_debugger;

	glm::vec3 position;
	std::string soundName;
	float volume;
};