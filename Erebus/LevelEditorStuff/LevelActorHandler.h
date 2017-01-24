#pragma once

#include "BaseIncludes.h"
#include "LevelActor.h"
#include <map>
#include "LevelActorFactory.h"
#include "LevelFileDialog.h"

class LevelActorHandler
{
public:
	~LevelActorHandler();

	static LevelActorHandler* getInstance();

	void addActor( LevelActor* actor );
	void removeActor( LevelActor* actor );
	void removeActor( unsigned int id );
	void updateActors();
	void updateTweakBars();
	void updateWorldBar();
	void updateActorBar();
	
	void setSelected( unsigned int id );
	void setSelected( LevelActor* actor );
	void setTweakBars( TweakBar* world, TweakBar* actor );

	LevelActor* getSelected();
	std::map<unsigned int, LevelActor*>& getActors();

	void setSelectedComponentCB(LevelUI::DiffComponents index);
	LevelUI::DiffComponents getSelectedComponentCB(int index);

private:
	LevelUI::DiffComponents selectedComponent;
	
	typedef std::map<unsigned int, LevelActor*>::iterator ActorIT;

	LevelActorHandler();
	static LevelActorHandler* g_instance;
	
	void savePrefab( LevelActor* actor );
	static void TW_CALL onActorSelected( void* args );
	static void TW_CALL onSavePrefab( void* args );
	static void TW_CALL onSetExportType( const void* value, void* clientData );
	static void TW_CALL onGetExportType( void* value, void* clientData );

	std::map<unsigned int, LevelActor*> actors;
	LevelActor* selectedActor;
	TweakBar* worldBar, *actorBar;
	LevelFileDialog fileDialog;
};