#pragma once

#include "BaseIncludes.h"
#include "LevelUI.h"
#include "Gear.h"
#include "Inputs.h"
#include "LevelGizmo.h"
#include "LevelAssetHandler.h"
#include "LevelWorldHandler.h"

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
	static void resetInstance();

	void setupGizmo( Debug* debug, Camera* camera, Inputs* inputs );
	void update( Inputs* inputs, Gear::GearEngine* engine, Camera* camera );

	void setTweakBar( TweakBar* bar );
	void setAction( int action );

	int getAction();

	Gear::GearEngine* engineRef;
	Inputs* inputRef;
	LevelUI* uiRef;

private:
	LevelActionHandler();

	static LevelActionHandler* g_instance;
	static void TW_CALL onSetAction( const void* value, void* clientData );
	static void TW_CALL onGetAction( void* value, void* clientData );
	static void TW_CALL onSaveWorld( void* args );
	static void TW_CALL onLoadWorld( void* args );
	static void TW_CALL onNewWorld(void* args);

	TweakBar* actionBar;
	int action;
	bool selections[MAX_ACTIONS];
	int indices[MAX_ACTIONS];
	LevelGizmo gizmo;
	bool holdingGizmo;
};