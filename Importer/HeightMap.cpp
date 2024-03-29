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
			mapWidth = map.getWidth();
			mapHeight = map.getHeight();

			heightData = new float*[mapWidth];
			for (size_t i = 0; i < mapWidth; i++)
				heightData[i] = new float[mapHeight];

			for (size_t y = 0; y < mapHeight; y++)
			{
				for (size_t x = 0; x < mapWidth; x++)
				{
					heightData[x][y] = map.getPixelValue(x,y).red;
				}
			}

			minX = minZ = 0;
			maxX = mapWidth*widthMulti;
			maxZ = mapHeight*breadthMulti;

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
		return ( pos.x >= position.x && pos.x <= position.x + mapWidth-1 &&
				pos.z >= position.z && pos.z <= position.z + mapHeight-1 );
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

	float HeightMap::getHardPosAt(int x, int z)
	{
		return this->heightData[x][z];
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

		if (z > this->mapHeight - 2) {
			z = this->mapHeight - 3.0f;
		}
		else if (z < 0)
			z = 0;
		
		if (x > this->mapWidth - 2) {
			x = this->mapWidth - 3.0f;
		}
		else if (x < 0)
			x = 0;

		if( x < 0 || z < 0 || x >= mapWidth-1 || z >= mapHeight-1 )
			return -5;

		int left, top;
		left = (int)x;
		top = (int)z;

		float xNormalized = fmod(x,1.0f);
		float zNormalized = fmod(z,1.0f);

		float topHeight = lerp(
			getHardPosAt(left, top),
			(getHardPosAt(left+1,top)),
			xNormalized);

		float bottomHeight = lerp(
			getHardPosAt(left , (top + 1)),
			getHardPosAt((left + 1), top + 1),
			xNormalized);

		float heightVal = lerp(topHeight, bottomHeight, zNormalized);

		return heightVal*heightMultiplier + position.y;
	}
}