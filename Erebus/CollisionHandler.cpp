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

void CollisionHandler::addRay(RayCollider * ray)
{
	this->rayColliders.push_back(ray);

	ray->setID(CollisionHandler::hitboxID);
	CollisionHandler::incrementHitboxID();

	this->collisionLayers->addRay(ray);
}

void CollisionHandler::addRay(RayCollider * ray, int layer)
{
	this->rayColliders.push_back(ray);

	ray->setID(CollisionHandler::hitboxID);
	CollisionHandler::incrementHitboxID();

	this->collisionLayers->addRay(ray, layer);
}

void CollisionHandler::checkCollisions()
{
	if (this->enabled) // If collisionHandler is enabled
	{
		//Cleara deras gamla collisions g�rs i varje check funktion
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
		std::vector<RayCollider*>* firstTempRayColliders = nullptr;
		std::vector<RayCollider*>* secondTempRayColliders = nullptr;
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
			firstTempRayColliders = this->collisionLayers->getRayColliders(i);

			for (unsigned int j = 0; j < layerCollisionVector.size(); j++) // for every layer you should collide with
			{
				secondLayer = layerCollisionVector[j]; // get the layer to collide with

				if (firstLayer != secondLayer) // check collision between two different layers
				{
					secondTempSphereColliders = this->collisionLayers->getSphereColliders(secondLayer); // get hitboxes from layer to collide with
					secondTempAABBColliders = this->collisionLayers->getAABBColliders(secondLayer);
					secondTempOBBColliders = this->collisionLayers->getOBBColliders(secondLayer);
					secondTempRayColliders = this->collisionLayers->getRayColliders(secondLayer);

					checkAnyCollision(firstTempSphereColliders, secondTempSphereColliders); // (sphere layer1) vs (sphere layer2)
					checkAnyCollision(firstTempAABBColliders, secondTempAABBColliders); // (AABB layer1) vs (AABB layer2)

					checkAnyCollision(firstTempSphereColliders, secondTempAABBColliders); // (SPHERE layer1) vs (AABB layer2)
					checkAnyCollision(secondTempSphereColliders, firstTempAABBColliders); // (AABB layer1) vs (SPHERE layer2)

					checkAnyCollision(firstTempOBBColliders, secondTempOBBColliders); // (obb layer1) vs (obb layer2)
					checkAnyCollision(firstTempOBBColliders, secondTempAABBColliders); // (obb layer1) vs (aabb layer2)
					checkAnyCollision(firstTempOBBColliders, secondTempSphereColliders); // (obb layer1) vs (sphere layer2)
					checkAnyCollision(secondTempOBBColliders, firstTempAABBColliders); // (obb layer2) vs (aabb layer1)
					checkAnyCollision(secondTempOBBColliders, firstTempSphereColliders); // (obb layer2) vs (sphere layer1)

					checkAnyCollision(firstTempRayColliders, secondTempAABBColliders); // (ray layer1) vs (aabb layer2)
					checkAnyCollision(firstTempRayColliders, secondTempSphereColliders); // (ray layer1) vs (sphere layer2)
					checkAnyCollision(firstTempRayColliders, secondTempOBBColliders); // (ray layer1) vs (obb layer2)
					checkAnyCollision(secondTempRayColliders, firstTempAABBColliders); // (ray layer2) vs (aabb layer1)
					checkAnyCollision(secondTempRayColliders, firstTempSphereColliders);// (ray layer2) vs (sphere layer1)
					checkAnyCollision(secondTempRayColliders, firstTempOBBColliders); // (ray layer2) vs (obb layer2)

				}

				else // check collision against your own layer
				{
					checkAnyCollision(firstTempSphereColliders);
					checkAnyCollision(firstTempAABBColliders);
					checkAnyCollision(firstTempOBBColliders);
					checkAnyCollision(firstTempSphereColliders, firstTempAABBColliders);
					checkAnyCollision(firstTempOBBColliders, firstTempAABBColliders);
					checkAnyCollision(firstTempOBBColliders, firstTempSphereColliders);

					checkAnyCollision(firstTempRayColliders, firstTempAABBColliders);
					checkAnyCollision(firstTempRayColliders, firstTempSphereColliders);
					checkAnyCollision(firstTempRayColliders, firstTempOBBColliders);
				}

				this->collisionLayers->checkLayer(i, layerCollisionVector[j]);
			}

		}

		this->collisionLayers->resetLayerCollisionCheckedMatrix();
	}

}

template<typename T, typename U>
inline void CollisionHandler::checkAnyCollision(std::vector<T*>* colliders1, std::vector<U*>* colliders2)
{
	size_t firstSize = colliders1->size();
	size_t secondSize = colliders2->size();
	bool hit = false;

	for (unsigned int i = 0; i < firstSize; i++)
	{
		if (colliders1->operator[](i)->isActive()) // only check collision if hitbox is active
		{
			for (unsigned int k = 0; k < secondSize; k++)
			{
				if (colliders2->operator[](k)->isActive()) // only check collision if hitbox is active
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


	}
}

template<typename T>
inline void CollisionHandler::checkAnyCollision(std::vector<T*>* colliders)
{
	size_t colliderSize = colliders->size();
	T* firstTempCollider = nullptr;
	T* secondTempCollider = nullptr;
	bool hit = false;

	if (colliderSize > 0)
	{
		for (unsigned int i = 0; i < colliderSize - 1; i++)
		{
			firstTempCollider = colliders->operator[](i);
			if (firstTempCollider->isActive()) // only check collision if hitbox is active
			{
				for (unsigned int j = i + 1; j < colliderSize; j++)
				{
					secondTempCollider = colliders->operator[](j);
					if (secondTempCollider->isActive()) // only check collision if hitbox is active
					{
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
	size_t rayColliderSize = this->rayColliders.size();

	for (size_t i = 0; i < allColliderSize; i++)
	{
		int idTransform = this->allColliders[i]->getIDTransform();
		if (idTransform >= 0)
			this->allColliders[i]->setPos(transforms[idTransform].getPos());
	}

	for (size_t i = 0; i < rayColliderSize; i++) // update rays also
	{
		int idTransform = this->rayColliders[i]->getIDTransform();
		if (idTransform >= 0)
			this->rayColliders[i]->setPosition(transforms[idTransform].getPos());
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
	size_t rayColliderSize = this->rayColliders.size();

	for (size_t i = 0; i < sphereColliderSize; i++) // sphere
	{
		this->sphereColliders[i]->clearCollisionIDs();
	}

	for (size_t i = 0; i < aabbColliderSize; i++) // aabb
	{
		aabbColliders[i]->clearCollisionIDs();
	}

	for (size_t i = 0; i < obbColliderSize; i++)
	{
		obbColliders[i]->clearCollisionIDs();
	}

	for (size_t i = 0; i < rayColliderSize; i++)
	{
		rayColliders[i]->clearCollisionIDs();
		rayColliders[i]->clearHitData();
	}


}

bool CollisionHandler::deleteHitbox(unsigned int ID)
{
	size_t sphereColliderSize = this->sphereColliders.size();
	size_t aabbColliderSize = this->aabbColliders.size();
	size_t obbColliderSize = this->obbColliders.size();
	size_t allColliderSize = this->allColliders.size();
	bool deleted = false;

	for (size_t i = 0; i < sphereColliderSize; i++) // check spheres
	{
		if (sphereColliders[i]->getID() == ID)
		{
			this->collisionLayers->deleteHitbox(ID);
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
				this->collisionLayers->deleteHitbox(ID);
				aabbColliders[i]->clearCollisionIDs();
				aabbColliders.erase(aabbColliders.begin() + i);
				deleted = true;
				i = aabbColliderSize;
			}
		}
	}
	if (!deleted)
	{
		for (size_t i = 0; i < obbColliderSize; i++)
		{
			if (obbColliders[i]->getID() == ID)
			{
				this->collisionLayers->deleteHitbox(ID);
				obbColliders[i]->clearCollisionIDs();
				obbColliders.erase(obbColliders.begin() + i);
				deleted = true;
				i = obbColliderSize;
			}

		}
	}
	if (deleted) // if we found the hitbox and removed it, it means it is in the "allColliders" vector also, we delete it
	{
		for (size_t i = 0; i < allColliderSize; i++)
		{
			if (allColliders[i]->getID() == ID)
			{
				//this->collisionLayers->deleteHitbox(ID);
				allColliders[i]->clearCollisionIDs();
				allColliders.erase(allColliders.begin() + i);
				i = allColliderSize;
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

void CollisionHandler::setEnabled(bool enabled)
{
	this->enabled = enabled;
}

std::string CollisionHandler::getCollisionText()
{
	std::stringstream text;
	int total = collisionChecker.getCollisionCounter();
	text << "Sphere to sphere checks: " << collisionChecker.getSphereCollisionCounter()
		<< "\nAABB to AABB Checks: " << collisionChecker.getAabbCollisionCounter()
		<< "\nSphere to AABB Checks: " << collisionChecker.getSphereToAabbCollisionCounter()
		<< "\nOBB to OBB Checks: " << collisionChecker.getObbCollisionCounter()
		<< "\nOBB to Sphere Checks: " << collisionChecker.getObbToSphereCollisionCounter()
		<< "\nOBB to AABB Checks: " << collisionChecker.getObbToAabbCollisionCounter()
		<< "\nRay to AABB Checks: " << collisionChecker.getRayToAabbCollisionCounter()
		<< "\nRay to OBB Checks: " << collisionChecker.getRayToObbCollisionCounter()
		<< "\nRay to Sphere Checks: " << collisionChecker.getRayToSphereCollisionCunter()
		<< "\nTotal Checks: " << total << "\n\n";

	return text.str();
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

void CollisionHandler::deactiveteAllHitboxes()
{
	for (size_t i = 0; i < this->allColliders.size(); i++)
	{
		this->allColliders[i]->setActive(false);
	}
	for (size_t i = 0; i < this->rayColliders.size(); i++)
	{
		this->rayColliders[i]->setActive(false);
	}
}

void CollisionHandler::activeteAllHitboxes()
{
	for (size_t i = 0; i < this->allColliders.size(); i++)
	{
		this->allColliders[i]->setActive(true);
	}
	for (size_t i = 0; i < this->rayColliders.size(); i++)
	{
		this->rayColliders[i]->setActive(true);
	}
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
		<< "\nRay to AABB Checks: " << collisionChecker.getRayToAabbCollisionCounter()
		<< "\nRay to OBB Checks: " << collisionChecker.getRayToObbCollisionCounter()
		<< "\nRay to Sphere Checks: " << collisionChecker.getRayToSphereCollisionCunter()
		<<"\nTotal Checks: " << total << "\n\n";
}

void CollisionHandler::drawHitboxes()
{
	if (this->enabled)
	{
		std::vector<SphereCollider*>* tempSphereColliders;
		std::vector<AABBCollider*>* tempAabbColliders;
		std::vector<OBBCollider*>* tempObbColliders;
		std::vector<RayCollider*>* tempRayColliders;
		SphereCollider* tempSphere = nullptr;
		const glm::vec3 deactivatedColor(0, 0, 0);
		for (unsigned int i = 0; i < this->collisionLayers->getLayerMatrixSize(); i++) //rows of layer matrix
		{
			tempSphereColliders = this->collisionLayers->getSphereColliders(i);
			tempAabbColliders = this->collisionLayers->getAABBColliders(i);
			tempObbColliders = this->collisionLayers->getOBBColliders(i);
			tempRayColliders = this->collisionLayers->getRayColliders(i);
			for (size_t j = 0; j < tempSphereColliders->size(); j++) // each element in row
			{
				SphereCollider* temp = tempSphereColliders->operator[](j);
				if (temp->isActive())
					debugger->drawSphere(temp->getPos(), temp->getRadius(), this->colors[i]);
				else
					debugger->drawSphere(temp->getPos(), temp->getRadius(), deactivatedColor);
			}
			for (size_t j = 0; j < tempAabbColliders->size(); j++)
			{
				AABBCollider* temp = tempAabbColliders->operator[](j);
				if (temp->isActive())
					debugger->drawAABB(temp->getMinPos(), temp->getMaxPos(), this->colors[i]);
				else
					debugger->drawAABB(temp->getMinPos(), temp->getMaxPos(), deactivatedColor);
			}
			for (size_t j = 0; j < tempObbColliders->size(); j++)
			{
				OBBCollider* temp = tempObbColliders->operator[](j);
				if (temp->isActive())
					debugger->drawOBB(temp->getPos(), temp->getXAxis(), temp->getYAxis(), temp->getZAxis(), temp->getHalfLengths(), this->colors[i]);
				else
					debugger->drawOBB(temp->getPos(), temp->getXAxis(), temp->getYAxis(), temp->getZAxis(), temp->getHalfLengths(), deactivatedColor);
			}
			for (size_t j = 0; j < tempRayColliders->size(); j++)
			{
				RayCollider* temp = tempRayColliders->operator[](j);
				if (temp->isActive())
					debugger->drawRay(temp->getPosition(), temp->getDirection(), 1000000.0f, this->colors[i]);
				else
					debugger->drawRay(temp->getPosition(), temp->getDirection(), 1000000.0f, deactivatedColor);
			}
		}
	}
}

void CollisionHandler::recursiveDraw(HitBox * hitbox, glm::vec3 color)
{
	std::vector<HitBox*>* children = hitbox->getChildren();
	if (children != nullptr) // if we have any children call recursive draw on them also
	{
		for (size_t i = 0; i < children->size(); i++)
		{
			this->recursiveDraw(children->operator[](i), color);
		}
	}

	if (hitbox->isAabbCollider()) // draw the hitbox
	{
		AABBCollider* temp = static_cast<AABBCollider*>(hitbox);
		if (temp->isActive())
			debugger->drawAABB(temp->getMinPos(), temp->getMaxPos(), color);
		else
			debugger->drawAABB(temp->getMinPos(), temp->getMaxPos(), deactivatedColor);
	}
	else if (hitbox->isSphereCollider())
	{
		SphereCollider* temp = static_cast<SphereCollider*>(hitbox);
		if (temp->isActive())
			debugger->drawSphere(temp->getPos(), temp->getRadius(), color);
		else
			debugger->drawSphere(temp->getPos(), temp->getRadius(), deactivatedColor);
	}
	else if (hitbox->isObbCollider())
	{
		OBBCollider* temp = static_cast<OBBCollider*>(hitbox);
		if (temp->isActive())
			debugger->drawOBB(temp->getPos(), temp->getXAxis(), temp->getYAxis(), temp->getZAxis(), temp->getHalfLengths(), color);
		else
			debugger->drawOBB(temp->getPos(), temp->getXAxis(), temp->getYAxis(), temp->getZAxis(), temp->getHalfLengths(), deactivatedColor);
	}
}
