#include "LevelHeightmap.h"

const char* LevelHeightmap::name = "LevelHeightmap";

LevelHeightmap::LevelHeightmap()
	: heightmap( nullptr ), draw( false )
{
}

LevelHeightmap::~LevelHeightmap()
{
}

void LevelHeightmap::initialize( tinyxml2::XMLElement* element )
{
	textureName = element->FirstChildElement("TextureName")->GetText();
}

void LevelHeightmap::postInitialize()
{
}

std::string LevelHeightmap::getName()
{
	return name;
}

tinyxml2::XMLElement* LevelHeightmap::toXml( tinyxml2::XMLDocument* doc )
{
	tinyxml2::XMLElement* element = doc->NewElement(LevelHeightmap::name);
	tinyxml2::XMLElement* heightmapElement = doc->NewElement("TextureName");
	heightmapElement->SetText(textureName.c_str());

	element->LinkEndChild(heightmapElement);

	return element;
}

std::string LevelHeightmap::toLua(std::string name)
{
	using namespace std;
	stringstream ss;

	return ss.str();
}

void LevelHeightmap::setTwStruct( TwBar* bar )
{
	std::stringstream ss;
	ss << " label='Texture: " << textureName << "'" << std::endl;
	TwAddButton( bar, "textureName", NULL, NULL, ss.str().c_str() );

	TwAddVarRW( bar, "heightmapDraw", TW_TYPE_BOOLCPP, &draw, "label='Draw'" );
	TwAddVarRW( bar, "heightmapOffset", LevelUI::TW_TYPE_VECTOR3F(), &offset, "label='Offset'" );
}

void LevelHeightmap::setDraw( bool d )
{
	draw = d;
}

void LevelHeightmap::setOffset( glm::vec3 o )
{
	offset = o;
}

void LevelHeightmap::setTextureName( std::string name )
{
	Importer::HeightMap* newHeightmap = LevelAssetHandler::getInstance()->getAssets()->load<HeightMap>( "Textures/" + name + ".png" );
	if( newHeightmap )
	{
		heightmap = newHeightmap;
		textureName = name;
	}
	else
	{
		char buf[128] = {};
		sprintf_s( buf, "Failed to load heightmap %s", name.c_str() );
		MessageBoxA( NULL, buf, "Level Editor - Error", MB_OK );
	}
}

bool LevelHeightmap::getDraw()
{
	return draw;
}

const glm::vec3& LevelHeightmap::getOffset() const
{
	return offset;
}

const std::string& LevelHeightmap::getTextureName() const
{
	return textureName;
}

Importer::HeightMap* LevelHeightmap::getHeightmap() const
{
	return heightmap;
}