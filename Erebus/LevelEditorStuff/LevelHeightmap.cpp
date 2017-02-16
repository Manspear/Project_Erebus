#include "LevelHeightmap.h"

const char* LevelHeightmap::name = "LevelHeightmap";
Debug* LevelHeightmap::s_debugger = nullptr;
int LevelHeightmap::currentID = 1;

LevelHeightmap::LevelHeightmap()
	: heightmap( nullptr ), draw( true ), lineLength( 0.5f ), heightMin( 0.0f), heightMax( 1.0f )
{
	memset( surrounding, 0, sizeof(int)*HEIGHTMAP_MAX_SURROUNDING );

	heightmapID = currentID++;
}

LevelHeightmap::~LevelHeightmap()
{
	if (this->parent != nullptr)
		this->parent->getComponent<LevelTransform>()->deleteListener(this);
}

void LevelHeightmap::initialize( tinyxml2::XMLElement* element )
{
	using namespace tinyxml2;

	textureName = element->FirstChildElement("TextureName")->GetText();

	XMLElement* e = element->FirstChildElement( "Draw" );
	draw = e->BoolAttribute("d");

	e = element->FirstChildElement( "LineLength" );
	lineLength = e->FloatAttribute( "l" );

	e = element->FirstChildElement( "Heights" );
	heightMax = e->FloatAttribute( "max" );
	heightMin = e->FloatAttribute( "min" );

	e = element->FirstChildElement( "Offset" );
	offset.x = e->FloatAttribute( "x" );
	offset.y = e->FloatAttribute( "y" );
	offset.z = e->FloatAttribute( "z" );

	e = element->FirstChildElement( "ID" );
	heightmapID = e->IntAttribute( "heightmapID" );

	if (currentID <= heightmapID)
		currentID = heightmapID + 1;

	for( int i=0; i<HEIGHTMAP_MAX_SURROUNDING; i++ )
	{
		surrounding[i] = std::atoi(element->FirstChildElement("ID")->Attribute((std::string("surrounding") + std::to_string(i)).c_str()));
	}
}

void LevelHeightmap::postInitialize()
{
	parent->setExportType( EXPORT_HEIGHTMAP );

	parent->getComponent<LevelTransform>()->addListener(this);

	if( !textureName.empty() )
		setTextureName( textureName );

	parent->setTileID( heightmapID );
}

std::string LevelHeightmap::getName()
{
	return name;
}

tinyxml2::XMLElement* LevelHeightmap::toXml( tinyxml2::XMLDocument* doc )
{
	using namespace tinyxml2;

	XMLElement* element = doc->NewElement(LevelHeightmap::name);
	XMLElement* heightmapElement = doc->NewElement("TextureName");
	heightmapElement->SetText(textureName.c_str());

	XMLElement* drawElement = doc->NewElement("Draw");
	drawElement->SetAttribute("d", draw);

	XMLElement* lineElement = doc->NewElement("LineLength");
	lineElement->SetAttribute("l", lineLength);

	XMLElement* heightElement = doc->NewElement("Heights");
	heightElement->SetAttribute("max", heightMax);
	heightElement->SetAttribute("min", heightMin);

	XMLElement* offsetElement = doc->NewElement("Offset");
	offsetElement->SetAttribute("x", offset.x);
	offsetElement->SetAttribute("y", offset.y);
	offsetElement->SetAttribute("z", offset.z);

	XMLElement* idElement = doc->NewElement("ID");
	idElement->SetAttribute("heightmapID", heightmapID);
	for( int i=0; i<HEIGHTMAP_MAX_SURROUNDING; i++ )
		idElement->SetAttribute( (std::string( "surrounding" ) + std::to_string(i)).c_str(), surrounding[i] );

	element->LinkEndChild( heightmapElement );
	element->LinkEndChild( drawElement );
	element->LinkEndChild( lineElement );
	element->LinkEndChild( heightElement );
	element->LinkEndChild( offsetElement );
	element->LinkEndChild( idElement );

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
	ss << name << ".asset:SetPosition({x=" << position.x+offset.x << ", y=" << position.y+offset.y+heightMin << ", z=" << position.z+offset.z << "})" << endl;
	//ss << name << ".heightMultiplier = " << (heightMax - heightMin)/255.0f << endl;
	ss << name << ".asset:SetHeightMultiplier(" << (heightMax-heightMin)/255.0f << ")" << endl;
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
					float heightData = heightmap->getHeightData(x,z);
					if( heightData > 0.5f )
					{
						float height = heightmap->getHeightData(x,z) * (heightMax-heightMin)/255.0f + heightMin;
						s_debugger->drawLine( glm::vec3( position.x+offset.x+x,position.y+offset.y+height-lineLength*0.5f,position.z+offset.z+z ), glm::vec3(position.x+offset.x+x,position.y+offset.y+height+lineLength*0.5f,position.z+offset.z+z) );
					}
				}
			}
		}

		s_debugger->drawAABB( position+offset, position + offset + glm::vec3( heightmap->getMapWidth(), 100.0f, heightmap->getMapHeight() ), glm::vec3( 1, 0, 0 ) );
	}
}

void TW_CALL LevelHeightmap::getColiderHM(void* cliendData) {
	LevelHeightmap* heightMapData =  static_cast<LevelHeightmap *>(cliendData);
	
	heightMapData->geniHeightMapColiders();


}

void LevelHeightmap::geniHeightMapColiders()
{
	usedCorners = std::vector<glm::vec2>();
	if (heightmap)
	{
		for (int x = 0; x < heightmap->getMapWidth(); x++)
		{
			for (int z = 0; z < heightmap->getMapHeight(); z++)
			{
				bool isStartNode = isNodeGoodStartPoint(x, z);

				if (isStartNode) {
					glm::vec2 direction = getDirectionOfCorner(x, z);
					float lengthOfDirectioN = getLengthOfDirection(x, z, direction);
					std::cout << "One direction is of length---- "<<lengthOfDirectioN << std::endl;
				}
			}
		}
	}
}

float LevelHeightmap::getLengthOfDirection(int x, int z, glm::vec2 dir)
{
	glm::vec2 tempPoint = glm::vec2(x + dir.x, z + dir.y);
	if (getDirectionOfCorner(x + dir.x, z + dir.y) == dir &&
		(x >= 0 && x < heightmap->getMapWidth() && (z >= 0 && z < heightmap->getMapHeight()))&&
		!(std::find(usedCorners.begin(), usedCorners.end(), tempPoint) != usedCorners.end())) {
		//FOllows same direction :)
		usedCorners.push_back(tempPoint);
		return getLengthOfDirection(x + dir.x, z + dir.y, dir) + 1;
	}
	else
		return 0;
}

bool LevelHeightmap::isNodeGoodStartPoint(int x, int z) {
	bool isGoodNode = false;
	if (isNode(x, z)) {
		glm::vec2 tempPoint = glm::vec2(x, z);
		bool usedThisNode = std::find(usedCorners.begin(), usedCorners.end(), tempPoint) != usedCorners.end();
		if (!usedThisNode) {
			if (isCorner(x, z)) {
				isGoodNode = true;
				usedCorners.push_back(tempPoint);
			}
		}
	}
	return isGoodNode;
}

glm::vec2 LevelHeightmap::getDirectionOfCorner(int x, int z) {
	glm::vec2 direction = glm::vec2(0);
	glm::vec2 sides[SideNames::NUM_SIDES];

	sides[BOT] = glm::vec2(x, z - 1);
	sides[TOP] = glm::vec2(x, z + 1);
	sides[LEFT] = glm::vec2(x - 1, z);
	sides[RIGHT] = glm::vec2(x + 1, z);
	for (size_t i = 0; i < NUM_SIDES; i++)
	{
		bool usedThisNode = std::find(usedCorners.begin(), usedCorners.end(), glm::vec2(sides[i].x, sides[i].y)) != usedCorners.end();
		if (!usedThisNode) {
			if (isCorner(sides[i].x, sides[i].y)) {
				if(direction != glm::vec2(0))
					std::cout << "Got 2 directions?" << std::endl;
				direction = sides[i] - glm::vec2(x,z);
			}
		}
	}

	return direction;
}

bool LevelHeightmap::isNode(int x, int z) {
	if ((x >= 0 && x < heightmap->getMapWidth() && (z >= 0 && z < heightmap->getMapHeight()))) {
		return (heightmap->getHeightData(x, z) > .5f);
	}
	
	return false;
}

bool LevelHeightmap::isCorner(int x, int z) {
	bool thisNodeIsCorner = false;

	glm::vec2 sides[SideNames::NUM_SIDES];

	sides[BOT] = glm::vec2(x, z - 1);
	sides[TOP] = glm::vec2(x, z + 1);
	sides[LEFT] = glm::vec2(x - 1, z);
	sides[RIGHT] = glm::vec2(x + 1, z);

	for (size_t i = 0; i < NUM_SIDES; i++)
	{
		if (!isNode(sides[i].x, sides[i].y)) {
			thisNodeIsCorner = true;
			i = NUM_SIDES;
		}
	}

	return thisNodeIsCorner;
}

void LevelHeightmap::setTwStruct( TwBar* bar )
{
	std::stringstream ss;
	ss << " label='Texture: " << textureName << "'" << std::endl;
	TwAddButton( bar, "textureName", NULL, NULL, ss.str().c_str() );

	TwAddVarRW( bar, "heightmapDraw", TW_TYPE_BOOLCPP, &draw, "label='Draw:'" );
	TwAddVarRW( bar, "heightmapLineLength", TW_TYPE_FLOAT, &lineLength, "label='Line Length:'" );
	//TwAddVarRW( bar, "heightmapHeightMultiplier", TW_TYPE_FLOAT, &heightMultiplier, "label='Height Multiplier:'" );
	TwAddVarRW( bar, "heightmapMax", TW_TYPE_FLOAT, &heightMax, "label='Y Max:'" );
	TwAddVarRW( bar, "heightmapMin", TW_TYPE_FLOAT, &heightMin, "label='Y Min:'" );
	TwAddVarRW( bar, "heightmapOffset", LevelUI::TW_TYPE_VECTOR3F(), &offset, "label='Offset:'" );

	TwAddVarRW( bar, "heightmapID", TW_TYPE_INT32, &heightmapID, "label='HeightmapID:'" );
	
	for( int i=0; i<HEIGHTMAP_MAX_SURROUNDING; i++ )
	{
		std::string name = "heightmapSurrounding" + std::to_string(i+1);
		std::string lbl = "label='#" + std::to_string(i+1) + "'";
		TwAddVarRW( bar, name.c_str(), TW_TYPE_INT32, &surrounding[i], lbl.c_str() );
	}

	TwAddButton(bar, "GenColHeightmap", getColiderHM, this, "label='gen coliders'");
}

void LevelHeightmap::setDraw( bool d )
{
	draw = d;
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

glm::vec3 LevelHeightmap::getMinPos() const
{
	return position + offset;
}

glm::vec3 LevelHeightmap::getMaxPos() const
{
	return position + offset + glm::vec3( heightmap->getMapWidth(), 100.0f, heightmap->getMapHeight() );
}

void LevelHeightmap::setDebugger( Debug* debugger )
{
	s_debugger = debugger;
}

void LevelHeightmap::callListener( LevelActorComponent* component )
{
	position = ((LevelTransform*)component)->getChangeTransformRef()->getPos();
}

void LevelHeightmap::removeComponent() {
	this->parent->deleteComponent<LevelHeightmap>();
}

void LevelHeightmap::setCurrentID(int id) {
	currentID = id;
}

int LevelHeightmap::getCurrentID() {
	return currentID;
}