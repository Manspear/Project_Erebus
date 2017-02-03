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

	bool HeightMap::load( std::string path, Assets* assets) // skicka in heightmapIndex här och gör .red * här
	{
		bool result = false;
		//Highest point, Lowest point
		float highestPoint = 14.73f;
		float lowestPoint = 25.f;
		heightMulti = 1.0f;
		widthMulti = 1.0f;//1.015f
		breadthMulti = 1.0f;
		//255, 24.435
		/*
		(int)(y/256)*3 =pos1 

		(int)(x/256) = pos2

		heightMapIndex = pos1+pos2

		heightData[i][x][y]

		heightData[heightMapIndex][x][y];

		heightData[9][256][256]
		*/
		//ImageAsset* map = assets->load<ImageAsset>( path );
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
					int xindex = x - 1;
					if (xindex < 0)
						xindex = 0;
					else if (xindex >= mapWidth - 1)
						xindex = mapWidth - 1;
					int yindex = y;
					if (yindex >= mapHeight - 1)
						yindex = mapHeight - 1;
					heightData[x][y] = map.getPixelValue(xindex, yindex).red * (33.4 / 255)+3;// max height / det jag har.  //mikael. 1 ska bli 0.47 .   * 0.47. 0.61 nu 512stora
				}
			}

			minX = minZ = 0;
			maxX = (mapWidth-1)*widthMulti;
			maxZ = (mapHeight-1)*breadthMulti;

			//pos = glm::vec3( 0, 0, 0 );

			result = true;

			/*model.header.numMeshes = 1;
			model.header.TYPE = eModelType::STATIC; // 0 = static, 1 = dynamic/animated

			model.dataptr = malloc( sizeof(GLuint)*2 + sizeof(int) );
			model.vertexBuffers = (GLuint*)model.dataptr;
			model.indexBuffers = (GLuint*)((char*)model.dataptr+sizeof(GLuint));
			model.bufferSizes = (int*)((char*)model.dataptr+sizeof(GLuint)*2);

			glGenBuffers( 1, &model.vertexBuffers[0] );
			glBindBuffer( GL_ARRAY_BUFFER, model.vertexBuffers[0] );

			int numVertices = mapHeight * mapWidth;
			sVertex* vertexData = new sVertex[numVertices];

			for( size_t y = 0, vertexIndex = 0; y<mapHeight; y++ )
			{
				for( size_t x = 0; x<mapWidth; x++, vertexIndex++ )
				{
					vertexData[vertexIndex].position[0] = x * widthMulti *1.00787401575f;
					//vertexData[vertexIndex].position[1] = 1; 
					vertexData[vertexIndex].position[1] = map.getPixelValue(x, y).red * (30.2 / 255) + 3;
					vertexData[vertexIndex].position[2] = y * breadthMulti;

					vertexData[vertexIndex].UV[0] =	((float)x / (this->mapWidth-1));
					vertexData[vertexIndex].UV[1] = -((float)y / (this->mapHeight));

					vertexData[vertexIndex].normal[0] = 0;
					vertexData[vertexIndex].normal[1] = 1;
					vertexData[vertexIndex].normal[2] = 0;

					vertexData[vertexIndex].tangent[0] = 1;
					vertexData[vertexIndex].tangent[1] = 0;
					vertexData[vertexIndex].tangent[2] = 0;
				}
			}

			glBufferData( GL_ARRAY_BUFFER, sizeof(sVertex)*numVertices, vertexData, GL_STATIC_DRAW );

			int numIndices = ((mapHeight-1)*(mapWidth-1))*6;
			GLuint* indices = new GLuint[numIndices];
			int indiceIndex = 0;

			for( size_t y = 0; y<mapHeight-2; y++ )
			{
				for( size_t x = 0; x<mapWidth-2; x++ )
				{
					GLuint start = y* mapWidth + x;
					indices[indiceIndex++] = start;
					indices[indiceIndex++] = start + mapWidth;
					indices[indiceIndex++] = start + 1;

					indices[indiceIndex++] = start + 1;
					indices[indiceIndex++] = start + mapWidth;
					indices[indiceIndex++] = start + 1 + mapWidth;
				}
			}

			glGenBuffers( 1, &model.indexBuffers[0] );
			glBindBuffer( GL_ELEMENT_ARRAY_BUFFER, model.indexBuffers[0] );
			glBufferData( GL_ELEMENT_ARRAY_BUFFER, sizeof(GLuint)*numIndices, indices, GL_STATIC_DRAW );

			model.bufferSizes[0] = numIndices;

			delete[] indices;
			delete[] vertexData;

			result = true;

			model.material = assets->load<MaterialAsset>( "Materials/heightmap.material" );*/
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

	int HeightMap::getMapWidth()
	{
		return mapWidth*widthMulti;
	}

	int HeightMap::getMapHeight()
	{
		return mapHeight*breadthMulti;
	}

	/*glm::mat4 HeightMap::getWorldMat()
	{
		return this->worldMatrix;
	}

	void HeightMap::setPos(const glm::vec3& pos)
	{
		for (size_t i = 0; i < pos.length(); i++)
		{
			worldMatrix[3][i] = pos[i];
		}
	}*/
/*
	float HeightMap::getPos(float x, float z)
	{
		if (x < minX || z < minZ
			|| x>= maxX || z>= maxZ)
			return -50;

		x /= widthMulti;
		z /= breadthMulti;

		float returnVal = 0;
		int xLow, xHigh;
		int zLow, zHigh;
		float xDec, zDec;

		float tempXLow, tempZLow;


		xDec = modf(x, &tempXLow);
		zDec = modf(z, &tempZLow);
		xLow = tempXLow;
		zLow = tempZLow;
		xHigh = xLow + 1;
		zHigh = zLow + 1;

		float topLeftH, topRightH, botLeftH, botRightH;

		float amountTopLeft = ((1 - xDec) + (1 - zDec)) *.5f;
		float amountTopRight = ((xDec) + (1 - zDec)) * .5;
		float amountBotLeft = ((1 - xDec) + (zDec)) * .5f;
		float amountBotRight = ((xDec)+(zDec)) * .5f;

		topLeftH = getHardPosAt(xLow, zHigh) * amountTopLeft;
		topRightH = getHardPosAt(xHigh, zHigh) * amountTopRight;
		botLeftH = getHardPosAt(xLow, zLow) * amountBotLeft;
		botRightH = getHardPosAt(xHigh, zLow) * amountBotRight;


		returnVal = (topLeftH + topRightH + botLeftH + botRightH) * .5f;
		return returnVal;
	}
	*/
	
	/*bool HeightMap::rayIntersection(glm::vec3 rayO, glm::vec3 rayD)
	{
		bool returnVal = false;
		float EPSILON = 0.1f;

		float distance = abs((rayO.y + this->pos.y) / rayD.y);
		glm::vec3 hitPoint = rayO + (rayD*distance);
		if (hitPoint.y > -EPSILON || hitPoint.y < EPSILON)
		{
			if ((hitPoint.x >= this->minX && hitPoint.x <= maxX) &&
				((hitPoint.z >= this->minZ && hitPoint.z <= maxZ)))
			{
				returnVal = true;
				//Collision occured;
			}
		}
		return returnVal;
	}*/

	/*ModelAsset* HeightMap::getModel()
	{
		return &model;
	}*/

	float HeightMap::getHardPosAt(int x, int z)
	{
		return this->heightData[x][z];
	}

	//300, 300
	//float HeightMap::getPos(float x, float z)
	//{
	//	if (x < minX || z < minZ
	//		|| x >= maxX || z >= maxZ)
	//		return -50; // This is so that the game doesnt crash if you are outside of the heightmap's min and max value. It put you at -50 so programmers can view stuff from underneath
	//	
	//	x /= widthMulti;
	//	z /= breadthMulti;
	//	float value = 0;
	//	float value2 = 0;
	//	float xFractPart, zFractPart, hmX, hmXWider, hmY, hmYTaller;

	//	xFractPart = modf(x, &hmX);// xFractPart = 0.141593 x = 3.141593 hmX = 3
	//	hmXWider = hmX + 1; // hmXWider = 4.    hmY^	hmYWider^
	//						//										   3			4
	//	zFractPart = modf(z, &hmY);//			hmX^	hmXWider^	0.14 of hmX & 0.86 of hmXWider will be used. hmX and hmXWider represent heightmap pixels
	//	hmYTaller = hmY + 1;
	//	//												This will calculate the X's value. Being the height
	//	value += getHardPosAt(hmX, hmY) * xFractPart;// lower left corner of a pixel. xFractPart = 0.14 hmX's value will affect 14%
	//	value += getHardPosAt(hmXWider, hmY) * (1 - xFractPart);// 1 - 0.14 = 0.86 86%.					hmXWider's value will affect 86%
	//															//												This will calculate the Y's value. (z in enginge, y in heightmap)
	//	value += getHardPosAt(hmX, hmYTaller) * zFractPart;
	//	value += getHardPosAt(hmXWider, hmYTaller) * (1 - zFractPart);

	//	return (value * .5f);// Interpolate between 2 numbers, x and y. Instead of / 2 we use * 0.5 for optimization purposes. Return is a height
	//}

	float lerp(float a, float b, float t)
	{
		return (a + ((b - a) * t));
	}

	float HeightMap::getPos(float x, float z)
	{
		float realX = x;
		float realZ = z;

		x = (int)x % 512;
		z = (int)z % 512;

		// the first thing we need to do is figure out where on the heightmap
		// "position" is. This'll make the math much simpler later.
		if (x < minX || z < minZ
			|| x >= maxX || z >= maxZ)
		{
			//printf("%f, %f, %f, %f\n", x, z, maxX, maxZ);
			return -5; // This is so that the game doesnt crash if you are outside of the heightmap's min and max value. It put you at -50 so programmers can view stuff from underneath
		}
			
		int heightTile = 0;
		float positionOnHeightmapX = realX - heightTile;
		float positionOnHeightmapZ= realZ - heightTile;

		// we'll use integer division to figure out where in the "heights" array
		// positionOnHeightmap is. Remember that integer division always rounds
		// down, so that the result of these divisions is the indices of the "upper
		// left" of the 4 corners of that cell.
		int left, top;
		left = (int)((float)positionOnHeightmapX / widthMulti);
		top = (int)((float)positionOnHeightmapZ / breadthMulti);

		// next, we'll use modulus to find out how far away we are from the upper
		// left corner of the cell. Mod will give us a value from 0 to terrainScale,
		// which we then divide by terrainScale to normalize 0 to 1.
		//float xNormalized = (positionOnHeightmapX % widthMulti) / widthMulti;
		//float zNormalized = (positionOnHeightmapZ % breadthMulti) / breadthMulti;
		float xNormalized = fmod(positionOnHeightmapX,widthMulti) / widthMulti;
		float zNormalized = fmod(positionOnHeightmapZ,breadthMulti) / breadthMulti;

		// Now that we've calculated the indices of the corners of our cell, and
		// where we are in that cell, we'll use bilinear interpolation to calculuate
		// our height. This process is best explained with a diagram, so please see
		// the accompanying doc for more information.
		// First, calculate the heights on the bottom and top edge of our cell by
		// interpolating from the left and right sides.
		float topHeight = lerp(
			getHardPosAt(left, top),
			(getHardPosAt(left+1,top)),
			xNormalized);

		float bottomHeight = lerp(
			getHardPosAt(left , (top + 1)),
			getHardPosAt((left + 1), top + 1),
			xNormalized);

		// next, interpolate between those two values to calculate the height at our
		// position.
		float heightVal = lerp(topHeight, bottomHeight, zNormalized);

		float fractPart, xFloored, zFloored, posx, posz;
		posx = realX / 512;
		posz = realZ / 512;
		fractPart = modf(posx, &xFloored);// xFractPart = 0.141593 x = 3.141593 xFloored = 3
		fractPart = modf(posz, &zFloored);

		heightmapIndex = (zFloored * 2 + xFloored) + 1;
		//printf("heightmapIndex: %d, x: %f, z: %f \n", heightmapIndex, realX, realZ);
		if (heightmapIndex == 1)
		{
			return heightVal * 1;
		}
		else if (heightmapIndex == 2)
		{
			return heightVal * 0.733;
		}
		else if (heightmapIndex == 3)
		{
			return heightVal * 0.596;
		}
		else if (heightmapIndex == 4)
		{
			return heightVal * 0.596;
		}
		else return 55;
	}
}