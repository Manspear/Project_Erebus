#pragma once

#include "LevelActorComponent.h"
#include "..\SoundEngine.h"

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

	void update( float deltaTime ) override;

	void setSoundName( const std::string& name );
	void setVolume( float volume );
	
	const std::string& getSoundName() const;
	float getVolume() const;

	static const char* name;

private:
	std::string soundName;
	float volume;
};