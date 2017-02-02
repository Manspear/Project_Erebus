#include "LevelColiderHandler.h"

LevelColiderHandler* LevelColiderHandler::g_instance = nullptr;
LevelColiderHandler::LevelColiderHandler() {
	this->ID = 1;

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
unsigned int LevelColiderHandler::getNewID()
{
	return this->ID++;
}

LevelCollider* LevelColiderHandler::getColiderWithID(unsigned int ID, LevelCollider* colider) {
	if (colider->getParendColiderID() != 0 || colider->getParentColider() != nullptr) {
		colider->getParentColider()->deleteChildColider(colider);
	}
	LevelCollider* returnActor = nullptr;
	for (auto element : LevelActorHandler::getInstance()->getActors()) {
		LevelCollider* tempColider = element.second->getComponent<LevelCollider>();
		if (tempColider != nullptr) {
			if(tempColider->getColiderID() == ID){
				returnActor = tempColider;
				tempColider->addChildColider(colider);
				break;
				
			}
		}
	}
	return returnActor;
}

LevelCollider * LevelColiderHandler::getLoadColider(unsigned int ID, LevelCollider* colider)
{
	LevelCollider* returnActor = nullptr;
	if (this->ID <= ID)
		this->ID = ID + 1;
	for (auto element : LevelActorHandler::getInstance()->getActors()) {
		LevelCollider* tempColider = element.second->getComponent<LevelCollider>();
		if (tempColider != nullptr) {
			if (tempColider->getColiderID() == ID) {
				returnActor = tempColider;
				tempColider->addChildColider(colider);
				break;
			}
		}
	}
	return returnActor;
}

bool LevelColiderHandler::getDoesIDExists(unsigned int ID) {
	if (ID == 0)
		return true;
	bool exists = false;
	for (auto element : LevelActorHandler::getInstance()->getActors()) {
		LevelCollider* tempColider = element.second->getComponent<LevelCollider>();
		if (tempColider != nullptr) {
			if (tempColider->getColiderID() == ID) {
				exists = true;
				break;
			}
		}
	}

	return exists;
}

void LevelColiderHandler::checkIfHighestID(unsigned int ID) {
	if (this->ID <= ID)
		this->ID = ID + 1;
}