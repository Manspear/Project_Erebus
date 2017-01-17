#pragma once

#include "BaseIncludes.h"
#include "LevelActor.h"
#include <map>
#include "LevelActorFactory.h"

class LevelActorHandler
{
public:
	~LevelActorHandler();

	static LevelActorHandler* getInstance();

	void addActor( LevelActor* actor );
	void removeActor( LevelActor* actor );
	void removeActor( unsigned int id );
	void updateActors();
	
	void setSelected( unsigned int id );
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

	void updateTweakBars();
	void updateWorldBar();
	void updateActorBar();
	static void TW_CALL onActorSelected( void* args );

	std::map<unsigned int, LevelActor*> actors;
	LevelActor* selectedActor;
	TweakBar* worldBar, *actorBar;



};