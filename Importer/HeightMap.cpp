#include "HeightMap.h"

/*HeightMap::HeightMap()
{
	
}


HeightMap::~HeightMap()
{
	for (size_t i = 0; i < this->mapHeight; i++)
	{
		delete heightData[i];
	}
	delete heightData;
}

void HeightMap::loadHeightMap(Importer::ImageAsset * map , bool includeRenderPart)
{
	heightMulti = .03f;
	widthMulti = 1.0f;
	breadthMulti = 1.0f;
	this->mapWidth = map->getWidth();
	this->mapHeight = map->getHeight();
	
	heightData = new float*[map->getWidth()];
	for (size_t i = 0; i < map->getWidth(); i++)
	{
		heightData[i] = new float[map->getHeight()];
	}

	for (size_t y = 0; y < map->getHeight(); y++)
	{
		for (size_t x = 0; x < map->getWidth(); x++)
		{
			heightData[x][y] = map->getPixelValue(x, y).red*heightMulti;//(float)*(map->getPixels() + y*map->getWidth()*IMAGE_BPP + x*IMAGE_BPP);
		}
	}

	minX = 0;
	maxX = (this->mapWidth - 1) * widthMulti;
	minZ = 0;
	maxZ = (this->mapHeight - 1) * breadthMulti;
	this->pos = glm::vec3(0, 0, 0);
	if (includeRenderPart) {
		glGenVertexArrays(1, &VAO);
		glGenBuffers(1, &VBO);
		glBindVertexArray(VAO);
		glBindBuffer(GL_ARRAY_BUFFER, VBO);

		int numVertices = map->getHeight() * map->getWidth();


		float* heightFloatData = new float[numVertices * 5];
		//glm::vec3 *heightMapData = new glm::vec3[numVertices];


		for (size_t y = 0; y < map->getHeight(); y++)
		{
			for (size_t x = 0; x < map->getWidth(); x++)
			{
				heightFloatData[(y* map->getWidth() * 5) + (x * 5)] = x *								widthMulti;
				heightFloatData[(y* map->getWidth() * 5) + (x * 5) + 1] = map->getPixelValue(x, y).red*	heightMulti;
				heightFloatData[(y* map->getWidth() * 5) + (x * 5) + 2] = y *							breadthMulti;
				heightFloatData[(y* map->getWidth() * 5) + (x * 5) + 3] = ((float)x / this->mapWidth);
				heightFloatData[(y* map->getWidth() * 5) + (x * 5) + 4] = ((float)y / this->mapHeight);
				//heightMapData[y* map->getWidth() + x] = glm::vec3(
				//	x, 0, y
				//);

				//heightData[x][y] = map->getPixelValue(x, y).red;
			}
		}
		glBufferData(GL_ARRAY_BUFFER, sizeof(float) * 5 * numVertices, heightFloatData, GL_STATIC_DRAW);


		int numIndices = ((map->getHeight() - 1) * (map->getWidth() - 1)) * 6;
		GLuint* indices = new GLuint[numIndices];
		int indiceIndex = 0;

		for (size_t y = 0; y < map->getHeight() - 1; y++)
		{
			for (size_t x = 0; x < map->getWidth() - 1; x++)
			{
				GLuint start = y* map->getWidth() + x;
				indices[indiceIndex++] = start;
				indices[indiceIndex++] = start + map->getWidth();
				indices[indiceIndex++] = start + 1;

				indices[indiceIndex++] = start + 1;
				indices[indiceIndex++] = start + map->getWidth();
				indices[indiceIndex++] = start + 1 + map->getWidth();

			}
		}


		glGenBuffers(1, &iVBO);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, iVBO);
		glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(GLuint)*numIndices, indices, GL_STATIC_DRAW);

		glGetBufferParameteriv(GL_ELEMENT_ARRAY_BUFFER, GL_BUFFER_SIZE, &iVBOsize);

		delete indices;
		delete heightFloatData;
	}

}

void HeightMap::Draw() {
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	glEnableVertexAttribArray(0);
	glEnableVertexAttribArray(1);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float)*5, 0);
	glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, sizeof(float) * 5, (void*)(sizeof(float) * 3));
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, iVBO);
	glDrawElements(GL_TRIANGLES, iVBOsize / sizeof(unsigned int), GL_UNSIGNED_INT, 0);

	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
}

staticNonModels* HeightMap::getStaticNonModel() {
	int* dataSizes = new int[2];
	dataSizes[0] = 3;
	dataSizes[1] = 2;
	staticNonModels* model = new staticNonModels(this->VBO, this->iVBO, 2, dataSizes, 5, iVBOsize / sizeof(unsigned int), ShaderType::GEOMETRY_NON,&this->worldMatrix);
	return model;
}

glm::mat4 HeightMap::getWorldMat() {
	
	return this->worldMatrix;
}

void HeightMap::setPos(const glm::vec3& pos) {
	for (size_t i = 0; i < pos.length(); i++)
	{
		worldMatrix[3][i] = pos[i];
	}
}

float HeightMap::getPos(float x, float z) {
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

float HeightMap::getHardPosAt(int x, int z) {
	return this->heightData[x][z];
}

bool HeightMap::rayIntersection(glm::vec3 rayO, glm::vec3 rayD) {
	bool returnVal = false;
	float EPSILON = 0.1f;

	float distance = abs((rayO.y + this->pos.y) / rayD.y);
	glm::vec3 hitPoint = rayO + (rayD*distance);
	if (hitPoint.y > -EPSILON || hitPoint.y < EPSILON) {
		if ((hitPoint.x >= this->minX && hitPoint.x <= maxX) &&
			((hitPoint.z >= this->minZ && hitPoint.z <= maxZ))) {
			returnVal = true;
			//Collision occured;
		}
	}
	return returnVal;
}*/

namespace Importer
{
	HeightMap::HeightMap()
	{
	}

	HeightMap::~HeightMap()
	{
		unload();
	}

	bool HeightMap::load( std::string path, Assets* assets )
	{
		bool result = false;
		//Highest point, Lowest point
		float highestPoint = 14.73f;
		float lowestPoint = 25.f;
		heightMulti = 1.0f;
		widthMulti = 1.0f;
		breadthMulti = 1.0f;
		//255, 24.435

		//ImageAsset* map = assets->load<ImageAsset>( path );
		ImageAsset map;
		if( map.load( path, assets ) )
		{
			mapWidth = map.getWidth();
			mapHeight = map.getHeight();

			heightData = new float*[mapWidth];
			for( size_t i = 0; i<mapWidth; i++ )
				heightData[i] = new float[mapHeight];

			for (size_t y = 0; y < mapHeight; y++)
				for (size_t x = 0; x < mapWidth; x++)
					heightData[x][y] = map.getPixelValue(x, y).red * 0.47;// max height / det jag har.  //mikael. 1 ska bli 0.47 .   * 0.47

			minX = minZ = 0;
			maxX = (mapWidth-1)*widthMulti;
			maxZ = (mapHeight-1)*breadthMulti;

			pos = glm::vec3( 0, 0, 0 );

			model.header.numMeshes = 1;
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
					vertexData[vertexIndex].position[0] = x *							widthMulti;
					vertexData[vertexIndex].position[1] = 1; 
					//vertexData[vertexIndex].position[1] = map.getPixelValue(x, y).red * heightMulti;
					vertexData[vertexIndex].position[2] = y *							breadthMulti;

					vertexData[vertexIndex].UV[0] =	((float)x / this->mapWidth);
					vertexData[vertexIndex].UV[1] = -((float)y / this->mapHeight);

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

			for( size_t y = 0; y<mapHeight-1; y++ )
			{
				for( size_t x = 0; x<mapWidth-1; x++ )
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

			model.material = assets->load<MaterialAsset>( "Materials/heightmap.material" );
		}

		return result;
	}

	void HeightMap::unload()
	{
		model.unload();

		if( heightData )
		{
			for( size_t i = 0; i<mapWidth; i++ )
				delete[] heightData[i];
			delete[] heightData;

			heightData = nullptr;
		}
	}

	int HeightMap::getMapWidth()
	{
		return mapWidth;
	}

	int HeightMap::getMapHeight()
	{
		return mapHeight;
	}

	glm::mat4 HeightMap::getWorldMat()
	{
		return this->worldMatrix;
	}

	void HeightMap::setPos(const glm::vec3& pos)
	{
		for (size_t i = 0; i < pos.length(); i++)
		{
			worldMatrix[3][i] = pos[i];
		}
	}

	//float HeightMap::getPos(float x, float z)
	//{
	//	if (x < minX || z < minZ
	//		|| x>= maxX || z>= maxZ)
	//		return -50;

	//	x /= widthMulti;
	//	z /= breadthMulti;

	//	float returnVal = 0;
	//	int xLow, xHigh;
	//	int zLow, zHigh;
	//	float xDec, zDec;

	//	float tempXLow, tempZLow;


	//	xDec = modf(x, &tempXLow);
	//	zDec = modf(z, &tempZLow);
	//	xLow = tempXLow;
	//	zLow = tempZLow;
	//	xHigh = xLow + 1;
	//	zHigh = zLow + 1;

	//	float topLeftH, topRightH, botLeftH, botRightH;

	//	float amountTopLeft = ((1 - xDec) + (1 - zDec)) *.5f;
	//	float amountTopRight = ((xDec) + (1 - zDec)) * .5;
	//	float amountBotLeft = ((1 - xDec) + (zDec)) * .5f;
	//	float amountBotRight = ((xDec)+(zDec)) * .5f;

	//	topLeftH = getHardPosAt(xLow, zHigh) * amountTopLeft;
	//	topRightH = getHardPosAt(xHigh, zHigh) * amountTopRight;
	//	botLeftH = getHardPosAt(xLow, zLow) * amountBotLeft;
	//	botRightH = getHardPosAt(xHigh, zLow) * amountBotRight;


	//	returnVal = (topLeftH + topRightH + botLeftH + botRightH) * .5f;
	//	return returnVal;
	//}
	
	bool HeightMap::rayIntersection(glm::vec3 rayO, glm::vec3 rayD)
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
	}

	ModelAsset* HeightMap::getModel()
	{
		return &model;
	}

	float HeightMap::getHardPosAt(int x, int z)
	{
		return this->heightData[x][z];
	}

	//300, 300
	float HeightMap::getPos(float x, float z)
	{
		if (x < minX || z < minZ
			|| x >= maxX || z >= maxZ)
			return -50; // This is so that the game doesnt crash if you are outside of the heightmap's min and max value. It put you at -50 so programmers can view stuff from underneath
		
		x /= widthMulti;
		z /= breadthMulti;
		float value = 0;
		float xFractPart, zFractPart, hmX, hmXWider, hmY, hmYTaller;

		xFractPart = modf(x, &hmX);// xFractPart = 0.141593 x = 3.141593 hmX = 3
		hmXWider = hmX + 1; // hmXWider = 4.    hmY^	hmYWider^
							//										   3			4
		zFractPart = modf(z, &hmY);//			hmX^	hmXWider^	0.14 of hmX & 0.86 of hmXWider will be used. hmX and hmXWider represent heightmap pixels
		hmYTaller = hmY + 1;
		//												This will calculate the X's value. Being the height
		value += getHardPosAt(hmX, hmY) * xFractPart;// lower left corner of a pixel. xFractPart = 0.14 hmX's value will affect 14%
		value += getHardPosAt(hmXWider, hmY) * (1 - xFractPart);// 1 - 0.14 = 0.86 86%.					hmXWider's value will affect 86%
																//												This will calculate the Y's value. (z in enginge, y in heightmap)
		value += getHardPosAt(hmX, hmYTaller) * zFractPart;
		value += getHardPosAt(hmXWider, hmYTaller) * (1 - zFractPart);

		return (value * .5f);// Interpolate between 2 numbers, x and y. Instead of / 2 we use * 0.5 for optimization purposes. Return is a height
	}

}