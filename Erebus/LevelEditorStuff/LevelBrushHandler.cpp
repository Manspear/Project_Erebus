#include "LevelBrushHandler.h"
LevelBrushHandler* LevelBrushHandler::g_instance = nullptr;
LevelBrushHandler::~LevelBrushHandler()
{
}
void LevelBrushHandler::setTweakBar(TweakBar * brushBar)
{
	this->actionBar = brushBar;
	//this->
	//float radius;
	TwAddVarRW(actionBar->getBar(), "radius", TW_TYPE_FLOAT, &this->radius, NULL);
	TwAddVarRW(actionBar->getBar(), "density", TW_TYPE_FLOAT, &this->density, NULL);
}
void LevelBrushHandler::testDraw(Gear::GearEngine* engine, Camera* camera, Inputs* inputs,Debug* debug)
{
	int actorID = 0;
	glm::vec3 hitPoint(0.0f);
	glm::vec3 hitNorm(0.f);
	engine->pickActorFromWorld(LevelModelHandler::getInstance()->getModels(), LevelModelHandler::getInstance()->getModelInstanceAgentIDs(), camera, inputs->getMousePos(), actorID, hitPoint, hitNorm);
	debug->drawLine(hitPoint, hitPoint + (hitNorm * 10));

	if (inputs->buttonPressed(GLFW_MOUSE_BUTTON_1))
	{
		LevelActor* newActor = LevelActorFactory::getInstance()->createActor(LevelAssetHandler::getInstance()->getSelectedPrefab());
		if (newActor)
		{
			LevelActorHandler::getInstance()->addActor(newActor);
			//LevelActorHandler::getInstance()->setSelected(newActor);

			newActor->setActorType("BRUSH");
			//LevelBrushHandler::getInstance()->
			LevelTransform* transform = newActor->getComponent<LevelTransform>();

			if (transform)
				transform->getTransformRef()->setPos(hitPoint);
		}

	}

}
LevelBrushHandler::LevelBrushHandler()
{

}

LevelBrushHandler * LevelBrushHandler::getInstance()
{
	if (g_instance == nullptr)
		g_instance = new LevelBrushHandler();
	return g_instance;
	//return nullptr;
}

void LevelBrushHandler::deleteInstance()
{
	if (g_instance != nullptr)
		delete g_instance;
}
//
void LevelBrushHandler::resetInstance()
{
	if (g_instance != nullptr)
		delete g_instance;
	g_instance = new LevelBrushHandler();
}

void LevelBrushHandler::updateBrushBar()
{
	//nothing 
}


//void LevelBrushHandler::setTweakBar(TweakBar * brushBar)
//{
//	//TwAddVarRW(brushBar->getBar(), "radius", TW_TYPE_FLOAT, &this->radius, NULL);
//}
