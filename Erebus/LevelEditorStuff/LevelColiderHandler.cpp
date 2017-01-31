#include "LevelColiderHandler.h"

LevelColiderHandler* LevelColiderHandler::g_instance = nullptr;
LevelColiderHandler::LevelColiderHandler() {

}
LevelColiderHandler::~LevelColiderHandler() {

}

LevelColiderHandler* LevelColiderHandler::getInstance() {
	if (g_instance == nullptr)
		g_instance = new LevelColiderHandler();
	return g_instance;
}
void LevelColiderHandler::deleteInstance() {
	if (g_instance != nullptr)
		delete g_instance;
}
void LevelColiderHandler::resetInstance() {
	if (g_instance != nullptr)
		delete g_instance;
	g_instance = new LevelColiderHandler();
}