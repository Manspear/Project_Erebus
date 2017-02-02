#include "LevelBrushHandler.h"

LevelBrushHandler* LevelBrushHandler::g_instance = nullptr;
LevelBrushHandler::~LevelBrushHandler()
{
}

void TW_CALL setSaveTypeCB(const void *value, void *s /*clientData*/)
{
	// Set: copy the value of s from AntTweakBar
	const std::string *srcPtr = static_cast<const std::string *>(value);
	std::string *dstPtr = static_cast<std::string *>(s);
	//TwCopyStdStringToLibrary(*dstPtr, *srcPtr); // the use of TwCopyStdStringToLibrary is required here
	*dstPtr = *srcPtr;
}

void TW_CALL getSaveTypeCB(void *value, void *s /*clientData*/)
{
	// Get: copy the value of s to AntTweakBar
	std::string *destPtr = static_cast<std::string *>(value);
	std::string *srcPtr = static_cast<std::string *>(s);
	TwCopyStdStringToLibrary(*destPtr, *srcPtr); // the use of TwCopyStdStringToLibrary is required here
}


void LevelBrushHandler::setTweakBar(TweakBar * brushBar)
{
	this->actionBar = brushBar;

	TwAddVarRW(actionBar->getBar(), "radius", TW_TYPE_FLOAT, &this->radius, NULL);
	//TwAddSeparator(actionBar->getBar(), "sep2", NULL);
	TwAddVarRW(actionBar->getBar(), "density", TW_TYPE_FLOAT, &this->density, NULL);
	TwAddVarCB(actionBar->getBar(), "saveAsType", TW_TYPE_STDSTRING,setSaveTypeCB,getSaveTypeCB,&saveAsType,"");
}
void LevelBrushHandler::testDraw(Gear::GearEngine* engine, Camera* camera,const double deltaTime, Inputs* inputs,Debug* debug)
{

	int actorID = 0;
	glm::vec3 hitPoint(0.0f);
	glm::vec3 hitNorm(0.f);
	engine->pickActorFromWorld(LevelModelHandler::getInstance()->getModels(), LevelModelHandler::getInstance()->getModelInstanceAgentIDs(), camera, inputs->getMousePos(), actorID, hitPoint, hitNorm);

	debug->drawLine(hitPoint, hitPoint + (hitNorm * this->radius * 2.5));
	debug->drawSphere(hitPoint, this->radius, glm::vec3(1, 0, 1));

	glm::vec3 newHitPoint;
	
	hitPoint.x = (hitPoint.x += RNG::range((-this->radius),this->radius) );
	hitPoint.z = (hitPoint.z += RNG::range((-this->radius),this->radius) );
	//hitPoint.y = hitPoint.y;
	
	//jag skulle kunna köra en stråle från marken till kameran. och sen köra tillbaka för att få ett bättre y värde.
	//jag borde kolla om det finns mark där. Om normalen är för offsetad borde jag inte rita.

	
	timer -= deltaTime;
	
	if (inputs->buttonPressed(GLFW_MOUSE_BUTTON_1) && timer <=0)
	{
		bool drawOver = true;
		if (drawOver)
		{

		
		for (unsigned int i = 0; i < 3; i++)
		{
			glm::vec3 result = hitPoint - earlierPositions[i];
			int minMax = 8;
			
			if ((result.x <= 0 && result.x >(-minMax)) || (result.x >= 0 && result.x < minMax))
			{
				if ((result.z <= 0 && result.z >(-minMax)) || (result.z >= 0 && result.z < minMax))
				{
					return;
				}
			}
		}
		}

		LevelActor* newActor = LevelActorFactory::getInstance()->createActor(LevelAssetHandler::getInstance()->getSelectedPrefab());
		if (newActor)
		{
			LevelActorHandler::getInstance()->addActor(newActor);
			LevelActorHandler::getInstance()->setSelected(newActor);
			newActor->setActorType(saveAsType);
		
			LevelTransform* transform = newActor->getComponent<LevelTransform>();

			if (transform)
				transform->getTransformRef()->setPos(hitPoint);
			
			timer = 0.2;
			earlierPositions.insert(earlierPositions.begin(),hitPoint);
			earlierPositions.pop_back();

		}

	}

}
LevelBrushHandler::LevelBrushHandler()
{
	

	/* Intializes random number generator */
	time_t t;
	srand((unsigned)time(&t));

	for (unsigned int i = 0; i < 3; i++) //fill upp the 3 earlier brush positions
	{
		earlierPositions.push_back(glm::vec3(9999, 9999, 9999));
	}
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



