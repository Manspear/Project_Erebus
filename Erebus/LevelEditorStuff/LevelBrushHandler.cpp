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
