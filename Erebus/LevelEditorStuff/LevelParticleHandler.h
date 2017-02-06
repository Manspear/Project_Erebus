#pragma once
#include "BaseIncludes.h"
#include "Gear.h"
#include "LevelAssetHandler.h"


class LevelParticleHandler {
private:
	static LevelParticleHandler* g_instance;
	std::vector<Gear::ParticleSystem*> particleSystems;
	
public:
	LevelParticleHandler();
	~LevelParticleHandler();
	static const std::string particleFolderName; 
	static const std::string particleExtension;
	static void resetInstance();
	static void deleteInstance();
	static LevelParticleHandler* getInstance();

	void update(const float& dt);

	Gear::ParticleSystem* addParticleSystem(const std::string particleName);
	void deleteParticleSystem(Gear::ParticleSystem* systemToDelete);

	std::vector<Gear::ParticleSystem*> &getParticleSystem();
	std::string getFullParticleLocation(const std::string particleName);
};