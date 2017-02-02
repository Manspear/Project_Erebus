#include "LevelHeightmap.h"

const char* LevelHeightmap::name = "LevelHeightmap";
Debug* LevelHeightmap::s_debugger = nullptr;
int LevelHeightmap::currentID = 1;

LevelHeightmap::LevelHeightmap()
	: heightmap( nullptr ), draw( true ), lineLength( 0.5f ), heightMultiplier( 0.1f )
{
	memset( surrounding, 0, sizeof(int)*HEIGHTMAP_MAX_SURROUNDING );

	heightmapID = currentID++;
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
	parent->setExportType( EXPORT_HEIGHTMAP );

	parent->getComponent<LevelTransform>()->addListener(this);
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

	LevelTransform* transform = parent->getComponent<LevelTransform>();
	assert( transform );

	glm::vec3 position = transform->getTransformRef()->getPos();

	ss << name << ".asset = Assets.LoadHeightmap(\"Textures/" << textureName << ".png\")" << endl;
	ss << name << ".asset:SetPosition({x=" << position.x+offset.x << ", y=" << position.y+offset.y << ", z=" << position.z+offset.z << "})" << endl;
	ss << name << ".heightMultiplier = " << heightMultiplier << endl;
	ss << name << ".surrounding = { ";

	bool needComma = false;
	for( int i=0; i<HEIGHTMAP_MAX_SURROUNDING; i++ )
	{
		if( surrounding[i] > 0 )
		{
			if( needComma )
			{
				ss << ", ";
				needComma = false;
			}

			ss << surrounding[i];
			needComma = true;
		}
	}
	ss << " }" << endl;

	return ss.str();
}

void LevelHeightmap::update( float deltaTime )
{
	if( heightmap )
	{
		if( draw )
		{
			for( int x=0; x<heightmap->getMapWidth(); x++ )
			{
				for( int z=0; z<heightmap->getMapHeight(); z++ )
				{
					float height = heightmap->getHardPosAt(x,z) * heightMultiplier;
					s_debugger->drawLine( glm::vec3( position.x+offset.x+x,position.y+offset.y+height-lineLength*0.5f,position.z+offset.z+z ), glm::vec3(position.x+offset.x+x,position.y+offset.y+height+lineLength*0.5f,position.z+offset.z+z) );
				}
			}
		}

		s_debugger->drawAABB( position+offset, position + offset + glm::vec3( heightmap->getMapWidth(), 100.0f, heightmap->getMapHeight() ), glm::vec3( 1, 0, 0 ) );
	}
}

void LevelHeightmap::setTwStruct( TwBar* bar )
{
	std::stringstream ss;
	ss << " label='Texture: " << textureName << "'" << std::endl;
	TwAddButton( bar, "textureName", NULL, NULL, ss.str().c_str() );

	TwAddVarRW( bar, "heightmapDraw", TW_TYPE_BOOLCPP, &draw, "label='Draw:'" );
	TwAddVarRW( bar, "heightmapLineLength", TW_TYPE_FLOAT, &lineLength, "label='Line Length:'" );
	TwAddVarRW( bar, "heightmapHeightMultiplier", TW_TYPE_FLOAT, &heightMultiplier, "label='Height Multiplier:'" );
	TwAddVarRW( bar, "heightmapOffset", LevelUI::TW_TYPE_VECTOR3F(), &offset, "label='Offset:'" );

	TwAddVarRW( bar, "heightmapID", TW_TYPE_INT32, &heightmapID, "label='HeightmapID:'" );
	
	for( int i=0; i<HEIGHTMAP_MAX_SURROUNDING; i++ )
	{
		std::string name = "heightmapSurrounding" + std::to_string(i+1);
		std::string lbl = "label='#" + std::to_string(i+1) + "'";
		TwAddVarRW( bar, name.c_str(), TW_TYPE_INT32, &surrounding[i], lbl.c_str() );
	}
}

void LevelHeightmap::setDraw( bool d )
{
	draw = d;
}

void LevelHeightmap::setHeightMultiplier( float multi )
{
	heightMultiplier = multi;
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

void LevelHeightmap::setHeightmapID( int id )
{
	heightmapID = id;
}

void LevelHeightmap::setOffset( const glm::vec3& o )
{
	offset = o;
}

bool LevelHeightmap::getDraw()
{
	return draw;
}

float LevelHeightmap::getHeightMultiplier() const
{
	return heightMultiplier;
}

const std::string& LevelHeightmap::getTextureName() const
{
	return textureName;
}

Importer::HeightMap* LevelHeightmap::getHeightmap() const
{
	return heightmap;
}

int LevelHeightmap::getHeightmapID() const
{
	return heightmapID;
}

const glm::vec3& LevelHeightmap::getOffset() const
{
	return offset;
}

void LevelHeightmap::setDebugger( Debug* debugger )
{
	s_debugger = debugger;
}

void LevelHeightmap::callListener( LevelActorComponent* component )
{
	position = ((LevelTransform*)component)->getChangeTransformRef()->getPos();
}