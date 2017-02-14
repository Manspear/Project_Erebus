#pragma once

#include "LevelActorHandler.h"

class LevelColliderGenerator {
	enum ColiderPos {
		NEAR_BOT_RIGHT,
		NEAR_BOT_LEFT,
		NEAR_TOP_RIGHT,
		NEAR_TOP_LEFT,
		FAR_BOT_RIGHT,
		FAR_BOT_LEFT,
		FAR_TOP_RIGHT,
		FAR_TOP_LEFT,
		MAX_COL_POS
	};

private:
	static LevelColliderGenerator* g_instance;
	const float y_high = 1000.f, y_low = -1000.f;
	Debug* debugRef;
	std::vector<AABBCollider*> tempCols;

	std::map<AABBCollider*, LevelCollider*> mapedList;
	void sortAbbList(std::vector<AABBCollider*> &colliders);
	AABBCollider* addChildren(int childrenCount, std::vector<AABBCollider*> colliders);
	AABBCollider* createAbbColiderInBounds(std::vector<AABBCollider*> colliders);

	LevelCollider* mostTopParent;
	void replaceAbbsWithObbs(AABBCollider* parent);
	void replaceActorHiercy(LevelCollider* parent);
	bool generatedThisRun;
public:
	LevelColliderGenerator();
	~LevelColliderGenerator();
	static void resetInstance();
	static void deleteInstance();
	static LevelColliderGenerator* getInstance();


	void generateQuadTree();
	bool hasObbCollider(LevelActor* actor);
	AABBCollider* convertFromObbToAbb(OBBCollider* colider);

	void addDebug(Debug* debug);
	void update();
};