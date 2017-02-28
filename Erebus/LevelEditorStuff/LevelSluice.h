#pragma once
#include "LevelCollider.h"

class LevelSluice : public LevelActorComponent {
private:
	std::string wallClosedName, wallOpenName;
	std::string slussName;
	int cSluiceID;
	static int SluiceID;
	
public:
	static const char* name;
	LevelSluice();
	~LevelSluice();
	void initialize(tinyxml2::XMLElement* element) override;
	void update(float deltaTime) override;
	std::string getName() override;
	tinyxml2::XMLElement* toXml(tinyxml2::XMLDocument* doc) override;
	std::string toLuaLoad(std::string name) override;
	std::string toLuaUnload(std::string name) override;
	void postInitialize() override;
	void setTwStruct(TwBar * twBar) override;
	void removeComponent() override;

	void setWallClosedName(std::string name);
	void setWallOpenName(std::string name);
	std::string getWallClosedName();
	std::string getWallOpenName();
	std::string getSluiceName();
};