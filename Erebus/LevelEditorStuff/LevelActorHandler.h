#pragma once

#include "BaseIncludes.h"
#include "LevelActor.h"
#include <map>
#include "LevelActorFactory.h"
#include "LevelFileDialog.h"

class LevelActorHandler
{
public:
	enum DisplayHitBoxes {
		NONE,
		STATIC_ONLY,
		DYNAMIC_ONLY,
		STATIC_DYNAMIC,
		NUM_DISPLAY_HB
	};
	~LevelActorHandler();

	static LevelActorHandler* getInstance();
	static void deleteInstance();
	static void resetInstance();

	void addActorNoUpdate(LevelActor* actor);
	void addActor( LevelActor* actor );
	void removeActor( LevelActor* actor );
	void removeActor( unsigned int id );
	void removeSelectedActor();
	void updateActors();
	void updateTweakBars();
	void updateWorldBar();
	void updateActorBar();
	void exportToLua();
	
	void setSelected( unsigned int id );
	void setSelected( LevelActor* actor );
	void setTweakBars( TweakBar* world, TweakBar* actor );

	LevelActor* getSelected();
	std::map<unsigned int, LevelActor*>& getActors();
	LevelActor* getActor( unsigned int id );

	void setSelectedComponentCB(LevelUI::DiffComponents index);
	LevelUI::DiffComponents getSelectedComponentCB(int index);
	const std::string tryActorName(std::string name);
	void changeDisplayHitbox();
	void postInitAllActors();
	DisplayHitBoxes getShowHitBoxType() {
		return this->selectedDisplayHitbox;
	}

private:
	LevelUI::DiffComponents selectedComponent;
	DisplayHitBoxes selectedDisplayHitbox;
	
	typedef std::map<unsigned int, LevelActor*>::iterator ActorIT;

	LevelActorHandler();
	static LevelActorHandler* g_instance;
	
	void savePrefab( LevelActor* actor );
	static void TW_CALL onActorSelected( void* args );
	static void TW_CALL onSavePrefab( void* args );
	static void TW_CALL onSetExportType( const void* value, void* clientData );
	static void TW_CALL onGetExportType( void* value, void* clientData );
	static void TW_CALL onDelete( void* args );

	
	

	std::map<unsigned int, LevelActor*> actors;
	LevelActor* selectedActor;
	TweakBar* worldBar, *actorBar;
	LevelFileDialog fileDialog;
	std::string getHeightData();
	std::string getSettingData();
};