#pragma once
#include "BaseIncludes.h"
#define HIGH_NUMBER 1000000.f

#pragma region struct_debug
struct debugLineStruct {
	glm::vec3 start, end, color;
	bool drawThroughWall;

	debugLineStruct(glm::vec3 start, glm::vec3 end, glm::vec3 color) {
		this->start = start;
		this->end = end;
		this->color = color;
	}

	debugLineStruct() {

	}
};

struct debugSphereStruct {
	glm::vec3 start, color;
	float radius;
	bool drawThroughWall;

	debugSphereStruct(glm::vec3 start, float radius, glm::vec3 color) {
		this->start = start;
		this->radius = radius;
		this->color = color;
	}

	debugSphereStruct() {

	}
};

struct debugAABBStruct {
	glm::vec3 minPos, maxPos, color;
	bool drawThroughWall;

	debugAABBStruct(glm::vec3 minPos, glm::vec3 maxPos, glm::vec3 color) {
		this->minPos = minPos;
		this->maxPos = maxPos;
		this->color = color;
	}

	debugAABBStruct() {

	}
};

struct debugOBBStruct {
	glm::vec3 pos;
	glm::vec3 xAxis, yAxis, zAxis;
	glm::vec3 halfLengths;
	glm::vec3 color;
	bool drawThroughWall;

	debugOBBStruct(glm::vec3 pos, glm::vec3 xAxis, glm::vec3 yAxis, glm::vec3 zAxis, glm::vec3 helfLengths, glm::vec3 color) {
		this->pos = pos;
		this->xAxis = xAxis;
		this->yAxis = yAxis;
		this->zAxis = zAxis;
		this->halfLengths = helfLengths;
	}

	debugOBBStruct() {

	}
};


#pragma endregion struct_debugs


class Debug
{
	
public:
	enum DebugerObject {
		LINE,
		NUM_DEBUG_OBJ
	};
private:
	
	debugLineStruct debugLines[50000];
	debugSphereStruct debugSpheres[100000];
	debugAABBStruct debugAABBs[65000];
	debugOBBStruct debugOBBs[10000];
	int totalDebugLines;
	int totalDebugSpheres;
	int totalDebugAABBs;
	int totalDebugOBBs;

	debugLineStruct	bufferDebugLines[50000];
	debugSphereStruct bufferDebugSpheres[100000];
	debugAABBStruct bufferDebugAABBs[65000];
	debugOBBStruct bufferDebugOBBs[10000];
	int bufferTotalDebugLines;
	int bufferTotalDebugSpheres;
	int bufferTotalDebugAABBs;
	int bufferTotalDebugOBBs;
	
public:
	
	//Dont create a new instance, create a new from Debugger::getInstance();
	GEAR_API Debug();
	GEAR_API ~Debug();
	//DONT CALL
	GEAR_API void clear();
	GEAR_API void update();
	//Draws a line at starting point until destination
	GEAR_API void drawLine(glm::vec3 start, glm::vec3 dest, glm::vec3 color = glm::vec3(0,1,0), const bool drawThroughWalls = false);
	/*
		Draw a cube
		minPos indicates near bot left corner
		maxPos indicated far top right corner
	*/
	GEAR_API void drawAABB(const glm::vec3 minPos, const glm::vec3 maxPos, glm::vec3 color = glm::vec3(0, 1, 0), const bool drawThroughWalls = false);
	//Draws a sphere at give poisiton and radius
	GEAR_API void drawSphere(const glm::vec3 position, const float radius, glm::vec3 color = glm::vec3(0, 1, 0), const bool drawThroughWalls = false);
	//Draws a obb at position
	GEAR_API void drawOBB(glm::vec3 pos, glm::vec3 xAxis, glm::vec3 yAxis, glm::vec3 zAxis, glm::vec3 helfLengths, glm::vec3 color = glm::vec3(0, 1, 0), const bool drawThroughWalls = false);
	//Draws a ray at given position to inf
	GEAR_API void drawRay(glm::vec3 pos, glm::vec3 dir, float length = HIGH_NUMBER, glm::vec3 color = glm::vec3(0, 1, 0), const bool drawThroughWalls = false);

	//DONT CALL
	GEAR_API int getTotalLines();
	//DONT CALL
	GEAR_API int getTotalSpheres();
	//DONT CALL
	GEAR_API int getTotalAABBs();
	//DONT CALL
	GEAR_API int getTotalOBBs();
	//DONT CALL
	GEAR_API debugLineStruct *getDebugLines();
	//DONT CALL
	GEAR_API debugSphereStruct *getDebugSpheres();
	//DONT CALL
	GEAR_API debugAABBStruct *getDebugAABBs();
	//DONT CALL
	GEAR_API debugOBBStruct *getDebugOBBs();
};

namespace Debugger {
	static Debug* debug_instance;

	static Debug* getInstance() {
		if (!debug_instance)
			debug_instance = new Debug();
		return debug_instance;
	}
}