#include "LevelSettings.h"
#include "LevelActor.h"

const char* LevelSettings::name = "LevelSettings";
Debug* LevelSettings::s_debugger = nullptr;

void LevelSettings::setDebugger( Debug* debugger )
{
	s_debugger = debugger;
}

LevelSettings::LevelSettings()
	: heightmapStart( 1 )
{
}

LevelSettings::~LevelSettings()
{
	if (this->parent != nullptr)
		this->parent->getComponent<LevelTransform>()->deleteListener(this);
}

void LevelSettings::initialize( tinyxml2::XMLElement* element )
{
	using namespace tinyxml2;
	
	XMLElement* playerStartElement = element->FirstChildElement("PlayerStart");
	playerStart.x = playerStartElement->FloatAttribute("x");
	playerStart.y = playerStartElement->FloatAttribute("y");
	playerStart.z = playerStartElement->FloatAttribute("z");

	XMLElement* playerStart2Element = element->FirstChildElement("Player2Start");
	if (playerStart2Element != nullptr) {
		player2Start.x = playerStart2Element->FloatAttribute("x");
		player2Start.y = playerStart2Element->FloatAttribute("y");
		player2Start.z = playerStart2Element->FloatAttribute("z");
	}
	else {
		player2Start = playerStart;
	}

	XMLElement* heightmapStartElement = element->FirstChildElement("HeightmapStart");
	heightmapStart = heightmapStartElement->IntAttribute("index");
}

void LevelSettings::postInitialize()
{
	LevelTransform* transform = parent->getComponent<LevelTransform>();
	if( transform )
		transform->addListener( this );
}

std::string LevelSettings::getName()
{
	return LevelSettings::name;
}

tinyxml2::XMLElement* LevelSettings::toXml( tinyxml2::XMLDocument* doc )
{
	using namespace tinyxml2;

	XMLElement* element = doc->NewElement(LevelSettings::name);

	XMLElement* playerStartElement = doc->NewElement("PlayerStart");
	playerStartElement->SetAttribute("x", playerStart.x);
	playerStartElement->SetAttribute("y", playerStart.y);
	playerStartElement->SetAttribute("z", playerStart.z);


	XMLElement* player2StartElement = doc->NewElement("Player2Start");
	player2StartElement->SetAttribute("x", player2Start.x);
	player2StartElement->SetAttribute("y", player2Start.y);
	player2StartElement->SetAttribute("z", player2Start.z);

	XMLElement* heightmapStartElement = doc->NewElement("HeightmapStart");
	heightmapStartElement->SetAttribute("index", heightmapStart);

	element->LinkEndChild( playerStartElement );
	element->LinkEndChild(player2StartElement);
	
	element->LinkEndChild( heightmapStartElement );

	return element;
}

std::string LevelSettings::toLuaLoad( std::string name )
{
	using namespace std;
	stringstream ss;
	ss << "if Network.GetNetworkHost() then" << endl;
	ss << "Transform.SetPosition(player.transformID, {x=" << playerStart.x << ", y=" << playerStart.y << ", z=" << playerStart.z << "})" << endl;
	ss << "else" << endl;
	ss << "Transform.SetPosition(player.transformID, {x=" << player2Start.x << ", y=" << player2Start.y << ", z=" << player2Start.z << "})" << endl;
	ss << "end" << endl;
	//ss << "player.currentHeightmap = heightmaps[" << heightmapStart << "]" << endl;
	//ss << "player.controller:SetHeightmap(player.currentHeightmap)" << endl;
	ss << "player:ChangeHeightmap(" << heightmapStart << ")" << endl;

	return ss.str();
}

std::string LevelSettings::toLuaUnload( std::string name )
{
	return "";
}

void LevelSettings::update( float deltaTime )
{
	s_debugger->drawSphere( playerStart, 0.5f, glm::vec3( 1.0f, 0.0f, 1.0f ) );
	s_debugger->drawSphere(player2Start, 0.5f, glm::vec3(1.0f, 1.0f, 1.0f));
}

void LevelSettings::setTwStruct( TwBar* bar )
{
	TwAddVarRO( bar, "settingsPlayerStart", LevelUI::TW_TYPE_VECTOR3F(), &playerStart, "label='Player Start:'" );
	TwAddVarRW(bar, "settingsPlayer2Start", LevelUI::TW_TYPE_VECTOR3F(), &player2Start, "label='Player2 Start:'");
	TwAddVarRW( bar, "settingsHeightmapStart", TW_TYPE_INT32, &heightmapStart, "label='Heightmap Start:' min=1" );
}

void LevelSettings::callListener( LevelActorComponent* component )
{
	playerStart = ((LevelTransform*)component)->getChangeTransformRef()->getPos();
}


void LevelSettings::removeComponent() {
	this->parent->deleteComponent<LevelSettings>();

}