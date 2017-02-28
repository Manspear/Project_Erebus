#include "LevelColliderGenerator.h"
#include <limits>

LevelColliderGenerator* LevelColliderGenerator::g_instance = nullptr;

LevelColliderGenerator::LevelColliderGenerator() {
	generatedThisRun = false;
	this->numChilds = 10;
}
LevelColliderGenerator::~LevelColliderGenerator() {

}
void LevelColliderGenerator::resetInstance() {
	g_instance->generatedThisRun = false;
}
 void LevelColliderGenerator::deleteInstance() {
	 if (g_instance != nullptr)
		 delete g_instance;
}
LevelColliderGenerator* LevelColliderGenerator::getInstance() {
	if (g_instance == nullptr)
		g_instance = new LevelColliderGenerator();
	return g_instance;
}

void LevelColliderGenerator::generateQuadTree(int tileID){
	if (!generatedThisRun) {
		tempCols.clear();
		std::map<unsigned int, LevelActor*> refMap = LevelActorHandler::getInstance()->getActors();
		std::vector<AABBCollider*> sortedVector;
		 
		for (auto it : refMap) {
			
			if (hasObbCollider(it.second)) {
				if (it.second->getTileID() == tileID) {
					//The actor has an OBB colider, let's do stuff
					AABBCollider* convertedCollider = convertFromObbToAbb(it.second->getComponent<LevelCollider>()->getObbCollider());
					tempCols.push_back(convertedCollider);
					mapedList[convertedCollider] = it.second->getComponent<LevelCollider>();
				}

			}
		}


		if (this->tempCols.size() > 0) {
			this->sortAbbList(this->tempCols);

			AABBCollider* topParent = addChildren(this->numChilds, this->tempCols, tileID);

			replaceAbbsWithObbs(topParent);

			replaceActorHiercy(mostTopParent);

			LevelActorHandler::getInstance()->updateTweakBars();

			int k = 0;
		}


		
	}
	
	//Converted all obbs to abb inside tempCols

}
void LevelColliderGenerator::replaceActorHiercy(LevelCollider* parent) {
	if (parent->getMainColliderChildren() == nullptr) return;
	for (auto it : LevelActorHandler::getInstance()->getActors()) {
		
		LevelCollider* tempCol = it.second->getComponent<LevelCollider>();
		if (tempCol != nullptr && (tempCol != parent)) {
			if (parent->getMainColliderChildren() != nullptr) {
				for (size_t k = 0; k < parent->getMainColliderChildren()->size(); k++)
				{
					if (parent->getMainColliderChildren()->at(k)->getID() == tempCol->getMainColliderID()) {
						if (tempCol->getParendColiderID() == 0) {
							parent->addChildColider(tempCol);
							tempCol->setParentColider(parent);
							tempCol->setParentColiderID(parent->getColiderID());
							replaceActorHiercy(tempCol);
						}
					}
				}
			}

		}

	}

}

void LevelColliderGenerator::replaceAbbsWithObbs(AABBCollider* parent) {

	if (parent->getChildren() != nullptr) {
		for (size_t i = 0; i < parent->getChildren()->size(); i++)
		{
			//PARENT has children that should change to OOBBs
			if (parent->getChildren()->at(i)->getChildren() == nullptr) {
				OBBCollider* replaceCol;
				LevelCollider* coliderToAdd = mapedList.find((AABBCollider*)parent->getChildren()->at(i))->second;
				parent->replaceChild(coliderToAdd->getObbCollider(), parent->getChildren()->at(i));		
			}
			else {
				replaceAbbsWithObbs((AABBCollider*)parent->getChildren()->at(i));
			}
		}
	}

}

AABBCollider* LevelColliderGenerator::addChildren(int childrenCount, std::vector<AABBCollider*> colliders, int tileID) {
	AABBCollider* topParent = nullptr;
	std::vector<AABBCollider*> parents;
	for (size_t i = 0; i < colliders.size(); i+=childrenCount)
	{
		std::vector<AABBCollider*> tempList;
		for (size_t k = 0; k < childrenCount; k++)
		{
			if (i+k < colliders.size()) {
				tempList.push_back(colliders[i+k]);
			}
		}


		AABBCollider* parent = createAbbColiderInBounds(tempList);
		tempList.clear();


		LevelActor* parentActor = LevelActorFactory::getInstance()->loadActor("ParentCollider");
		parentActor->setTileID(tileID);
		parentActor->setActorDisplayName("C_Parent_Tile_" + std::to_string(tileID));
		LevelCollider* coliderRef = parentActor->getComponent<LevelCollider>();
		if (coliderRef == nullptr)
			std::cout << "ERROR::::::::CREATING PARENT!!!" << std::endl;
		else {
			coliderRef->adjustAABB(parent);
		}

		//
		//coliderRef->setParentColider();
		//coliderRef->setParentColiderID();
		//parent->addChildColider();
		LevelActorHandler::getInstance()->addActorNoUpdate(parentActor);
		parents.push_back(parent);
		this->tempCols.push_back(parent);
	}

	if (parents.size() > childrenCount) {
		sortAbbList(parents);
		topParent = addChildren(childrenCount, parents, tileID);
	}

	else
	{
		topParent = createAbbColiderInBounds(parents);

		LevelActor* parentActor = LevelActorFactory::getInstance()->loadActor("ParentCollider");
		parentActor->setTileID(tileID);
		parentActor->setActorDisplayName("C_Parent_Tile_" + std::to_string(tileID));
		LevelCollider* coliderRef = parentActor->getComponent<LevelCollider>();
		if (coliderRef == nullptr)
			std::cout << "ERROR::::::::CREATING PARENT!!!" << std::endl;
		else {
			coliderRef->adjustAABB(topParent);
		}

		mostTopParent = coliderRef;

		this->tempCols.push_back(topParent);
	}

	return topParent;

}

AABBCollider * LevelColliderGenerator::createAbbColiderInBounds(std::vector<AABBCollider*> colliders)
{
	AABBCollider* colToReturn = nullptr;
	float
		maxX = std::numeric_limits<float>::min(),
		maxZ = std::numeric_limits<float>::min(),
		maxY = std::numeric_limits<float>::min(),
		minX = std::numeric_limits<float>::max(),
		minZ = std::numeric_limits<float>::max(),
		minY = std::numeric_limits<float>::max();

	for (size_t i = 0; i < colliders.size(); i++)
	{
		glm::vec3
			maxPosTemp = colliders[i]->getMaxPos(),
			minPosTemp = colliders[i]->getMinPos();
		if (maxPosTemp.x > maxX)
			maxX = maxPosTemp.x;
		if (minPosTemp.x<minX)
			minX = minPosTemp.x;

		if (maxPosTemp.y > maxY)
			maxY = maxPosTemp.y;
		if (minPosTemp.y < minY)
			minY = minPosTemp.y;

		if (maxPosTemp.z > maxZ)
			maxZ = maxPosTemp.z;
		if (minPosTemp.z < minZ)
			minZ = minPosTemp.z;
	}

	colToReturn = new AABBCollider(glm::vec3(minX, minY, minZ), glm::vec3(maxX, maxY, maxZ), { 0,0,0 });

	for (size_t i = 0; i < colliders.size(); i++)
	{
		colToReturn->addChild(colliders[i]);
	}
	return colToReturn;
}

void LevelColliderGenerator::sortAbbList(std::vector<AABBCollider*> &colliders)
{
	//SORTING :)
	bool foundNewChange = true;
	while (foundNewChange) {
		foundNewChange = false;
		for (size_t i = 0; i < colliders.size(); i++)
		{
			if (i != colliders.size() - 1) {
				float d1 = glm::length((glm::vec3(0, 0, 0) - colliders.at(i)->getMinPos()));
				float d2 = glm::length((glm::vec3(0, 0, 0) - colliders.at(i + 1)->getMinPos()));

				if (d2 < d1) {
					foundNewChange = true;
					AABBCollider* tempCol = colliders[i];
					colliders[i] = colliders[i + 1];
					colliders[i + 1] = tempCol;
					
				}
			}
		}
	}

	
}

bool LevelColliderGenerator::hasObbCollider(LevelActor* actor) {
	bool hasObb = false;
	LevelCollider* tempCol = actor->getComponent<LevelCollider>();
	if (tempCol != nullptr) {
		if (tempCol->getType() == ColiderType::COLLIDER_OBB && tempCol->getBehave() != ColiderBehavior::COLLIDER_BEHAVE_TRIGGER)
			hasObb = true;
	}
	return hasObb;
}

AABBCollider * LevelColliderGenerator::convertFromObbToAbb(OBBCollider * colider){
	float 
		maxX = std::numeric_limits<float>::min(),
		maxZ = std::numeric_limits<float>::min(),
		maxY = std::numeric_limits<float>::min(),
		minX = std::numeric_limits<float>::max(),
		minZ = std::numeric_limits<float>::max(),
		minY = std::numeric_limits<float>::max();
	AABBCollider* colToReturn = nullptr;

	glm::vec3 obbCorners[ColiderPos::MAX_COL_POS];

	glm::vec3 nearBotRight, nearBotLeft, nearTopRight, nearTopLeft;
	glm::vec3 farBotRight, farBotLeft, farTopRight, farTopLeft;
	glm::vec3 half = colider->getHalfLengths();

	obbCorners[NEAR_BOT_RIGHT] = colider->getPos() + (colider->getXAxis() * half.x) + (colider->getYAxis() * -half.y) + (colider->getZAxis() * -half.z);
	obbCorners[NEAR_BOT_LEFT] = colider->getPos() + (colider->getXAxis() * -half.x) + (colider->getYAxis() * -half.y) + (colider->getZAxis() * -half.z);
	obbCorners[NEAR_TOP_RIGHT] = colider->getPos() + (colider->getXAxis() * half.x) + (colider->getYAxis() * half.y) + (colider->getZAxis() * -half.z);
	obbCorners[NEAR_TOP_LEFT] = colider->getPos() + (colider->getXAxis() * -half.x) + (colider->getYAxis() * half.y) + (colider->getZAxis() * -half.z);


	obbCorners[FAR_BOT_RIGHT] = colider->getPos() + (colider->getXAxis() * half.x) + (colider->getYAxis() * -half.y) + (colider->getZAxis() * half.z);
	obbCorners[FAR_BOT_LEFT] = colider->getPos() + (colider->getXAxis() * half.x) + (colider->getYAxis() * half.y) + (colider->getZAxis() * half.z);
	obbCorners[FAR_TOP_RIGHT] = colider->getPos() + (colider->getXAxis() * -half.x) + (colider->getYAxis() * -half.y) + (colider->getZAxis() * half.z);
	obbCorners[FAR_TOP_LEFT] = colider->getPos() + (colider->getXAxis() * -half.x) + (colider->getYAxis() * half.y) + (colider->getZAxis() * half.z);

	for (size_t i = 0; i < ColiderPos::MAX_COL_POS; i++)
	{
		if (obbCorners[i].x > maxX)
			maxX = obbCorners[i].x;
		if(obbCorners[i].x<minX)
			minX = obbCorners[i].x;

		if (obbCorners[i].y > maxY)
			maxY = obbCorners[i].y;
		if (obbCorners[i].y < minY)
			minY = obbCorners[i].y;

		if (obbCorners[i].z > maxZ)
			maxZ = obbCorners[i].z;
		if (obbCorners[i].z < minZ)
			minZ = obbCorners[i].z;

	}

	colToReturn = new AABBCollider(glm::vec3(minX, minY, minZ), glm::vec3(maxX, maxY, maxZ), { 0,0,0 });



	return colToReturn;
}

void LevelColliderGenerator::addDebug(Debug* debug) {
	this->debugRef = debug;
}
void LevelColliderGenerator::update() {
	//for (size_t i = 0; i < this->tempCols.size(); i++)
	//{
	//	glm::vec3 minPos = this->tempCols[i]->getMinPos();
	//	glm::vec3 maxPos = this->tempCols[i]->getMaxPos();
	//	this->debugRef->drawAABB(minPos, maxPos, { 128,0,128 });
	//}
}
void TW_CALL LevelColliderGenerator::getOnGenEventCB(void* cliendData) {

	if (MessageBoxA(NULL, "Are you sure you wanna create parent coliders", "Brah", MB_YESNO) == IDYES) {
		for (size_t i = 1; i < LevelHeightmap::getCurrentID(); i++)
		{
			LevelColliderGenerator::getInstance()->generateQuadTree(i);
		}
		LevelColliderGenerator::getInstance()->generatedThisRun = true;
		LevelActorHandler::getInstance()->updateTweakBars();
	}
}


void LevelColliderGenerator::setTweakBar(TweakBar* bar) {
	barRef = bar;

	TwAddVarRW(barRef->getBar(), "childLayer", TW_TYPE_INT16, &this->numChilds, "label='Max Childs:'");
	TwAddButton(barRef->getBar(), "quadGenBtn", getOnGenEventCB, NULL, " label='Gen Parents' ");
}

