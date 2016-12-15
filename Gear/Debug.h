#pragma once
#include "BaseIncludes.h"
#include "staticNonModels.h"

class ObjectsToDraw {
private:
	std::vector<staticNonModels*> objectsToDrawList;
	glm::vec3 color;
public:
	ObjectsToDraw(std::vector<staticNonModels*> objectToDraw, glm::vec3 color) {
		this->objectsToDrawList = objectToDraw;
		this->color = color;
	}

	~ObjectsToDraw() {
		for (size_t i = 0; i < objectsToDrawList.size(); i++)
		{
			delete objectsToDrawList[i];
		}
	}


	glm::vec3 getColor() {
		return this->color;
	}

	void drawAllLines() {
		for (size_t i = 0; i < objectsToDrawList.size(); i++)
		{
			objectsToDrawList[i]->drawAsLines();
		}
	}


};
#pragma region struct_debug
struct debugLineStruct {
	glm::vec3 start, end, color;

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

	debugAABBStruct(glm::vec3 minPos, glm::vec3 maxPos, glm::vec3 color) {
		this->minPos = minPos;
		this->maxPos = maxPos;
		this->color = color;
	}

	debugAABBStruct() {

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
	
	debugLineStruct debugLines[1000];
	debugSphereStruct debugSpheres[10000];
	debugAABBStruct debugAABBs[65000];
	int totalDebugLines;
	int totalDebugSpheres;
	int totalDebugAABBs;
	
public:
	
	//Dont create a new instance, create a new from Debugger::getInstance();
	GEAR_API Debug();
	GEAR_API ~Debug();
	//DONT CALL
	GEAR_API void clear();
	//Draws a line at starting point until destination
	GEAR_API void drawLine(glm::vec3 start, glm::vec3 dest, glm::vec3 color = glm::vec3(0,1,0));
	/*
		Draw a cube
		minPos indicates near bot left corner
		maxPos indicated far top right corner
	*/
	GEAR_API void drawAABB(const glm::vec3 minPos, const glm::vec3 maxPos, glm::vec3 color = glm::vec3(0, 1, 0));
	//Draws a sphere at give poisiton and radius
	GEAR_API void drawSphere(const glm::vec3 position, const float radius, glm::vec3 color = glm::vec3(0, 1, 0));



	//DONT CALL
	GEAR_API int getTotalLines();
	//DONT CALL
	GEAR_API int getTotalSpheres();
	//DONT CALL
	GEAR_API int getTotalAABBs();
	//DONT CALL
	GEAR_API debugLineStruct *getDebugLines();
	//DONT CALL
	GEAR_API debugSphereStruct *getDebugSpheres();
	//DONT CALL
	GEAR_API debugAABBStruct *getDebugAABBs();
};

namespace Debugger {
	static Debug* debug_instance;

	static Debug* getInstance() {
		if (!debug_instance)
			debug_instance = new Debug();
		return debug_instance;
	}
}