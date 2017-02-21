#pragma once

#include "LevelActorComponent.h"
#include "HeightMap.h"
#include "LevelAssetHandler.h"
#include "..\AABBCollider.h"

#define HEIGHTMAP_MAX_SURROUNDING 5


class LevelHeightmap : public LevelActorComponent
{
	enum SideNames {
		BOT,
		TOP,
		LEFT,
		RIGHT,
		NUM_SIDES
	};

	enum SideDiagNames {
		BOT_LEFT,
		BOT_RIGHT,
		TOP_LEFT,
		TOP_RIGHT,
		NUM_SIDES_DIAG
	};

	enum HeightmapBoxType {
		BOXES_CORNERS,
		BOXES_ALL
	};

	

public:
	class CornerObjects {
	private:

	public:
		glm::vec2 positionInHeightmap;
		AABBCollider* colider = nullptr;
		glm::vec3 drawColor;
		CornerObjects(int x, int y, LevelHeightmap* thisHeightmap) {
			drawColor = glm::vec3(75,0,130);
			positionInHeightmap = glm::vec2(x, y);

			float height = thisHeightmap->heightmap->getHeightData(x, y) * (thisHeightmap->heightMax - thisHeightmap->heightMin) / 255.0f + thisHeightmap->heightMin;
			glm::vec3 finalPos = glm::vec3(x, height, y) + thisHeightmap->offset + thisHeightmap->position;
			glm::vec3 minPos = finalPos - glm::vec3(.5f);
			glm::vec3 maxPos = finalPos + glm::vec3(.5f);

			this->colider = new AABBCollider(minPos, maxPos, { 0,0,0 });
		}
		~CornerObjects() {
			if (colider != nullptr)
				delete this->colider;
		}
	};

	LevelHeightmap();
	~LevelHeightmap();

	void initialize(tinyxml2::XMLElement* element) override;
	void postInitialize() override;
	std::string getName() override;
	tinyxml2::XMLElement* toXml(tinyxml2::XMLDocument* doc) override;
	std::string toLuaLoad(std::string name) override;
	std::string toLuaUnload(std::string name) override;
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
	glm::vec3 getMinPos() const;
	glm::vec3 getMaxPos() const;
	int* getSurrounding() const;

	void callListener( LevelActorComponent* component ) override;

	static const char* name;

	static void setDebugger( Debug* debugger );
	void removeComponent() override;
	static void setCurrentID(int id);
	static int getCurrentID();
	static void TW_CALL getColiderHM(void* cliendData);
	void geniHeightMapColiders();
	bool isCorner(int x, int z);
	bool isNode(int x, int z);
	glm::vec2 getDirectionOfCorner(int x, int z);

	bool isNodeGoodStartPoint(int x, int z);

	float getLengthOfDirection(int x, int z, glm::vec2 dir);
	bool isInBound(int x, int z);

	std::vector<CornerObjects*> getCornerColliders();
	void changeBoxType();
private:
	HeightmapBoxType boxType;
	std::vector<glm::vec2> usedCorners;
	std::vector<CornerObjects*> cornerColiders;
	std::vector<CornerObjects*> allColiders;
	static Debug* s_debugger;

	bool draw;
	float lineLength, heightMax, heightMin;
	glm::vec3 position, offset;
	std::string textureName;
	Importer::HeightMap* heightmap;

	static int currentID;
	int heightmapID;
	int surrounding[HEIGHTMAP_MAX_SURROUNDING];

	int maxOffsetFromDir;
};

