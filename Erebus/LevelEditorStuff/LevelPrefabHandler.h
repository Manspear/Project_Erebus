#pragma once

#include "BaseIncludes.h"
#include "LevelActor.h"
#include "LevelActorFactory.h"

class LevelPrefabHandler
{
public:
	LevelPrefabHandler();
	~LevelPrefabHandler();

	void load( std::string folder );

private:
	std::vector<LevelActor*> prefabs;
	std::vector<std::string> prefabNames;
};