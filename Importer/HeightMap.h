#pragma once
#include "Importer.h"
#include "BaseIncludes.h"
#include "TextureAsset.h"
#include <math.h>

class HeightMap
{
	

private:
	GLuint VBO, VAO, iVBO;
	int iVBOsize;
	glm::mat4 worldMatrix;
	float **heightData;
	float getHardPosAt(int x, int z);
	int mapWidth, mapHeight;

	float minX, maxX, minZ, maxZ;
	glm::vec3 pos;
public:
	HeightMap();
	~HeightMap();

	void loadHeightMap(Importer::ImageAsset* map);

	void Draw();
	glm::mat4 getWorldMat();
	void setPos(const glm::vec3& pos);
	float getPos(float x, float z);
	bool rayIntersection(glm::vec3 rayO, glm::vec3 rayD);
};

