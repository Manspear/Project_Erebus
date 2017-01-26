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
	using namespace tinyxml2;

	XMLElement* child = element->FirstChildElement( "Position" );
	position.x = child->FloatAttribute("x");
	position.y = child->FloatAttribute("y");
	position.z = child->FloatAttribute("z");

	child = element->FirstChildElement("File");
	soundName = child->Attribute("f");

	child = element->FirstChildElement("Volume");
	volume = child->FloatAttribute("v");

	child = element->FirstChildElement("Flags");
	setCombinedFlags( child->IntAttribute("f") );
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
	using namespace tinyxml2;

	XMLElement* element = doc->NewElement(name);
	
	XMLElement* positionElement = doc->NewElement("Position");
	positionElement->SetAttribute("x", position.x);
	positionElement->SetAttribute("y", position.y);
	positionElement->SetAttribute("z", position.z);

	XMLElement* fileElement = doc->NewElement("File");
	fileElement->SetAttribute( "f", soundName.c_str() );

	XMLElement* volumeElement = doc->NewElement("Volume");
	volumeElement->SetAttribute("v", volume );

	XMLElement* flagsElement = doc->NewElement("Flags");
	flagsElement->SetAttribute("f", getCombinedFlags() );

	element->LinkEndChild( positionElement );
	element->LinkEndChild( fileElement );
	element->LinkEndChild( volumeElement );
	element->LinkEndChild( flagsElement );

	return element;
}

std::string LevelSound::toLua( std::string name )
{
	using namespace std;
	stringstream ss;

	ss << name << ".sound = {}" << endl;
	ss << name << ".sound.file = " << soundName << endl;
	ss << name << ".sound.position = { x=" << position.x << ", y=" << position.y << ", z=" << position.z << "}" << endl;
	ss << name << ".sound.volume = " << volume << endl;
	ss << name << ".sound.flags = " << getCombinedFlags() << endl;

	return ss.str();
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

void LevelSound::setCombinedFlags( int f )
{
	for( int i=0; i<MAX_SOUND_FLAGS; i++ )
		flags[i] = ( 1 << i ) & f;
}

int LevelSound::getCombinedFlags()
{
	int combinedFlags = SOUND_NO_FLAG;
	/*if( flags[SOUND_FLAG_3D] ) combinedFlags |= SOUND_3D;
	if( flags[SOUND_FLAG_TRACK] ) combinedFlags |= SOUND_TRACK;
	if( flags[SOUND_FLAG_EFFECTS] ) combinedFlags |= SOUND_EFFECTS;
	if( flags[SOUND_FLAG_STREAM] ) combinedFlags |= SOUND_STREAM;
	if( flags[SOUND_FLAG_LOOP] ) combinedFlags |= SOUND_LOOP;
	if( flags[SOUND_FLAG_PAUSED] ) combinedFlags |= SOUND_PAUSED;*/

	for( int i=1; i<MAX_SOUND_FLAGS; i++ )
	{
		if( flags[i] )
			combinedFlags |= ( 1 << i );
	}

	return combinedFlags;
}