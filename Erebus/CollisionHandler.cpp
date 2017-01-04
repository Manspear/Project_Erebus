#include "CollisionHandler.h"


unsigned int CollisionHandler::hitboxID = 0;

CollisionHandler::CollisionHandler()
	: transforms( nullptr )
{
	int reserveAmount = 200;
	this->sphereColliders.reserve(reserveAmount);
	this->aabbColliders.reserve(reserveAmount);

	this->collisionLayers = new CollisionLayers(5);

	//int size = 10;
	//bool** layerMatrix = new bool*[size];
	//for (unsigned int i = 0; i < size; i++)
	//{
	//	layerMatrix[i] = new bool[size];

	//	for (unsigned int j = 0; j < size; j++)
	//	{
	//		layerMatrix[i][j] = true;
	//	}
	//}

	//this->collisionLayers->setLayerCollisionMatrix(layerMatrix,size);
	this->debugger = nullptr;
	this->initializeColors();
}

CollisionHandler::CollisionHandler(int layers)
	: transforms(nullptr)
{
	int reserveAmount = 200;
	this->sphereColliders.reserve(reserveAmount);
	this->aabbColliders.reserve(reserveAmount);

	this->collisionLayers = new CollisionLayers(layers);
	this->debugger = nullptr;
	this->initializeColors();
}



CollisionHandler::~CollisionHandler()
{
	delete this->collisionLayers;
}

void CollisionHandler::addHitbox(SphereCollider * sphere)
{
	this->allColliders.push_back(sphere);
	this->sphereColliders.push_back(sphere);
	sphere->setID(CollisionHandler::hitboxID);
	CollisionHandler::incrementHitboxID();

	this->collisionLayers->addHitbox(sphere);

}

void CollisionHandler::addHitbox(AABBCollider * aabb)
{
	this->allColliders.push_back(aabb);
	this->aabbColliders.push_back(aabb);
	aabb->setID(CollisionHandler::hitboxID);
	CollisionHandler::incrementHitboxID();

	this->collisionLayers->addHitbox(aabb);
}

void CollisionHandler::addHitbox(SphereCollider * sphere, int layer)
{
	this->allColliders.push_back(sphere);
	this->sphereColliders.push_back(sphere);
	sphere->setID(CollisionHandler::hitboxID);
	CollisionHandler::incrementHitboxID();

	this->collisionLayers->addHitbox(sphere, layer);
}

void CollisionHandler::addHitbox(AABBCollider * aabb, int layer)
{
	this->allColliders.push_back(aabb);
	this->aabbColliders.push_back(aabb);
	aabb->setID(CollisionHandler::hitboxID);
	CollisionHandler::incrementHitboxID();

	this->collisionLayers->addHitbox(aabb, layer);
}

void CollisionHandler::addHitbox(OBBCollider * obb)
{
	this->allColliders.push_back(obb);
	this->obbColliders.push_back(obb);
	obb->setID(CollisionHandler::hitboxID);
	CollisionHandler::incrementHitboxID();

	this->collisionLayers->addHitbox(obb);
}

void CollisionHandler::addHitbox(OBBCollider * obb, int layer)
{
	this->allColliders.push_back(obb);
	this->obbColliders.push_back(obb);
	obb->setID(CollisionHandler::hitboxID);
	CollisionHandler::incrementHitboxID();

	this->collisionLayers->addHitbox(obb, layer);
}

void CollisionHandler::checkCollisions()
{

	//Cleara deras gamla collisions görs i varje check funktion
	this->deleteAllOldCollisions();

	//Updatera position
	this->updateAllHitboxPos();
	
	this->collisionChecker.resetCounters();

	// ----------------------------------------------------
	std::vector<int> layerCollisionVector;
	std::vector<SphereCollider*>* firstTempSphereColliders = nullptr;
	std::vector<AABBCollider*>* firstTempAABBColliders = nullptr;
	std::vector<SphereCollider*>* secondTempSphereColliders = nullptr;
	std::vector<AABBCollider*>* secondTempAABBColliders = nullptr;
	std::vector<OBBCollider*>* firstTempOBBColliders = nullptr;
	std::vector<OBBCollider*>* secondTempOBBColliders = nullptr;
	int firstLayer = 0;
	int secondLayer = 0;
	this->sphereColliders;
	this->aabbColliders;

	for (unsigned int i = 0; i < this->collisionLayers->getLayerMatrixSize(); i++) // loop through rows(layers) of layer matrix
	{
		firstLayer = i;
		layerCollisionVector = this->collisionLayers->getUncheckedLayerCollisions(i); // get layers you should collide with but dont have

		//std::cout << "Layer " << i << "collides with layers: ";
		//for (size_t k = 0; k < layerCollisionVector.size(); k++)
		//{
		//	std::cout << " " << layerCollisionVector[k] << " ";
		//}
		//std::cout << std::endl;

		firstTempSphereColliders = this->collisionLayers->getSphereColliders(i); // get hitboxes from layer
		firstTempAABBColliders = this->collisionLayers->getAABBColliders(i);
		firstTempOBBColliders = this->collisionLayers->getOBBColliders(i);

		for (unsigned int j = 0; j < layerCollisionVector.size(); j++) // for every layer you should collide with
		{
			secondLayer = layerCollisionVector[j]; // get the layer to collide with

			if (firstLayer != secondLayer) // check collision between two different layers
			{
				secondTempSphereColliders = this->collisionLayers->getSphereColliders(secondLayer); // get hitboxes from layer to collide with
				secondTempAABBColliders = this->collisionLayers->getAABBColliders(secondLayer);
				secondTempOBBColliders = this->collisionLayers->getOBBColliders(secondLayer);

				checkSphereToSphereCollisions(firstTempSphereColliders,secondTempSphereColliders); // (sphere layer1) vs (sphere layer2)
				checkAabbToAabbCollisions(firstTempAABBColliders,secondTempAABBColliders); // (AABB layer1) vs (AABB layer2)

				checkSphereToAabbCollisions(firstTempSphereColliders, secondTempAABBColliders); // (SPHERE layer1) vs (AABB layer2)
				checkSphereToAabbCollisions(secondTempSphereColliders, firstTempAABBColliders); // (AABB layer1) vs (SPHERE layer2)

				checkObbToObbCollisions(firstTempOBBColliders, secondTempOBBColliders); // (obb layer1) vs (obb layer2)
				checkObbToAabbCollisions(firstTempOBBColliders, secondTempAABBColliders); // (obb layer1) vs (aabb layer2)
				checkObbToAabbCollisions(secondTempOBBColliders, firstTempAABBColliders); // (obb layer2) vs (aabb layer1)
				checkObbToSphereCollisions(firstTempOBBColliders, secondTempSphereColliders); // (obb layer1) vs (sphere layer2)
				checkObbToSphereCollisions(secondTempOBBColliders, firstTempSphereColliders); // (obb layer2) vs (sphere layer1)
					
			}

			else // check collision against your own layer
			{
				checkSphereToSphereCollisions(firstTempSphereColliders);
				checkAabbToAabbCollisions(firstTempAABBColliders);
				checkSphereToAabbCollisions(firstTempSphereColliders, firstTempAABBColliders);
				checkObbToObbCollisions(firstTempOBBColliders);
				checkObbToAabbCollisions(firstTempOBBColliders, firstTempAABBColliders);
				checkObbToSphereCollisions(firstTempOBBColliders, firstTempSphereColliders);
			}

			this->collisionLayers->checkLayer(i,layerCollisionVector[j]);
		}

	}

	this->collisionLayers->resetLayerCollisionCheckedMatrix();
	


}

void CollisionHandler::checkSphereToSphereCollisions(std::vector<SphereCollider*>* colliders)
{
	size_t sphereColliderSize = colliders->size();
	SphereCollider* firstTempCollider = nullptr;
	SphereCollider* secondTempCollider = nullptr;
	bool hit = false;

	if (sphereColliderSize > 0)
	{
		for (unsigned int i = 0; i < sphereColliderSize - 1; i++)
		{
			firstTempCollider = colliders->operator[](i);
			for (unsigned int j = i + 1; j < sphereColliderSize; j++)
			{
				secondTempCollider = colliders->operator[](j);
				hit = false;
				hit = this->collisionChecker.collisionCheck(firstTempCollider, secondTempCollider);

				if (hit)
				{
					firstTempCollider->insertCollisionID(secondTempCollider->getID());
					secondTempCollider->insertCollisionID(firstTempCollider->getID());
				}

			}

		}
	}
}

void CollisionHandler::checkSphereToSphereCollisions(std::vector<SphereCollider*>* colliders1, std::vector<SphereCollider*>* colliders2)
{
	int sphereColliderSize1 = colliders1->size();
	int sphereColliderSize2 = colliders2->size();

	SphereCollider* tempCollider1 = nullptr;
	SphereCollider* tempCollider2 = nullptr;

	bool hit = false;

	if (sphereColliderSize1 > 0)
	{
		for (unsigned int i = 0; i < sphereColliderSize1; i++)
		{
			tempCollider1 = colliders1->operator[](i);
			for (unsigned int j = 0; j < sphereColliderSize2; j++)
			{
				tempCollider2 = colliders2->operator[](j);
				hit = false;
				hit = this->collisionChecker.collisionCheck(tempCollider1, tempCollider2);

				if (hit)
				{
					tempCollider1->insertCollisionID(tempCollider2->getID());
					tempCollider2->insertCollisionID(tempCollider1->getID());
				}

			}

		}
	}
}

void CollisionHandler::checkAabbToAabbCollisions(std::vector<AABBCollider*>* colliders)
{
	size_t aabbColliderSize = colliders->size();
	bool hit = false;

	if (aabbColliderSize > 0) // undvik infinity loop
	{
		for (unsigned int i = 0; i < aabbColliderSize - 1; i++) // aabb mot aabb
		{
			for (unsigned int j = i + 1; j <aabbColliderSize; j++)
			{
				hit = false;
				hit = this->collisionChecker.collisionCheck(colliders->operator[](i), colliders->operator[](j));

				if (hit)
				{
					colliders->operator[](i)->insertCollisionID(colliders->operator[](j)->getID());
					colliders->operator[](j)->insertCollisionID(colliders->operator[](i)->getID());

				}
			}
		}
	}
}

void CollisionHandler::checkAabbToAabbCollisions(std::vector<AABBCollider*>* colliders1, std::vector<AABBCollider*>* colliders2)
{
	size_t aabbColliderSize1 = colliders1->size();
	size_t aabbColliderSize2 = colliders2->size();
	bool hit = false;

	if (aabbColliderSize1 > 0)
	{
		for (unsigned int i = 0; i < aabbColliderSize1; i++)
		{
			for (unsigned int j = 0; j < aabbColliderSize2; j++)
			{
				hit = false;
				hit = this->collisionChecker.collisionCheck(colliders1->operator[](i), colliders2->operator[](j));

				if (hit)
				{
					colliders1->operator[](i)->insertCollisionID(colliders2->operator[](j)->getID());
					colliders2->operator[](j)->insertCollisionID(colliders1->operator[](i)->getID());
				}

			}

		}
	}
}

void CollisionHandler::checkObbToObbCollisions(std::vector<OBBCollider*>* colliders)
{
	size_t obbColliderSize = colliders->size();
	bool hit = false;

	if (obbColliderSize > 0) // undvik infinity loop
	{
		for (unsigned int i = 0; i < obbColliderSize - 1; i++) // obb vs obb
		{
			for (unsigned int j = i + 1; j <obbColliderSize; j++)
			{
				hit = false;
				hit = this->collisionChecker.collisionCheck(colliders->operator[](i), colliders->operator[](j));

				if (hit)
				{
					colliders->operator[](i)->insertCollisionID(colliders->operator[](j)->getID());
					colliders->operator[](j)->insertCollisionID(colliders->operator[](i)->getID());
				}
			}
		}
	}
}

void CollisionHandler::checkObbToObbCollisions(std::vector<OBBCollider*>* colliders1, std::vector<OBBCollider*>* colliders2)
{
	size_t obbColliderSize1 = colliders1->size();
	size_t obbColliderSize2 = colliders2->size();
	bool hit = false;

	if (obbColliderSize1 > 0)
	{
		for (unsigned int i = 0; i < obbColliderSize1; i++)
		{
			for (unsigned int j = 0; j < obbColliderSize2; j++)
			{
				hit = false;
				hit = this->collisionChecker.collisionCheck(colliders1->operator[](i), colliders2->operator[](j));

				if (hit)
				{
					colliders1->operator[](i)->insertCollisionID(colliders2->operator[](j)->getID());
					colliders2->operator[](j)->insertCollisionID(colliders1->operator[](i)->getID());
				}

			}

		}
	}
}

void CollisionHandler::checkObbToAabbCollisions(std::vector<OBBCollider*>* colliders1, std::vector<AABBCollider*>* colliders2)
{

	size_t obbColliderSize = colliders1->size();
	size_t aabbColliderSize = colliders2->size();
	bool hit = false;

	for (unsigned int i = 0; i < obbColliderSize; i++) // sphere mot aabb
	{
		for (unsigned int k = 0; k < aabbColliderSize; k++)
		{
			hit = false;
			hit = this->collisionChecker.collisionCheck(colliders1->operator[](i), colliders2->operator[](k));

			if (hit)
			{
				colliders1->operator[](i)->insertCollisionID(colliders2->operator[](k)->getID());
				colliders2->operator[](k)->insertCollisionID(colliders1->operator[](i)->getID());
			}

		}

	}
}

void CollisionHandler::checkObbToSphereCollisions(std::vector<OBBCollider*>* colliders1, std::vector<SphereCollider*>* colliders2)
{
	size_t obbColliderSize = colliders1->size();
	size_t sphereColliderSize = colliders2->size();
	bool hit = false;

	for (unsigned int i = 0; i < obbColliderSize; i++) // sphere mot aabb
	{
		for (unsigned int k = 0; k < sphereColliderSize; k++)
		{
			hit = false;
			hit = this->collisionChecker.collisionCheck(colliders1->operator[](i), colliders2->operator[](k));

			if (hit)
			{
				colliders1->operator[](i)->insertCollisionID(colliders2->operator[](k)->getID());
				colliders2->operator[](k)->insertCollisionID(colliders1->operator[](i)->getID());
			}

		}

	}
}

void CollisionHandler::checkSphereToAabbCollisions(std::vector<SphereCollider*>* colliders1, std::vector<AABBCollider*>* colliders2)
{
	size_t sphereColliderSize = colliders1->size();
	size_t aabbColliderSize = colliders2->size();
	bool hit = false;

	for (unsigned int i = 0; i < sphereColliderSize; i++) // sphere mot aabb
	{
		for (unsigned int k = 0; k < aabbColliderSize; k++)
		{
			hit = false;
			//hit = colliders1->operator[](i)->SphereToAabbCollision(colliders2->operator[](k));
			//hit = this->sphereToAabbCollision(colliders1->operator[](i), colliders2->operator[](k));
			hit = this->collisionChecker.collisionCheck(colliders1->operator[](i), colliders2->operator[](k));
			if (hit)
			{
				colliders1->operator[](i)->insertCollisionID(colliders2->operator[](k)->getID());
				colliders2->operator[](k)->insertCollisionID(colliders1->operator[](i)->getID());
			}

		}

	}
}

void CollisionHandler::incrementHitboxID()
{
	CollisionHandler::hitboxID++;
}

void CollisionHandler::initializeColors()
{
	int secondRootOfSize = 4;
	int counter = 0;
	float R, G, B;
	const int hardcoddedColorSize = 6;
	glm::vec3 hardCodedColors[hardcoddedColorSize];
	hardCodedColors[0] = glm::vec3(1,0,0);
	hardCodedColors[1] = glm::vec3(0, 1, 0);
	hardCodedColors[2] = glm::vec3(0, 0, 1);
	hardCodedColors[3] = glm::vec3(1, 1, 0);
	hardCodedColors[4] = glm::vec3(1, 0, 1);
	hardCodedColors[5] = glm::vec3(0, 1, 1);
	for (size_t i = 0; i < secondRootOfSize; i++)
	{
		R = (float)i / secondRootOfSize;
		for (size_t j = 0; j < secondRootOfSize; j++)
		{
			G = (float)j / secondRootOfSize;
			for (size_t k = 0; k < secondRootOfSize; k++)
			{
				B = (float)k / secondRootOfSize;
				this->colors[counter++] = glm::vec3(R,G,B);
			}
		}
	}
	for (size_t i = 0; i < hardcoddedColorSize; i++)
	{
		this->colors[i] = hardCodedColors[i];
	}
}

void CollisionHandler::updateAllHitboxPos()
{
	size_t allColliderSize = this->allColliders.size();

	for (size_t i = 0; i < allColliderSize; i++)
	{
		int idTransform = this->allColliders[i]->getIDTransform();
		if (idTransform >= 0)
			this->allColliders[i]->setPos(transforms[idTransform].getPos());
	}
}

void CollisionHandler::updateSpherePos()
{
	size_t sphereColliderSize = this->sphereColliders.size();

	for (unsigned int i = 0; i < sphereColliderSize; i++) 
	{
		int idTransform = sphereColliders[i]->getIDTransform();
		if (idTransform >= 0)
			sphereColliders[i]->setPos(transforms[idTransform].getPos());
	}
}

void CollisionHandler::updateAabbPos()
{
	size_t aabbColliderSize = this->aabbColliders.size();

	for (unsigned int i = 0; i < aabbColliderSize; i++)
	{
		int idTransform = aabbColliders[i]->getIDTransform();
		if (idTransform >= 0)
			aabbColliders[i]->setPos(transforms[idTransform].getPos());
	}
}


void CollisionHandler::deleteAllOldCollisions()
{
	size_t sphereColliderSize = this->sphereColliders.size();
	size_t aabbColliderSize = this->aabbColliders.size();
	size_t obbColliderSize = this->obbColliders.size();

	for (unsigned int i = 0; i < sphereColliderSize; i++) // sphere
	{
		this->sphereColliders[i]->clearCollisionIDs();
	}

	for (unsigned int i = 0; i < aabbColliderSize; i++) // aabb
	{
		aabbColliders[i]->clearCollisionIDs();
	}

	for (unsigned int i = 0; i < obbColliderSize; i++)
	{
		obbColliders[i]->clearCollisionIDs();
	}


}

bool CollisionHandler::deleteHitbox(unsigned int ID)
{
	size_t sphereColliderSize = this->sphereColliders.size();
	size_t aabbColliderSize = this->aabbColliders.size();
	bool deleted = false;

	for (size_t i = 0; i < sphereColliderSize; i++) // check spheres
	{
		if (sphereColliders[i]->getID() == ID)
		{
			sphereColliders[i]->clearCollisionIDs();
			sphereColliders.erase(sphereColliders.begin() + i);
			deleted = true;
			i = sphereColliderSize;
		}
	}
	if (!deleted)
	{
		for (size_t i = 0; i < aabbColliderSize; i++)
		{
			if (aabbColliders[i]->getID() == ID)
			{
				aabbColliders[i]->clearCollisionIDs();
				aabbColliders.erase(aabbColliders.begin() + i);
				deleted = true;
				i = aabbColliderSize;
			}
		}
	}

	return deleted;
}

void CollisionHandler::setTransforms( Transform* t )
{
	transforms = t;
}

void CollisionHandler::setDebugger(Debug * debugger)
{
	this->debugger = debugger;
}

CollisionLayers* CollisionHandler::getCollisionLayers()
{
	return collisionLayers;
}

void CollisionHandler::setLayerCollisionMatrix(bool ** layerMatrix, unsigned int layerMatrixSize)
{
	this->collisionLayers->setLayerCollisionMatrix(layerMatrix,layerMatrixSize);
}

void CollisionHandler::setLayerCollisionMatrix(int layer1, int layer2, bool canCollide)
{
	this->collisionLayers->setLayerCollisionMatrix(layer1,layer2,canCollide);
}

void CollisionHandler::printCollisions()
{
	int total = collisionChecker.getCollisionCounter();
	std::cout << "Sphere to sphere checks: " << collisionChecker.getSphereCollisionCounter()
		<< "\nAABB to AABB Checks: " << collisionChecker.getAabbCollisionCounter()
		<< "\nSphere to AABB Checks: " << collisionChecker.getSphereToAabbCollisionCounter()
		<< "\nOBB to OBB Checks: " << collisionChecker.getObbCollisionCounter()
		<< "\nOBB to Sphere Checks: " << collisionChecker.getObbToSphereCollisionCounter()
		<< "\nOBB to AABB Checks: " << collisionChecker.getObbToAabbCollisionCounter()
		<<"\nTotal Checks: " << total << std::endl;
}

void CollisionHandler::drawHitboxes()
{
	std::vector<SphereCollider*>* tempSphereColliders;
	std::vector<AABBCollider*>* tempAabbColliders;
	SphereCollider* tempSphere = nullptr;
	for (unsigned int i = 0; i < this->collisionLayers->getLayerMatrixSize(); i++) //rows of layer matrix
	{
		tempSphereColliders = this->collisionLayers->getSphereColliders(i);
		tempAabbColliders = this->collisionLayers->getAABBColliders(i);
		for (size_t j = 0; j < tempSphereColliders->size(); j++) // each element in row
		{
			debugger->drawSphere(tempSphereColliders->operator[](j)->getPos(), tempSphereColliders->operator[](j)->getRadius(),this->colors[i]);
		}
		for (size_t j = 0; j < tempAabbColliders->size(); j++)
		{
			debugger->drawAABB(tempAabbColliders->operator[](j)->getMinPos(), tempAabbColliders->operator[](j)->getMaxPos(),this->colors[i]);
		}
	}
}
