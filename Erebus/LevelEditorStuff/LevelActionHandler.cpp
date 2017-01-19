#include "LevelActionHandler.h"

LevelActionHandler* LevelActionHandler::g_instance = nullptr;
const char* ACTION_NAMES[MAX_ACTIONS] =
{
	"Select",
	"New Actor",
	"Place Prefab"
};

LevelActionHandler::LevelActionHandler()
{
	action = ACTION_SELECT;
	selections[ACTION_SELECT] = true;
	
	for( int i=ACTION_SELECT+1; i<MAX_ACTIONS; i++ )
		selections[i] = false;
	for( int i=0; i<MAX_ACTIONS; i++ )
		indices[i] = i;
}

LevelActionHandler::~LevelActionHandler()
{
}

LevelActionHandler* LevelActionHandler::getInstance()
{
	if( g_instance == nullptr )
		g_instance = new LevelActionHandler();
	return g_instance;
}

void LevelActionHandler::setTweakBar( TweakBar* bar )
{
	actionBar = bar;

	TwDefine( "Actions iconifiable=false" );

	TwRemoveAllVars( bar->getBar() );
	for( int i=0; i<MAX_ACTIONS; i++ )
		TwAddVarCB( actionBar->getBar(), ACTION_NAMES[i], TW_TYPE_BOOLCPP, onSetAction, onGetAction, &indices[i], NULL );
}

void LevelActionHandler::setAction( int a )
{
	selections[action] = false;
	selections[a] = true;

	action = a;
}

int LevelActionHandler::getAction()
{
	return action;
}

void LevelActionHandler::onSetAction( const void* value, void* clientData )
{
	int index = *(int*)clientData;
	LevelActionHandler::getInstance()->setAction( index );
}

void LevelActionHandler::onGetAction( void* value, void* clientData )
{
	int index = *(int*)clientData;
	*(bool*)value = ( LevelActionHandler::getInstance()->getAction() == index );
}