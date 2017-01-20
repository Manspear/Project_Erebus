#pragma once

#include "BaseIncludes.h"
#include "LevelUI.h"

enum
{
	ACTION_SELECT = 0,
	ACTION_NEW_ACTOR,
	ACTION_PLACE_PREFAB,
	MAX_ACTIONS
};

extern const char* ACTION_NAMES[MAX_ACTIONS];

class LevelActionHandler
{
public:
	~LevelActionHandler();
	static LevelActionHandler* getInstance();
	static void deleteInstance();

	void setTweakBar( TweakBar* bar );
	void setAction( int action );

	int getAction();

private:
	LevelActionHandler();

	static LevelActionHandler* g_instance;
	static void TW_CALL onSetAction( const void* value, void* clientData );
	static void TW_CALL onGetAction( void* value, void* clientData );

	TweakBar* actionBar;
	int action;
	bool selections[MAX_ACTIONS];
	int indices[MAX_ACTIONS];
};