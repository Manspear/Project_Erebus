#pragma once

#include "BaseIncludes.h"
#include "LevelActor.h"
#include "LevelActorFactory.h"
#include "AntTweakBar.h"

#define MAX_PREFABS 1000

class LevelPrefabHandler
{
public:
	~LevelPrefabHandler();
	static LevelPrefabHandler* getInstance();

	void load( std::string folder );

	const std::vector<std::string>& getPrefabNames() const;
	int getPrefabCount() const;
	std::string& getSelectedPrefab();

	void setSelected( int index );
	bool getSelected( int index );

private:
	LevelPrefabHandler();

	static LevelPrefabHandler* g_instance;
	std::vector<std::string> prefabs;
	TwBar* bar;
	int selectedPrefab;
	int indices[MAX_PREFABS];
	bool selected[MAX_PREFABS];
};