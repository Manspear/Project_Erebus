#pragma once
#include "LevelCollider.h"
#include "LevelActor.h"


enum SluiceType
{
	BRANCH_BLOCKER,
	BRANCH_COMBINER,
	NUM_SLUICE_TYPES
};



class LevelSluice : public LevelActorComponent {


private:
	std::string wallClosedName, wallOpenName;
	std::string combineRemoveObject;
	std::string slussName;
	int cSluiceID;
	static int SluiceID;
	SluiceType sluiceType;
	static const char* SLUICE_TYPE_NAMES[NUM_SLUICE_TYPES];

	int openObjectID, closedObjectID;

	TwType TW_TYPE_SLUICE()
	{
		TwEnumVal colliderVals[] = {
			{ BRANCH_BLOCKER, SLUICE_TYPE_NAMES[BRANCH_BLOCKER] },
			{ BRANCH_COMBINER, SLUICE_TYPE_NAMES[BRANCH_COMBINER] },
		};

		static TwType result = TwDefineEnum("sluiceTypesEnum", colliderVals, NUM_SLUICE_TYPES);

		return result;
	}


	
public:
	static const char* wallOpenBaseName;
	static const char* wallClosedBaseName;
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

	void setCombineName(std::string name);
	std::string getCombineName();

	SluiceType getSluiceType();
	void setSluiceType(SluiceType type);
	std::string createSluice(std::string name);

	int getSluiceID();

	bool doesSluiceIDExist(unsigned int sluiceID);
};