#pragma once
#include "BaseIncludes.h"
#include "LevelActorHandler.h"
#include "../CollisionHandler.h"

class LevelColiderHandler {
private:
	static LevelColiderHandler* g_instance;
	CollisionHandler* colisionHandler;
public:
	LevelColiderHandler();
	~LevelColiderHandler();

	static LevelColiderHandler* getInstance();
	static void deleteInstance();
	static void resetInstance();


	//void changedLayer;
};