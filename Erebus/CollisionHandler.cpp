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
	this->sphereColliders.push_back(sphere);
	sphere->setID(CollisionHandler::hitboxID);
	CollisionHandler::incrementHitboxID();

	this->collisionLayers->addHitbox(sphere);

}

void CollisionHandler::addHitbox(AABBCollider * aabb)
{
	this->aabbColliders.push_back(aabb);
	aabb->setID(CollisionHandler::hitboxID);
	CollisionHandler::incrementHitboxID();

	this->collisionLayers->addHitbox(aabb);
}

void CollisionHandler::addHitbox(SphereCollider * sphere, int layer)
{
	this->sphereColliders.push_back(sphere);
	sphere->setID(CollisionHandler::hitboxID);
	CollisionHandler::incrementHitboxID();

	this->collisionLayers->addHitbox(sphere, layer);
}

void CollisionHandler::addHitbox(AABBCollider * aabb, int layer)
{
	this->aabbColliders.push_back(aabb);
	aabb->setID(CollisionHandler::hitboxID);
	CollisionHandler::incrementHitboxID();

	this->collisionLayers->addHitbox(aabb, layer);
}

void CollisionHandler::checkCollisions()
{
	//reset counters
	this->sphereCollisionCounter = 0;
	this->aabbCollisionCounter = 0;
	this->sphereToAabbCollisionCounter = 0;
	//Updatera position
	//Cleara deras gamla collisions görs i varje check funktion
	//kolla alla spheres mot alla spheres
	//kolla alla aabb mot alla andra aabb
	//KOlla alla spheres mot alla aabb

	this->deleteAllOldCollisions();

	this->updateSpherePos();
	this->updateAabbPos();

	//this->checkSphereToSphereCollisions();
	//this->checkAabbToAaabbCollisions();

	//this->checkSphereToAabbCollisions();

	// ----------------------------------------------------
	std::vector<int> layerCollisionVector;
	std::vector<SphereCollider*>* firstTempSphereColliders = nullptr;
	std::vector<AABBCollider*>* firstTempAABBColliders = nullptr;
	std::vector<SphereCollider*>* secondTempSphereColliders = nullptr;
	std::vector<AABBCollider*>* secondTempAABBColliders = nullptr;
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

		for (unsigned int j = 0; j < layerCollisionVector.size(); j++) // for every layer you should collide with
		{
			secondLayer = layerCollisionVector[j]; // get the layer to collide with

			if (firstLayer != secondLayer) // check collision between two different layers
			{
				secondTempSphereColliders = this->collisionLayers->getSphereColliders(secondLayer); // get hitboxes from layer to collide with
				secondTempAABBColliders = this->collisionLayers->getAABBColliders(secondLayer);

				if(secondTempSphereColliders->size() > 0) // (sphere layer1) vs (sphere layer2)
					this->checkSphereToSphereCollisions(firstTempSphereColliders,secondTempSphereColliders);

				if(secondTempAABBColliders->size() > 0) // (AABB layer1) vs (AABB layer2)
					this->checkAabbToAabbCollisions(firstTempAABBColliders,secondTempAABBColliders);

				if (secondTempSphereColliders->size() > 0 && firstTempAABBColliders->size() > 0) // (SPHERE layer2) vs (AABB layer1)
					checkSphereToAabbCollisions(secondTempSphereColliders, firstTempAABBColliders);

				if (firstTempSphereColliders->size() > 0 && secondTempAABBColliders->size() > 0) // (SPHERE layer1) vs (AABB layer2)
					checkSphereToAabbCollisions(firstTempSphereColliders, secondTempAABBColliders); 
					
			}

			else // check collision against your own layer
			{
				checkSphereToSphereCollisions(firstTempSphereColliders);
				checkAabbToAabbCollisions(firstTempAABBColliders);
				checkSphereToAabbCollisions(firstTempSphereColliders, firstTempAABBColliders);
			}

			this->collisionLayers->checkLayer(i,layerCollisionVector[j]);
		}

	}

	this->collisionLayers->resetLayerCollisionCheckedMatrix();
	


}

void CollisionHandler::checkSphereToSphereCollisions(std::vector<SphereCollider*>* colliders)
{
	int sphereColliderSize = colliders->size();
	SphereCollider* firstTempCollider = nullptr;
	SphereCollider* secondTempCollider = nullptr;

	if (sphereColliderSize > 0)
	{
		for (unsigned int i = 0; i < sphereColliderSize - 1; i++)
		{
			firstTempCollider = colliders->operator[](i);
			for (unsigned int j = i + 1; j < sphereColliderSize; j++)
			{
				secondTempCollider = colliders->operator[](j);
				bool hit = false;
				hit = sphereToSphereCollision(firstTempCollider, secondTempCollider);
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
	//int sphereColliderSize1 = colliders1->size();
	//int sphereColliderSize2 = colliders2->size();

	int sphereColliderSize1 = 5;
	int sphereColliderSize2 = 5;
	SphereCollider* tempCollider1 = nullptr;
	SphereCollider* tempCollider2 = nullptr;;

	if (sphereColliderSize1 > 0)
	{
		for (unsigned int i = 0; i < colliders1->size(); i++)
		{
			tempCollider1 = colliders1->operator[](i);
			for (unsigned int j = 0; j < colliders2->size(); j++)
			{
				tempCollider2 = colliders2->operator[](j);
				bool hit = false;
				hit = sphereToSphereCollision(tempCollider1, tempCollider2);
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
	int aabbColliderSize = colliders->size();

	if (aabbColliderSize > 0) // undvik infinity loop
	{
		for (unsigned int i = 0; i < aabbColliderSize - 1; i++) // aabb mot aabb
		{
			for (unsigned int j = i + 1; j <aabbColliderSize; j++)
			{
				bool hit = false;
				hit = aabbToAabbCollision(colliders->operator[](i), colliders->operator[](j));

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
	int aabbColliderSize1 = colliders1->size();
	int aabbColliderSize2 = colliders2->size();

	if (aabbColliderSize1 > 0)
	{
		for (unsigned int i = 0; i < colliders1->size(); i++)
		{
			for (unsigned int j = 0; j < colliders2->size(); j++)
			{
				bool hit = false;
				hit = aabbToAabbCollision(colliders1->operator[](i), colliders2->operator[](j));
				if (hit)
				{
					colliders1->operator[](i)->insertCollisionID(colliders2->operator[](j)->getID());
					colliders2->operator[](j)->insertCollisionID(colliders1->operator[](i)->getID());
				}

			}

		}
	}
}

void CollisionHandler::checkSphereToAabbCollisions(std::vector<SphereCollider*>* colliders1, std::vector<AABBCollider*>* colliders2)
{
	int sphereColliderSize = colliders1->size();
	int aabbColliderSize = colliders2->size();

	for (unsigned int i = 0; i < sphereColliderSize; i++) // sphere mot aabb
	{
		for (unsigned int k = 0; k < aabbColliderSize; k++)
		{
			bool hit = false;
			//hit = colliders1->operator[](i)->SphereToAabbCollision(colliders2->operator[](k));
			hit = this->sphereToAabbCollision(colliders1->operator[](i), colliders2->operator[](k));
			if (hit)
			{
				colliders1->operator[](i)->insertCollisionID(colliders2->operator[](k)->getID());
				colliders2->operator[](k)->insertCollisionID(colliders1->operator[](i)->getID());
			}

		}

	}
}

bool CollisionHandler::sphereToSphereCollision(SphereCollider * sphere1, SphereCollider * sphere2)
{
	this->sphereCollisionCounter++;
	bool collision = false;

	glm::vec3 distanceVector = sphere1->getPos() - sphere2->getPos();
	float distanceSquared = glm::dot(distanceVector, distanceVector); // dot with itself = length^2

	float radiusSquared = (sphere1->getRadius() + sphere2->getRadius());
	radiusSquared *= radiusSquared;

	//if distance squared is less than radius squared = collision
	if (distanceSquared <= radiusSquared)
		collision = true;


	return collision;
}

bool CollisionHandler::aabbToAabbCollision(AABBCollider* aabb1, AABBCollider* aabb2)
{
	this->aabbCollisionCounter++;
	const glm::vec3 minPos1 = aabb1->getMinPos();
	const glm::vec3 maxPos1 = aabb1->getMaxPos();

	const glm::vec3 minPos2 = aabb2->getMinPos();
	const glm::vec3 maxPos2 = aabb2->getMaxPos();


	return (maxPos1.x >= minPos2.x &&
		minPos1.x <= maxPos2.x &&
		maxPos1.y >= minPos2.y &&
		minPos1.y <= maxPos2.y &&
		maxPos1.z >= minPos2.z &&
		minPos1.z <= maxPos2.z);
}

bool CollisionHandler::sphereToAabbCollision(SphereCollider * sphere, AABBCollider * aabb)
{
	this->sphereToAabbCollisionCounter++;
	bool collision = false;

	float squaredDistance = SquaredDistancePointToAabb(aabb,sphere);
	float radiusSquared = sphere->getRadiusSquared();
	if (squaredDistance <= radiusSquared) // if squared distance between aabb and sphere center is closer than squared radius of spheres
		collision = true;


	return collision;
}

float CollisionHandler::closestDistanceAabbToPoint(const float & point, const float aabbMin, const float aabbMax)
{
	float val = 0;
	float returnValue = 0;
	if (point < aabbMin)
	{
		val = (aabbMin - point);
		returnValue = val* val;
	}
	if (point > aabbMax)
	{
		val = (point - aabbMax);
		returnValue = val*val;
	}
	return returnValue;
}

float CollisionHandler::SquaredDistancePointToAabb(AABBCollider* aabb, SphereCollider* sphere)
{
	float squaredDistance = 0;
	const glm::vec3 minPos = aabb->getMinPos();
	const glm::vec3 maxPos = aabb->getMaxPos();
	const glm::vec3 spherePos = sphere->getPos();

	squaredDistance += closestDistanceAabbToPoint(spherePos.x, minPos.x, maxPos.x);
	squaredDistance += closestDistanceAabbToPoint(spherePos.y, minPos.y, maxPos.y);
	squaredDistance += closestDistanceAabbToPoint(spherePos.z, minPos.z, maxPos.z);

	return squaredDistance;
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

void CollisionHandler::updateSpherePos()
{
	int sphereColliderSize = this->sphereColliders.size();

	for (unsigned int i = 0; i < sphereColliderSize; i++) 
	{
		int idTransform = sphereColliders[i]->getIDTransform();
		if (idTransform >= 0)
			sphereColliders[i]->setPos(transforms[idTransform].getPos());
	}
}

void CollisionHandler::updateAabbPos()
{
	int aabbColliderSize = this->aabbColliders.size();

	for (unsigned int i = 0; i < aabbColliderSize; i++)
	{
		int idTransform = aabbColliders[i]->getIDTransform();
		if (idTransform >= 0)
			aabbColliders[i]->setPos(transforms[idTransform].getPos());
	}
}


void CollisionHandler::deleteAllOldCollisions()
{
	int sphereColliderSize = this->sphereColliders.size();
	int aabbColliderSize = this->aabbColliders.size();

	for (unsigned int i = 0; i < sphereColliderSize; i++) // sphere
	{
		this->sphereColliders[i]->clearCollisionIDs();
	}

	for (unsigned int i = 0; i < aabbColliderSize; i++) // aabb
	{
		aabbColliders[i]->clearCollisionIDs();
	}


}

bool CollisionHandler::deleteHitbox(unsigned int ID)
{
	unsigned int sphereColliderSize = this->sphereColliders.size();
	unsigned int aabbColliderSize = this->aabbColliders.size();
	bool deleted = false;

	for (unsigned int i = 0; i < sphereColliderSize; i++) // check spheres
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
		for (unsigned int i = 0; i < aabbColliderSize; i++)
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
	float total = this->sphereCollisionCounter + this->aabbCollisionCounter + this->sphereToAabbCollisionCounter;
	std::cout << "Sphere to sphere checks: " << this->sphereCollisionCounter 
		<< "\nAABB to AABB Checks: " << this->aabbCollisionCounter 
		<< "\nSphere to AABB Checks: " << this->sphereToAabbCollisionCounter 
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
