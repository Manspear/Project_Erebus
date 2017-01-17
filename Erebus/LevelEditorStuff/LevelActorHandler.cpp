#include "LevelActorHandler.h"

LevelActorHandler* LevelActorHandler::g_instance = nullptr;

void TW_CALL setComponentCallback(const void* value, void* clientData)
{
	LevelUI::DiffComponents NewComp = *(LevelUI::DiffComponents*)value;
	LevelActorHandler::getInstance()->setSelectedComponentCB(NewComp);
	
}
void TW_CALL getComponentCallback(void* value, void* clientData)
{
	LevelUI::DiffComponents index = *(LevelUI::DiffComponents*)clientData;
	*(LevelUI::DiffComponents*)value = LevelActorHandler::getInstance()->getSelectedComponentCB(index);
}

LevelUI::DiffComponents LevelActorHandler::getSelectedComponentCB(int index)
{
	return selectedComponent;
}


void LevelActorHandler::setSelectedComponentCB(LevelUI::DiffComponents index) {
	if (index != 0 && this->selectedActor) {
		this->selectedComponent = index;
		this->selectedActor->addComponent(LevelActorFactory::getInstance()->getNewComponent(LevelUI::componentLinker[index]));
		updateActorBar();
		this->selectedComponent = LevelUI::SELECT_COMPONENT;
	}

	//index
	//this->selectedActor->addComponent()
}
LevelActorHandler::LevelActorHandler()
	: worldBar( nullptr ), actorBar( nullptr ), selectedActor( nullptr )
{
	this->selectedComponent = LevelUI::SELECT_COMPONENT;
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
		TwAddVarCB(actorBar->getBar(), "MyName", LevelUI::TW_TYPE_COMPONENTS(), setComponentCallback, getComponentCallback, (void*)&selectedComponent, NULL);
		//TwAddVarRW(actorBar->getBar(), "der", LevelUI::TW_TYPE_COMPONENTS(), &this->selectedComponent, NULL);
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