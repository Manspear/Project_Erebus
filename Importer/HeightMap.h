#pragma once
#include "BaseIncludes.h"
#include "ImageAsset.h"
#include "Assets.h"
#include <math.h>
#include "staticNonModels.h"
#include "ModelAsset.h"

namespace Importer
{
	class HeightMap : public Asset
	{
	public:
		IMPORTER_API HeightMap();
		IMPORTER_API ~HeightMap();

		IMPORTER_API bool load( std::string path, Assets* assets );
		IMPORTER_API void unload();

		IMPORTER_API glm::mat4 getWorldMat();
		IMPORTER_API void setPos( const glm::vec3& pos );
		IMPORTER_API float getPos( float x, float y );
		IMPORTER_API bool rayIntersection( glm::vec3 rayO, glm::vec3 dayD );

		IMPORTER_API ModelAsset* getModel();

		IMPORTER_API int getMapWidth();
		IMPORTER_API int getMapHeight();

	private:
		float getHardPosAt( int x, int y );

		ModelAsset model;
		glm::mat4 worldMatrix;
		float** heightData;
		int mapWidth, mapHeight;

		float minX, maxX, minZ, maxZ;
		float widthMulti, heightMulti, breadthMulti;
		glm::vec3 pos;
	};
}