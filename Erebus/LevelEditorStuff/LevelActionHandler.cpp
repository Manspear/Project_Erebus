#include "LevelActionHandler.h"

LevelActionHandler* LevelActionHandler::g_instance = nullptr;
const char* ACTION_NAMES[MAX_ACTIONS] =
{
	"Select",
	"New Actor",
	"Place Prefab",
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

void LevelActionHandler::deleteInstance() {
	if (g_instance != nullptr)
		delete g_instance;
}

void LevelActionHandler::resetInstance() {
	if (g_instance != nullptr)
		delete g_instance;
	g_instance = new LevelActionHandler();
}

void LevelActionHandler::setupGizmo( Debug* debug, Camera* camera, Inputs* inputs )
{
	gizmo.addVariables( debug, camera, inputs );
}

void LevelActionHandler::update( Inputs* inputs, Gear::GearEngine* engine, Camera* camera )
{
	gizmo.update();
	gizmo.drawGizmo();

	if( inputs->buttonPressedThisFrame(GLFW_MOUSE_BUTTON_1) )
	{
		holdingGizmo = gizmo.onMouseDown();
	}

	if( inputs->buttonReleasedThisFrame(GLFW_MOUSE_BUTTON_1) )
	{
		if( !holdingGizmo )
		{
			int actorID = 0;
			glm::vec3 hitPoint( 0.0f );

			

			engine->pickActorFromWorld( LevelModelHandler::getInstance()->getModels(), LevelModelHandler::getInstance()->getModelInstanceAgentIDs(), camera, inputs->getMousePos(), actorID, hitPoint );
			
			switch( action )
			{
				case ACTION_SELECT:
				{
					if(actorID)
						LevelActorHandler::getInstance()->setSelected(actorID);
				} break;

				case ACTION_NEW_ACTOR:
				{
					LevelActor* newActor = LevelActorFactory::getInstance()->createActor();
					newActor->getComponent<LevelTransform>()->getTransformRef()->setPos(hitPoint);
					LevelActorHandler::getInstance()->addActor(newActor);
					LevelActorHandler::getInstance()->setSelected(newActor);
				} break;

				case ACTION_PLACE_PREFAB:
				{
					LevelActor* newActor = LevelActorFactory::getInstance()->createActor(LevelAssetHandler::getInstance()->getSelectedPrefab());
					if (newActor)
					{
						LevelActorHandler::getInstance()->addActor(newActor);
						LevelActorHandler::getInstance()->setSelected(newActor);

						LevelTransform* transform = newActor->getComponent<LevelTransform>();
						if (transform)
							transform->getTransformRef()->setPos(hitPoint);
					}
				} break;
			} // end of switch

			LevelAssetHandler::getInstance()->onMouseReleased();
		}

		gizmo.onMouseUp();
		holdingGizmo = false;
	}
}

void LevelActionHandler::setTweakBar( TweakBar* bar )
{
	actionBar = bar;

	TwDefine( "Actions iconifiable=false" );

	TwRemoveAllVars( bar->getBar() );
	for( int i=0; i<MAX_ACTIONS; i++ )
		TwAddVarCB( actionBar->getBar(), ACTION_NAMES[i], TW_TYPE_BOOLCPP, onSetAction, onGetAction, &indices[i], NULL );

	TwAddSeparator( bar->getBar(), "sep2", NULL );
	TwAddButton( bar->getBar(), "SaveWorld", onSaveWorld, NULL, "label='Save World'" );
	TwAddButton( bar->getBar(), "LoadWorld", onLoadWorld, NULL, "label='Load World'" );
	TwAddButton(bar->getBar(), "NewWorld", onNewWorld, NULL, "label='New World'");
	TwAddButton( bar->getBar(), "ExportToLua", onExportToLua, NULL, "label='Export to Lua'" );
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

void TW_CALL LevelActionHandler::onSaveWorld( void* args )
{
	LevelActorFactory::getInstance()->saveWorld();
}

void TW_CALL LevelActionHandler::onLoadWorld( void* args )
{
	LevelActorFactory::getInstance()->loadWorld();
}

void TW_CALL LevelActionHandler::onExportToLua( void* args )
{
	LevelActorHandler::getInstance()->exportToLua();
}

void TW_CALL LevelActionHandler::onNewWorld(void* args)
{
	
	if(MessageBoxA(NULL, "Are you sure", "New Word", MB_YESNO) == IDYES)
		LevelWorldHandler::getInstance()->resetWorld();
	
}
