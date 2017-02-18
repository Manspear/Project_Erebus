#include "LevelActionHandler.h"
#include "LevelBrushHandler.h"

LevelActionHandler* LevelActionHandler::g_instance = nullptr;
const char* ACTION_NAMES[MAX_ACTIONS] =
{
	"Select",
	"New Actor",
	"Place Prefab",
	"Use Brush",
	"Gen Parent Col"
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
	LevelColliderGenerator::getInstance()->addDebug(debug);
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

	if (inputs->keyPressedThisFrame(GLFW_KEY_Q)) {
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
		LevelBrushHandler::getInstance()->update(engine,camera,deltaTime,inputs,debug);
	}

	if (inputs->keyReleasedThisFrame(GLFW_KEY_F8)) {
		LevelActor* tempSelectedActor = LevelActorHandler::getInstance()->getSelected();
		if (tempSelectedActor != nullptr) {
			LevelTransform* tempTransform = tempSelectedActor->getComponent<LevelTransform>();
			Transform* test = tempTransform->getTransformRef();
			test->setPos({ 0,0,0 });
			test->setRotation({ 0,0,0 });
			test->setScale({ 1,1,1 });
		}
	}

	if (inputs->buttonReleasedThisFrame(GLFW_MOUSE_BUTTON_3)) {
		if (!holdingGizmo)
		{
			LevelActor* tempSelectedActor = LevelActorHandler::getInstance()->getSelected();
			if (tempSelectedActor != nullptr) {
				int actorID = 0;
				int noneSelect = 0;
				glm::vec3 hitPoint(0.0f);
				glm::vec3 hitNorm(0.f);

				engine->pickActorFromWorld(LevelModelHandler::getInstance()->getModels(), LevelModelHandler::getInstance()->getModelInstanceAgentIDs(), camera, inputs->getMousePos(), actorID, hitPoint, hitNorm);
				if(actorID)
					tempSelectedActor->getComponent<LevelTransform>()->getTransformRef()->setPos(hitPoint);
			}


		}
	}

	if (action == ACTION_COLLIDER_GEN) {
		LevelColliderGenerator::getInstance()->update();
	}
	bool coughtHitbox = false;

	if (inputs->buttonReleasedThisFrame(GLFW_MOUSE_BUTTON_1) && !holdingGizmo) {

		static CollisionChecker* checker = new CollisionChecker();

		if (LevelActorHandler::getInstance()->getShowHitBoxType() != LevelActorHandler::DisplayHitBoxes::NONE ||
			LevelActorHandler::getInstance()->getShowHitBoxType() != LevelActorHandler::DisplayHitBoxes::NUM_DISPLAY_HB) {
			LevelActor* closest = nullptr;
			// CHECK COLLISION IF COLLISOON CHANGE COUGHT HITBOX

			glm::vec3 ray_ndc, ray_world;
			glm::vec4 ray_clip, ray_eye;
			ray_ndc = glm::vec3((2.f*inputRef->getMousePos().x / WINDOW_WIDTH - 1.f),
				1.f - (2.f*inputRef->getMousePos().y) / WINDOW_HEIGHT,
				1.f);

			ray_clip = glm::vec4(ray_ndc.x, ray_ndc.y, -1.f, 1.f);
			ray_eye = glm::inverse(camera->getProjectionMatrix()) * ray_clip;
			ray_eye = glm::vec4(ray_eye.x, ray_eye.y, -1.f, 0.f);
			ray_world = glm::vec3(glm::inverse(camera->getViewMatrix())* ray_eye);
			ray_world = glm::normalize(ray_world);

			glm::vec3 dir = ray_world;
			glm::vec3 pos = camera->getPosition();

			RayCollider rayStuff = RayCollider(pos, dir);

			for (auto it : LevelActorHandler::getInstance()->getActors()) {
				LevelCollider* tempCol = it.second->getComponent<LevelCollider>();
				if (tempCol != nullptr) {
					if (tempCol->getType() == ColiderType::COLLIDER_OBB) {

						float closestDistance = 10000.f;
						glm::vec3 intersectionPoint;
						glm::vec3 closestHitPointOffset;

							if (checker->collisionCheck(&rayStuff, tempCol->getObbCollider())) {
								if (std::abs(rayStuff.hitdistance()) < closestDistance) {
									closestDistance = std::abs(rayStuff.hitdistance());

									closest = it.second;
								}
							}
						}

					}



				}

			if(closest != nullptr){
				coughtHitbox = true;
				LevelActorHandler::getInstance()->setSelected(closest);
			}
		}
	}
	




	if( inputs->buttonReleasedThisFrame(GLFW_MOUSE_BUTTON_1) )
	{
		if( !holdingGizmo && !coughtHitbox)
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

					LevelActor* pickedActor = LevelActorHandler::getInstance()->getActor( actorID );
					if( pickedActor )
					{
						newActor->setTileID( pickedActor->getTileID() );
					}
					else
					{
						// check against heightmap aabb
						int tileID = TILE_ID_INVALID;

						for( std::map<unsigned int, LevelActor*>::iterator it = LevelActorHandler::getInstance()->getActors().begin(); it != LevelActorHandler::getInstance()->getActors().end() && tileID == TILE_ID_INVALID; it++ )
						{
							if( it->second )
							{
								LevelHeightmap* heightmap = it->second->getComponent<LevelHeightmap>();
								if( heightmap )
								{
									glm::vec3 minPos = heightmap->getMinPos();
									glm::vec3 maxPos = heightmap->getMaxPos();

									if( hitPoint.x >= minPos.x && hitPoint.z >= minPos.z &&
										hitPoint.x <= maxPos.x && hitPoint.z <= maxPos.z )
									{
										tileID = it->second->getTileID();
									}
								}
							}
						}

						if( tileID != TILE_ID_INVALID )
							newActor->setTileID( tileID );
						else
					{	
							MessageBoxA( NULL, "Actor was placed outside of a tile and will not get a TileID.", "Level Editor - No TileID", MB_OK );
						}
					}
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

	if (action == ACTION_COLLIDER_GEN)
		TwDefine("ColiderGen visible=true");
	else
		TwDefine("ColiderGen visible=false");
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