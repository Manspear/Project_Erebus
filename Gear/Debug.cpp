#include "Debug.h"
#include <cmath>
#include <glm/gtc/quaternion.hpp>
#include <glm/gtx/quaternion.hpp>

Debug::Debug()
{
	totalDebugLines = 0;
	totalDebugSpheres = 0;
	totalDebugAABBs = 0;
	totalDebugOBBs = 0;
}


Debug::~Debug()
{
}

void Debug::update()
{
	memcpy( bufferDebugLines, debugLines, totalDebugLines*sizeof(debugLineStruct) );
	memcpy( bufferDebugSpheres, debugSpheres, totalDebugSpheres*sizeof(debugSphereStruct) );
	memcpy( bufferDebugAABBs, debugAABBs, totalDebugAABBs*sizeof(debugAABBStruct) );
	memcpy( bufferDebugOBBs, debugOBBs, totalDebugOBBs*sizeof(debugOBBStruct) );

	bufferTotalDebugLines = totalDebugLines;
	bufferTotalDebugSpheres = totalDebugSpheres;
	bufferTotalDebugAABBs = totalDebugAABBs;
	bufferTotalDebugOBBs = totalDebugOBBs;
}

void Debug::drawLine(glm::vec3 start, glm::vec3 dest, glm::vec3 color, const bool drawThroughWalls )
{
	debugLines[totalDebugLines].start = start;
	debugLines[totalDebugLines].end = dest;
	debugLines[totalDebugLines].color = color;
	debugLines[totalDebugLines].drawThroughWall = drawThroughWalls;
	totalDebugLines++;
}

void Debug::drawAABB(const glm::vec3 minPos, const glm::vec3 maxPos, glm::vec3 color, const bool drawThroughWalls )
{

	debugAABBs[totalDebugAABBs].minPos = minPos;
	debugAABBs[totalDebugAABBs].maxPos = maxPos;
	debugAABBs[totalDebugAABBs].color = color;
	debugAABBs[totalDebugAABBs].drawThroughWall = drawThroughWalls;
	totalDebugAABBs++;
}

void Debug::drawSphere(const glm::vec3 position, const float radius, glm::vec3 color, const bool drawThroughWalls )
{

	debugSpheres[totalDebugSpheres].start = position;
	debugSpheres[totalDebugSpheres].radius = radius;
	debugSpheres[totalDebugSpheres].color = color;
	debugSpheres[totalDebugSpheres].drawThroughWall = drawThroughWalls;
	totalDebugSpheres++;
}

void Debug::drawOBB(glm::vec3 pos, glm::vec3 xAxis, glm::vec3 yAxis, glm::vec3 zAxis, glm::vec3 helfLengths, glm::vec3 color, const bool drawThroughWalls )
{
	debugOBBs[totalDebugOBBs].pos = pos;
	debugOBBs[totalDebugOBBs].xAxis = xAxis;
	debugOBBs[totalDebugOBBs].yAxis = yAxis;
	debugOBBs[totalDebugOBBs].zAxis = zAxis;
	debugOBBs[totalDebugOBBs].halfLengths = helfLengths;
	debugOBBs[totalDebugOBBs].color = color;
	debugOBBs[totalDebugOBBs].drawThroughWall = drawThroughWalls;
	totalDebugOBBs++;
}

void Debug::drawRay(glm::vec3 pos, glm::vec3 dir, float length, glm::vec3 color, const bool drawThroughWalls )
{
	this->drawLine(pos, pos + (dir*length), color, drawThroughWalls);
}


int Debug::getTotalLines()
{
	return bufferTotalDebugLines;
}
int Debug::getTotalSpheres()
{
	return bufferTotalDebugSpheres;
}

int Debug::getTotalAABBs()
{
	return bufferTotalDebugAABBs;
}

int Debug::getTotalOBBs() 
{
	return bufferTotalDebugOBBs;
}

debugLineStruct *Debug::getDebugLines()
{
	return this->bufferDebugLines;
}

debugSphereStruct *Debug::getDebugSpheres()
{
	return this->bufferDebugSpheres;
}

debugAABBStruct *Debug::getDebugAABBs()
{
	return this->bufferDebugAABBs;
}

debugOBBStruct *Debug::getDebugOBBs() 
{
	return this->bufferDebugOBBs;
}
void Debug::clear()
{
	totalDebugLines = 0;
	totalDebugSpheres = 0;
	totalDebugAABBs = 0;
	totalDebugOBBs = 0;
}