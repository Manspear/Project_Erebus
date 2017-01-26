#include "LevelLightHandler.h"

LevelLightHandler* LevelLightHandler::g_instance = nullptr;

LevelLightHandler::LevelLightHandler()
{
	this->pointLights = new std::vector<Lights::PointLight*>();
	debugColor = glm::vec3(1, 1, 0);
}

LevelLightHandler::~LevelLightHandler()
{
	for (size_t i = 0; i < this->pointLights->size(); i++)
	{
		delete this->pointLights->at(i);
	}
	delete this->pointLights;
}

LevelLightHandler* LevelLightHandler::getInstance() {
	if (g_instance == nullptr)
		g_instance = new LevelLightHandler();
	return g_instance;
}
void LevelLightHandler::deleteInstance() {
	if(g_instance != nullptr)
		delete g_instance;
}

void LevelLightHandler::resetInstance()
{
	if (g_instance != nullptr)
		delete g_instance;
	g_instance = new LevelLightHandler();
}

std::vector<Lights::PointLight*>* LevelLightHandler::getPointLights() {
	return this->pointLights;
}

Lights::PointLight* LevelLightHandler::addPointLight(glm::vec3 pos, glm::vec3 color, float radius) {
	Lights::PointLight* light = new Lights::PointLight();
	light->pos = glm::vec4(pos,1);
	light->color = glm::vec4(color, 1);
	light->radius = glm::vec4(radius, 1, 0, 0);

	this->pointLights->push_back(light);

	return light;
}

bool LevelLightHandler::deletePointLight(Lights::PointLight* lightToDelete) {
	for (size_t i = 0; i < this->pointLights->size(); i++)
	{
		if (lightToDelete == this->pointLights->at(i)) {
			delete lightToDelete;
			pointLights->erase(this->pointLights->begin()+i);
		}
	}

	return true;
}

void LevelLightHandler::addDebugger(Debug* debug) {
	this->debugger = debug;
}


void LevelLightHandler::drawLight(Lights::PointLight* light) {
	this->debugger->drawSphere(glm::vec3(light->pos), light->radius.x, this->debugColor);
}