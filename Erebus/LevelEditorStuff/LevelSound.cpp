#include "LevelSound.h"

const char* LevelSound::name = "LevelSound";

LevelSound::LevelSound()
	: volume( 0.5f )
{
}

LevelSound::~LevelSound()
{
}

void LevelSound::initialize( tinyxml2::XMLElement* element )
{
}

void LevelSound::postInitialize()
{
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

void LevelSound::update( float deltaTime )
{

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