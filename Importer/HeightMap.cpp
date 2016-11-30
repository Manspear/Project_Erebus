#include "HeightMap.h"



HeightMap::HeightMap()
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
	float heightMulti = .02f;
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
	maxX = this->mapWidth - 1;
	minZ = 0;
	maxZ = this->mapHeight - 1;
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
				heightFloatData[(y* map->getWidth() * 5) + (x * 5)] = x;
				heightFloatData[(y* map->getWidth() * 5) + (x * 5) + 1] = map->getPixelValue(x, y).red*heightMulti;
				heightFloatData[(y* map->getWidth() * 5) + (x * 5) + 2] = y;
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

				/*
				(width = 2)
				0  1
				2  3

				0, 1, 2
				1, 3, 2
				'   '
				*/
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
		//delete heightMapData;
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
	if (x < 0 || z < 0
		|| x>= mapWidth || z>= mapHeight)
		return 0;

	if (x > 35 && z > 35)
		int k =  0;
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
	//float temp = getHardPosAt((x), (z));
	//std::cout << "My height: " << returnVal << " Their Height: " << temp << std::endl;
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
	//std::cout << glm::to_string(hitPoint) << std::endl;
	if (hitPoint.y > -EPSILON || hitPoint.y < EPSILON) {
		if ((hitPoint.x >= this->minX && hitPoint.x <= maxX) &&
			((hitPoint.z >= this->minZ && hitPoint.z <= maxZ))) {
			returnVal = true;
			//Collision occured;
		}
	}
	return returnVal;
}