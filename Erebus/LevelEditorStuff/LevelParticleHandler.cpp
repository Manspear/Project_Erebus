#include "LevelParticleHandler.h"

LevelParticleHandler* LevelParticleHandler::g_instance = nullptr;
const std::string LevelParticleHandler::particleFolderName = "ParticleFiles/";
const std::string LevelParticleHandler::particleExtension= ".particle";


LevelParticleHandler::LevelParticleHandler() {

}
LevelParticleHandler::~LevelParticleHandler() {
	for (size_t i = 0; i < this->particleSystems.size(); i++)
	{
		delete this->particleSystems[i];
	}
}

void LevelParticleHandler::resetInstance() {
	//if (g_instance != nullptr)
	//	delete g_instance;
	//g_instance = new LevelParticleHandler();

	for (size_t i = 0; i < g_instance->particleSystems.size(); i++)
	{
		delete g_instance->particleSystems[i];
	}
	g_instance->particleSystems.clear();

}
void LevelParticleHandler::deleteInstance() {
	if (g_instance != nullptr)
		delete g_instance;
}
LevelParticleHandler* LevelParticleHandler::getInstance() {
	if (g_instance == nullptr)
		g_instance = new LevelParticleHandler();
	return g_instance;
}

//Maybe add extension????? MBY!
Gear::ParticleSystem * LevelParticleHandler::addParticleSystem(const std::string particleName)
{
	Gear::ParticleSystem* tempSystem = new Gear::ParticleSystem(getFullParticleLocation(particleName), LevelAssetHandler::getInstance()->getAssets());
	this->particleSystems.push_back(tempSystem);
	return tempSystem;
}

std::string LevelParticleHandler::getFullParticleLocation(const std::string particleName)
{
	return particleFolderName + particleName + particleExtension;
}

void LevelParticleHandler::update(const float & dt)
{
	for (size_t i = 0; i < this->particleSystems.size(); i++)
	{
		this->particleSystems.at(i)->update(dt);
	}
}
void LevelParticleHandler::deleteParticleSystem(Gear::ParticleSystem* systemToDelete) {
	for (size_t i = 0; i < this->particleSystems.size(); i++)
	{
		if (systemToDelete == this->particleSystems.at(i)) {
			delete systemToDelete;
			particleSystems.erase(this->particleSystems.begin() + i);
		}
	}
}

std::vector<Gear::ParticleSystem*> &LevelParticleHandler::getParticleSystem()
{
	return this->particleSystems;
}