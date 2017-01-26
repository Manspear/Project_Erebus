#include "LevelSound.h"

const char* LevelSound::name = "LevelSound";
const char* LevelSound::SOUND_FLAG_NAMES[MAX_SOUND_FLAGS] =
{
	"3D",
	"Track",
	"Effects",
	"Stream",
	"Loop",
	"Paused"
};
Debug* LevelSound::s_debugger = nullptr;

LevelSound::LevelSound()
	: volume( 0.5f )
{
	for( int i=0; i<MAX_SOUND_FLAGS; i++ )
		flags[i] = false;
}

LevelSound::~LevelSound()
{
	LevelTransform* transform = parent->getComponent<LevelTransform>();
	if( transform )
	{
		transform->deleteListener( this );
	}
}

void LevelSound::initialize( tinyxml2::XMLElement* element )
{
}

void LevelSound::postInitialize()
{
	LevelTransform* transform = parent->getComponent<LevelTransform>();
	if( transform )
	{
		transform->addListener( this );
	}
}

std::string LevelSound::getName()
{
	return name;
}

tinyxml2::XMLElement* LevelSound::toXml( tinyxml2::XMLDocument* doc )
{
	return nullptr;
}

std::string LevelSound::toLua( std::string name )
{
	return "";
}

void LevelSound::setTwStruct( TwBar* bar )
{
	TwAddVarRO( bar, "soundPosition", LevelUI::TW_TYPE_VECTOR3F(), &position, "label='Position:'" );
	TwAddVarRO( bar, "soundName", TW_TYPE_STDSTRING, &soundName, "label='Sound Name:'" );
	TwAddVarRW( bar, "soundVolume", TW_TYPE_FLOAT, &volume, "label='Volume:'" );

	for( int i=0; i<MAX_SOUND_FLAGS; i++ )
	{
		char buf[32] = {};
		sprintf_s( buf, "label='%s'", SOUND_FLAG_NAMES[i] );
		TwAddVarRW( bar, SOUND_FLAG_NAMES[i], TW_TYPE_BOOLCPP, &flags[i], buf );
	}
}

void LevelSound::update( float deltaTime )
{
	s_debugger->drawSphere( position, volume );
}

void LevelSound::setSoundName( const std::string& name )
{
	soundName = name;
}

void LevelSound::setVolume( float v )
{
	volume = v;
}

const std::string& LevelSound::getSoundName() const
{
	return soundName;
}

float LevelSound::getVolume() const
{
	return volume;
}

void LevelSound::callListener( LevelActorComponent* component )
{
	LevelTransform* transform = (LevelTransform*)component;
	position = transform->getChangeTransformRef()->getPos();
}

void LevelSound::setDebugger( Debug* debugger )
{
	s_debugger = debugger;
}