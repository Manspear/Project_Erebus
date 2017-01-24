#pragma once
#include "BaseIncludes.h"
#include "../Gear/Light.h"
#include "../Gear/Debug.h"

class LevelLightHandler {
private:
	static LevelLightHandler* g_instance;
	std::vector<Lights::PointLight*>* pointLights;
	Debug* debugger;
	glm::vec3 debugColor;
public:
	LevelLightHandler();
	~LevelLightHandler();
	static LevelLightHandler* getInstance();
	static void deleteInstance();
	static void resetInstance();

	std::vector<Lights::PointLight*>* getPointLights();
	void addDebugger(Debug* debug);

	Lights::PointLight* addPointLight(glm::vec3 pos, glm::vec3 color, float radius);
	bool deletePointLight(Lights::PointLight* lightToDelete);
	void drawLight(Lights::PointLight* light);
};