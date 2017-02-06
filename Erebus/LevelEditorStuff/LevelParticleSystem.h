#pragma once
#include "BaseIncludes.h"
#include "LevelActor.h"
#include "LevelTransform.h"
#include "LevelActorComponent.h"
#include "LevelParticleHandler.h"

class LevelParticleSystem : public LevelActorComponent {
private:
	Gear::ParticleSystem* systemRef;
	glm::vec3 offset;
	bool alive;

	void setWorldPos(LevelTransform* myTransform);
	static const char* baseParticleSystem;
	std::string particleFile, particleFileLocation;
public:
	static const char* name;
	LevelParticleSystem();
	~LevelParticleSystem();
	void initialize(tinyxml2::XMLElement* element) override;
	void update(float deltaTime) override;
	std::string getName() override;
	tinyxml2::XMLElement* toXml(tinyxml2::XMLDocument* doc) override;
	std::string toLua(std::string name) override;
	void postInitialize() override;
	void setTwStruct(TwBar * twBar) override;
	void updateActive();

	void callListener(LevelActorComponent* component) override;
	void assignParticleSystem(std::string particleLocation);
	Gear::ParticleSystem* getParticleSystemRef();
	void setAlive(bool val);
	void swapAlive();
	bool getAlive();
};