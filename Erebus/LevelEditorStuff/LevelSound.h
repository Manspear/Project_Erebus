#pragma once

#include "LevelActor.h"
#include "LevelActorComponent.h"
#include "..\SoundEngine.h"
#include "Debug.h"
#include "LevelTransform.h"

enum
{
	SOUND_FLAG_3D = 0,
	SOUND_FLAG_TRACK,
	SOUND_FLAG_EFFECTS,
	SOUND_FLAG_STREAM,
	SOUND_FLAG_LOOP,
	SOUND_FLAG_PAUSED,
	MAX_SOUND_FLAGS
};

class LevelSound : public LevelActorComponent
{
public:
	LevelSound();
	~LevelSound();

	void initialize( tinyxml2::XMLElement* element ) override;
	void postInitialize();
	std::string getName();
	tinyxml2::XMLElement* toXml( tinyxml2::XMLDocument* doc );
	std::string toLuaLoad(std::string name) override;
	std::string toLuaUnload(std::string name) override;

	void setTwStruct(TwBar* bar);
	void update( float deltaTime ) override;

	void setSoundName( const std::string& name );
	void setVolume( float volume );
	
	const std::string& getSoundName() const;
	float getVolume() const;

	void callListener( LevelActorComponent* component ) override;

	static const char* name;
	static const char* SOUND_FLAG_NAMES[MAX_SOUND_FLAGS];
	static void setDebugger( Debug* debugger );
	void removeComponent() override;

private:
	void setCombinedFlags( int f );
	int getCombinedFlags();

	static Debug* s_debugger;

	glm::vec3 position;
	std::string soundName;
	float volume;
	bool flags[MAX_SOUND_FLAGS];
};