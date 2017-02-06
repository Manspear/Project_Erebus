#include "LevelActionHandler.h"
#include "LevelBrushHandler.h"
LevelActionHandler* LevelActionHandler::g_instance = nullptr;
const char* ACTION_NAMES[MAX_ACTIONS] =
{
	"Select",
	"New Actor",
	"Place Prefab",
	"Use Brush"
};

LevelActionHandler::LevelActionHandler()
{
	action = ACTION_SELECT;
	selections[ACTION_SELECT] = true;
	
	for( int i=ACTION_SELECT+1; i<MAX_ACTIONS; i++ )
		selections[i] = false;
	for( int i=0; i<MAX_ACTIONS; i++ )
		indices[i] = i;

	TwDefine("Brush visible=false");
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

void LevelActionHandler::update( Inputs* inputs, Gear::GearEngine* engine, Camera* camera,const double deltaTime, Debug* debug)
{
	if( inputs->keyPressedThisFrame( GLFW_KEY_DELETE ) )
		LevelActorHandler::getInstance()->removeSelectedActor();

	gizmo.update();
	gizmo.drawGizmo();

	if( inputs->buttonPressedThisFrame(GLFW_MOUSE_BUTTON_1) )
	{
		holdingGizmo = gizmo.onMouseDown();
	}
	
	if (inputs->keyPressedThisFrame(GLFW_KEY_H)) {
		LevelActorHandler::getInstance()->changeDisplayHitbox();
	}

	if (inputs->keyPressedThisFrame(GLFW_KEY_W)) {
		gizmo.setGizmoMode(GizmoMode::POSITION);
	}
	if (inputs->keyPressedThisFrame(GLFW_KEY_E)) {
		gizmo.setGizmoMode(GizmoMode::ROTATION);
	}
	if (inputs->keyPressedThisFrame(GLFW_KEY_R)) {
		gizmo.setGizmoMode(GizmoMode::SCALE);
	}

	if (inputs->keyPressedThisFrame(GLFW_KEY_LEFT_CONTROL)) {
		gizmo.setSnappingMode(true);
	}
	if (inputs->keyReleasedThisFrame(GLFW_KEY_LEFT_CONTROL)) {
		gizmo.setSnappingMode(false);
	}
	if (action == ACTION_USE_BRUSH)
	{
		LevelBrushHandler::getInstance()->testDraw(engine,camera,deltaTime,inputs,debug);
	}

	if( inputs->buttonReleasedThisFrame(GLFW_MOUSE_BUTTON_1) )
	{
		if( !holdingGizmo )
		{
			int actorID = 0;
			int noneSelect = 0;
			glm::vec3 hitPoint( 0.0f );
			glm::vec3 hitNorm(0.f);
			

			engine->pickActorFromWorld( LevelModelHandler::getInstance()->getModels(), LevelModelHandler::getInstance()->getModelInstanceAgentIDs(), camera, inputs->getMousePos(), actorID, hitPoint, hitNorm);
			//std::cout << glm::to_string(hitPoint) << std::endl;
			//std::cout << glm::to_string(hitNorm)<<std::endl;
			
			switch( action )
			{
				case ACTION_SELECT:
				{
					LevelActorHandler::getInstance()->setSelected(actorID);
				} break;

				case ACTION_NEW_ACTOR:
				{
					LevelActor* newActor = LevelActorFactory::getInstance()->createActor();
					newActor->getComponent<LevelTransform>()->getTransformRef()->setPos(hitPoint);
					LevelActorHandler::getInstance()->addActor(newActor);
					LevelActorHandler::getInstance()->setSelected(newActor);
					this->resetAction(inputs);
				} break;

				case ACTION_PLACE_PREFAB:
				{
					LevelActor* newActor = LevelActorFactory::getInstance()->createActor(LevelAssetHandler::getInstance()->getSelectedPrefab());
					
					if (newActor)
					{
						LevelActorHandler::getInstance()->addActor(newActor);
						LevelActorHandler::getInstance()->setSelected(newActor);

						LevelTransform* transform = newActor->getComponent<LevelTransform>();
						if (transform) {
							transform->getTransformRef()->setPos(hitPoint);
							if (inputs->keyPressed(GLFW_KEY_LEFT_ALT)) {
								transform->getTransformRef()->setLookAt(hitNorm);
							}
						}
							
						this->resetAction(inputs);

						
					}
				} 
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
	TwAddButton(bar->getBar(), "NewWorld", onNewWorld, NULL, "label='New World'");
	TwAddButton( bar->getBar(), "SaveWorld", onSaveWorld, NULL, "label='Save World'" );
	TwAddButton( bar->getBar(), "LoadWorld", onLoadWorld, NULL, "label='Load World'" );
	TwAddButton( bar->getBar(), "ExportToLua", onExportToLua, NULL, "label='Export to Lua'" );
}

void LevelActionHandler::setAction( int a )
{
	selections[action] = false;
	selections[a] = true;

	action = a;
	
	if (action == ACTION_USE_BRUSH)
		TwDefine("Brush visible=true");
	else 
		TwDefine("Brush visible=false");
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

void LevelActionHandler::resetAction(Inputs * input)
{
	if (!input->keyPressed(GLFW_KEY_LEFT_SHIFT)) {
		action = ACTION_SELECT;
		TwRemoveAllVars(actionBar->getBar());
		for (int i = 0; i<MAX_ACTIONS; i++)
			TwAddVarCB(actionBar->getBar(), ACTION_NAMES[i], TW_TYPE_BOOLCPP, onSetAction, onGetAction, &indices[i], NULL);
		TwAddSeparator(actionBar->getBar(), "sep2", NULL);
		TwAddButton(actionBar->getBar(), "NewWorld", onNewWorld, NULL, "label='New World'");
		TwAddButton(actionBar->getBar(), "SaveWorld", onSaveWorld, NULL, "label='Save World'");
		TwAddButton(actionBar->getBar(), "LoadWorld", onLoadWorld, NULL, "label='Load World'");
		TwAddButton(actionBar->getBar(), "ExportToLua", onExportToLua, NULL, "label='Export to Lua'");
	}
}