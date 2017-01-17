#include "LevelActorHandler.h"

LevelActorHandler* LevelActorHandler::g_instance = nullptr;

LevelActorHandler::LevelActorHandler()
	: worldBar( nullptr ), actorBar( nullptr ), selectedActor( nullptr )
{
}

LevelActorHandler::~LevelActorHandler()
{
}

LevelActorHandler* LevelActorHandler::getInstance()
{
	if( g_instance == nullptr )
		g_instance = new LevelActorHandler();
	return g_instance;
}

void LevelActorHandler::addActor( LevelActor* actor )
{
	actors.insert( std::pair<unsigned int,LevelActor*>( actor->id, actor ) );
	updateTweakBars();
}

void LevelActorHandler::removeActor( LevelActor* actor )
{
	removeActor( actor->id );
}

void LevelActorHandler::removeActor( unsigned int id )
{
	actors.erase( id );
	updateTweakBars();
}

void LevelActorHandler::updateActors()
{
	for( ActorIT it = actors.begin(); it != actors.end(); it++ )
		it->second->update();
}

void LevelActorHandler::setSelected( unsigned int id )
{
	ActorIT it = actors.find( id );
	if( it != actors.end() )
	{
		selectedActor = it->second;
		updateActorBar();
	}
	else
		selectedActor = nullptr;
}

void LevelActorHandler::setTweakBars( TweakBar* world, TweakBar* actor )
{
	worldBar = world;
	actorBar = actor;

	updateTweakBars();
}

LevelActor* LevelActorHandler::getSelected()
{
	return selectedActor;
}

std::map<unsigned int, LevelActor*>& LevelActorHandler::getActors()
{
	return actors;
}

void LevelActorHandler::updateTweakBars()
{
	if( worldBar )
		updateWorldBar();
	if( actorBar )
		updateActorBar();
}

void LevelActorHandler::updateWorldBar()
{
	TwRemoveAllVars( worldBar->getBar() );

	for( ActorIT it = actors.begin(); it != actors.end(); it++ )
	{
		char buf[64] = {};
		sprintf_s( buf, "label='%s'", it->second->getActorType().c_str() );
		TwAddButton( worldBar->getBar(), NULL, onActorSelected, it->second, buf );
	}
}

void LevelActorHandler::updateActorBar()
{
	TwRemoveAllVars( actorBar->getBar() );
	if( selectedActor )
	{
		selectedActor->setAsSelectedActor(actorBar->getBar());
		//for( std::map<std::string,LevelActorComponent*>::iterator it = selectedActor->getAllComponents().begin(); it != selectedActor->getAllComponents().end(); it++ )
		//	it->second->setTwStruct( actorBar->getBar() );
	}
	 //selectedActor->SetAgent(actorBar->getBar());
}

void LevelActorHandler::onActorSelected( void* args )
{
	LevelActor* actor = (LevelActor*)args;
	LevelActorHandler::getInstance()->setSelected( actor->id );
}