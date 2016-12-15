#include "Debug.h"
#include <cmath>
#include <glm/gtc/quaternion.hpp>
#include <glm/gtx/quaternion.hpp>


Debug::Debug()
{
	totalDebugLines = 0;
	totalDebugSpheres = 0;
	totalDebugAABBs = 0;
}


Debug::~Debug()
{
}

void Debug::drawLine(glm::vec3 start, glm::vec3 dest, glm::vec3 color)
{
	debugLines[totalDebugLines].start = start;
	debugLines[totalDebugLines].end = dest;
	debugLines[totalDebugLines].color = color;
	totalDebugLines++;
}

void Debug::drawAABB(const glm::vec3 minPos, const glm::vec3 maxPos, glm::vec3 color)
{

	debugAABBs[totalDebugAABBs].minPos = minPos;
	debugAABBs[totalDebugAABBs].maxPos = maxPos;
	debugAABBs[totalDebugAABBs].color = color;
	totalDebugAABBs++;
}

void Debug::drawSphere(const glm::vec3 position, const float radius, glm::vec3 color)
{

	debugSpheres[totalDebugSpheres].start = position;
	debugSpheres[totalDebugSpheres].radius = radius;
	debugSpheres[totalDebugSpheres].color = color;
	totalDebugSpheres++;
}

int Debug::getTotalLines()
{
	return totalDebugLines;
}
int Debug::getTotalSpheres()
{
	return totalDebugSpheres;
}

int Debug::getTotalAABBs()
{
	return totalDebugAABBs;
}

debugLineStruct *Debug::getDebugLines() {
	return this->debugLines;
}

debugSphereStruct *Debug::getDebugSpheres() {
	return this->debugSpheres;
}

debugAABBStruct *Debug::getDebugAABBs() {
	return this->debugAABBs;
}
void Debug::clear()
{
	totalDebugLines = 0;
	totalDebugSpheres = 0;
	totalDebugAABBs = 0;
}