#pragma once

#include "LevelActorComponent.h"
#include "HeightMap.h"
#include "LevelAssetHandler.h"

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
	void setOffset( glm::vec3 offset );
	void setTextureName( std::string name );

	bool getDraw();
	const glm::vec3& getOffset() const;
	const std::string& getTextureName() const;
	Importer::HeightMap* getHeightmap() const;

	static const char* name;

	static void setDebugger( Debug* debugger );

private:
	static Debug* s_debugger;

	bool draw;
	float lineLength;
	glm::vec3 offset;
	std::string textureName;
	Importer::HeightMap* heightmap;
};