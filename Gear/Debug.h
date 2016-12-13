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

class Debug
{
	
public:
	enum DebugerObject {
		LINE,
		NUM_DEBUG_OBJ
	};
private:
	
	GLuint VAO, VBO;
	std::vector<ObjectsToDraw*> objectsToDraw;
	//std::vector<staticNonModels*> objectsToDraw;
	staticNonModels* createLine(const glm::vec3 &start, const glm::vec3 &end);
	GEAR_API glm::vec3* getQuads(glm::vec3 start, glm::vec3 end, float size);
	staticNonModels* baseLine;
	std::vector<glm::mat4> worldMatrices;
	void clear();
public:
	
	//Dont create a new instance, create a new from Debugger::getInstance();
	GEAR_API Debug();
	GEAR_API ~Debug();

	//This is only called once!
	GEAR_API void drawAll(glm::mat4 &projectionMatrix, glm::mat4 &viewMatrix, ShaderProgram* program);
	//Draws a line at starting point until destination
	GEAR_API void drawLine(glm::vec3 start, glm::vec3 dest, glm::vec3 color = glm::vec3(0,1,0));
	/*
		Draw a cube
		minPos indicates near bot left corner
		maxPos indicated far top right corner
	*/
	GEAR_API void drawCube(const glm::vec3 minPos, const glm::vec3 maxPos, glm::vec3 color = glm::vec3(0, 1, 0));
	//Draws a sphere at give poisiton and radius
	GEAR_API void drawSphere(const glm::vec3 position, const float radius, glm::vec3 color = glm::vec3(0, 1, 0));
};

namespace Debugger {
	static Debug* debug_instance;

	static Debug* getInstance() {
		if (!debug_instance)
			debug_instance = new Debug();
		return debug_instance;
	}
}