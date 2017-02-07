#pragma once

#include "LevelActorComponent.h"
#include "HeightMap.h"
#include "LevelAssetHandler.h"

#define HEIGHTMAP_MAX_SURROUNDING 5

class LevelHeightmap : public LevelActorComponent
{
public:
	LevelHeightmap();
	~LevelHeightmap();

	void initialize(tinyxml2::XMLElement* element) override;
	void postInitialize() override;
	std::string getName() override;
	tinyxml2::XMLElement* toXml(tinyxml2::XMLDocument* doc) override;
	std::string toLua(std::string name) override;
	void update( float deltaTime ) override;
	
	void setTwStruct( TwBar* bar );

	void setDraw( bool draw );
	void setTextureName( std::string name );
	void setHeightmapID( int id );
	void setOffset( const glm::vec3& offset );

	bool getDraw();
	const std::string& getTextureName() const;
	Importer::HeightMap* getHeightmap() const;
	int getHeightmapID() const;
	const glm::vec3& getOffset() const;

	void callListener( LevelActorComponent* component ) override;

	static const char* name;

	static void setDebugger( Debug* debugger );
	void removeComponent() override;

private:
	static Debug* s_debugger;

	bool draw;
	float lineLength, heightMax, heightMin;
	glm::vec3 position, offset;
	std::string textureName;
	Importer::HeightMap* heightmap;

	static int currentID;
	int heightmapID;
	int surrounding[HEIGHTMAP_MAX_SURROUNDING];
};