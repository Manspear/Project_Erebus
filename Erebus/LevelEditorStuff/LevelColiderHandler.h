#pragma once
#include "BaseIncludes.h"
#include "LevelActorHandler.h"
#include "../CollisionHandler.h"

class LevelCollider;

class LevelColiderHandler {
private:
	unsigned int ID;
	static LevelColiderHandler* g_instance;
	CollisionHandler* colisionHandler;
public:
	LevelColiderHandler();
	~LevelColiderHandler();

	static LevelColiderHandler* getInstance();
	static void deleteInstance();
	static void resetInstance();

	unsigned int getNewID();

	LevelCollider* getColiderWithID(unsigned int ID, LevelCollider* colider);

	LevelCollider* getLoadColider(unsigned int ID, LevelCollider* colider);

	//void changedLayer;
};