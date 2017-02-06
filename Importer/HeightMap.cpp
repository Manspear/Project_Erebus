#include "HeightMap.h"

namespace Importer
{
	HeightMap::HeightMap()
	{
	}

	HeightMap::~HeightMap()
	{
		unload();
	}

	bool HeightMap::load( std::string path, Assets* assets)
	{
		bool result = false;
		//Highest point, Lowest point
		float highestPoint = 14.73f;
		float lowestPoint = 25.f;
		heightMulti = 1.0f;
		widthMulti = 1.0f;//1.015f
		breadthMulti = 1.0f;

		ImageAsset map;
		if (map.load(path, assets))
		{
			mapWidth = map.getWidth()+1;
			mapHeight = map.getHeight()+1;

			heightData = new float*[mapWidth];
			for (size_t i = 0; i < mapWidth; i++)
				heightData[i] = new float[mapHeight];

			for (size_t y = 0; y < mapHeight; y++)
			{
				for (size_t x = 0; x < mapWidth; x++)
				{
					int xindex = (int)x - 1;
					if (xindex < 0)
						xindex = 0;
					else if (xindex >= mapWidth - 1)
						xindex = mapWidth - 1;
					int yindex = (int)y;
					if (yindex >= mapHeight - 1)
						yindex = mapHeight - 1;

					heightData[x][y] = map.getPixelValue(xindex,yindex).red;
				}
			}

			minX = minZ = 0;
			maxX = (mapWidth-1)*widthMulti;
			maxZ = (mapHeight-1)*breadthMulti;

			result = true;
		}

		return result;
	}

	void HeightMap::unload()
	{
		//model.unload();

		if( heightData )
		{
			for( size_t i = 0; i<mapWidth; i++ )
				delete[] heightData[i];
			delete[] heightData;

			heightData = nullptr;
		}
	}

	void HeightMap::upload()
	{
	}

	bool HeightMap::inside( const glm::vec3& pos )
	{
		return ( pos.x >= position.x && pos.x <= position.x + mapWidth &&
				pos.z >= position.z && pos.z <= position.z + mapHeight );
	}

	void HeightMap::setPosition( const glm::vec3& pos )
	{
		position = pos;
	}

	void HeightMap::setHeightMultiplier( float multi )
	{
		heightMultiplier = multi;
	}

	int HeightMap::getMapWidth()
	{
		return mapWidth*widthMulti;
	}

	int HeightMap::getMapHeight()
	{
		return mapHeight*breadthMulti;
	}

	const glm::vec3& HeightMap::getPosition() const
	{
		return position;
	}

	float HeightMap::getHeightMultiplier()
	{
		return heightMultiplier;
	}

	float lerp(float a, float b, float t)
	{
		return (a + ((b - a) * t));
	}

	float HeightMap::getPos(float x, float z)
	{
		float firstX = x;
		float firstZ = z;

		x = x - position.x;
		z = z - position.z;

		if( x < 0 || z < 0 || x >= mapWidth-1 || z >= mapHeight-1 )
			return -5;

		int left, top;
		left = (int)x;
		top = (int)z;

		float xNormalized = fmod(x,1.0f);
		float zNormalized = fmod(z,1.0f);

		float topHeight =getPos(left, top);

		float bottomHeight = getPos(left, top);

		float heightVal = lerp(topHeight, bottomHeight, zNormalized);

		// TODO: What does this magic number mean? Ask Jesper
		return heightVal*heightMultiplier + 3;
	}
}