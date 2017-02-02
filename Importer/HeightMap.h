#pragma once
#include "BaseIncludes.h"
#include "ImageAsset.h"
#include "Assets.h"
#include <math.h>
#include "ModelAsset.h"

namespace Importer
{
	class HeightMap : public Asset
	{
	public:
		IMPORTER_API HeightMap();
		IMPORTER_API ~HeightMap();

		IMPORTER_API bool load( std::string path, Assets* assets) override;
		IMPORTER_API void unload() override;
		IMPORTER_API void upload() override;

		IMPORTER_API bool inside( const glm::vec3& position );

		IMPORTER_API void setPosition( const glm::vec3& position );
		IMPORTER_API void setHeightMultiplier( float multi );

		//IMPORTER_API glm::mat4 getWorldMat();
		//IMPORTER_API void setPos( const glm::vec3& pos );
		IMPORTER_API float getPos( float x, float y);
		//IMPORTER_API bool rayIntersection( glm::vec3 rayO, glm::vec3 dayD );

		//IMPORTER_API ModelAsset* getModel();

		IMPORTER_API int getMapWidth();
		IMPORTER_API int getMapHeight();
		IMPORTER_API const glm::vec3& getPosition() const;
		IMPORTER_API float getHeightMultiplier();

	private:
		float getHardPosAt( int x, int y );

		float** heightData;
		int mapWidth, mapHeight, heightmapIndex;

		float minX, maxX, minZ, maxZ;
		float widthMulti, heightMulti, breadthMulti;
		glm::vec3 position;

		float heightMultiplier;
	};
}