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
}

CollisionHandler::CollisionHandler(int layers)
	: transforms(nullptr)
{
	int reserveAmount = 200;
	this->sphereColliders.reserve(reserveAmount);
	this->aabbColliders.reserve(reserveAmount);

	this->collisionLayers = new CollisionLayers(layers);
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

	for (unsigned int i = 0; i < this->collisionLayers->getLayerMatrixSize(); i++) // loop through rows of layer matrix
	{
		firstLayer = i;
		layerCollisionVector = this->collisionLayers->getUncheckedLayerCollisions(i); // get layers you should collide with but dont have

		//std::cout << "Layer " << i << "collides with layers: ";
		//for (size_t k = 0; k < layerCollisionVector.size(); k++)
		//{
		//	std::cout << " " << layerCollisionVector[k] << " ";
		//}
		//std::cout << std::endl;

		firstTempSphereColliders = this->collisionLayers->getSphereColliders(i);
		firstTempAABBColliders = this->collisionLayers->getAABBColliders(i);

		for (unsigned int j = 0; j < layerCollisionVector.size(); j++)
		{
			secondLayer = layerCollisionVector[j];

			if (firstLayer != secondLayer) // check collision between two different layers
			{
				secondTempSphereColliders = this->collisionLayers->getSphereColliders(secondLayer);
				secondTempAABBColliders = this->collisionLayers->getAABBColliders(secondLayer);
				if(secondTempSphereColliders->size() > 0)
					this->checkSphereToSphereCollisions(firstTempSphereColliders,secondTempSphereColliders);
				if(secondTempAABBColliders->size() > 0)
					this->checkAabbToAaabbCollisions(firstTempAABBColliders,secondTempAABBColliders);
			}

			else // check collision against your own layer
			{
				checkSphereToSphereCollisions(firstTempSphereColliders);
				checkAabbToAaabbCollisions(firstTempAABBColliders);
			}

			this->collisionLayers->checkLayer(i,layerCollisionVector[j]);
		}

	}

	this->collisionLayers->resetLayerCollisionCheckedMatrix();
	//std::cout << counter << std::endl;
	this->counter = 0;
	


}

void CollisionHandler::checkSphereToSphereCollisions()
{
	int sphereColliderSize = this->sphereColliders.size();


	if (sphereColliderSize > 0) // Kolla så sphere finns för att undvika infinity loop (size-1) = infinity loop
	{
		for (unsigned int i = 0; i < sphereColliderSize - 1; i++) // sphere mot sphere
		{
			for (unsigned int k = i + 1; k < sphereColliderSize; k++)
			{
				bool hit = false;
				hit = sphereToSphereCollision(sphereColliders[i], sphereColliders[k]);
				//hit = sphereColliders[i]->sphereToSphereCollision(sphereColliders[k]);
				if (hit)
				{
					sphereColliders[i]->insertCollisionID(sphereColliders[k]->getID());
					sphereColliders[k]->insertCollisionID(sphereColliders[i]->getID());
				}
			}
		}
	}
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

void CollisionHandler::checkAabbToAaabbCollisions()
{
	int aabbColliderSize = this->aabbColliders.size();

	if (aabbColliderSize > 0) // undvik infinity loop
	{
		for (unsigned int i = 0; i < aabbColliderSize - 1; i++) // aabb mot aabb
		{
			for (unsigned int k = i + 1; k <aabbColliderSize; k++)
			{
				bool hit = false;
				hit = aabbToAabbCollision(aabbColliders[i], aabbColliders[k]);
				//hit = aabbColliders[i]->AabbToAabb(aabbColliders[k]);


				if (hit)
				{
					aabbColliders[i]->insertCollisionID(aabbColliders[k]->getID());
					aabbColliders[k]->insertCollisionID(aabbColliders[i]->getID());
				}
			}
		}
	}
}

void CollisionHandler::checkAabbToAaabbCollisions(std::vector<AABBCollider*>* colliders)
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

void CollisionHandler::checkAabbToAaabbCollisions(std::vector<AABBCollider*>* colliders1, std::vector<AABBCollider*>* colliders2)
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

void CollisionHandler::checkSphereToAabbCollisions()
{
	int sphereColliderSize = this->sphereColliders.size();
	int aabbColliderSize = this->aabbColliders.size();

	for (unsigned int i = 0; i < sphereColliderSize; i++) // sphere mot aabb
	{
		for (unsigned int k = 0; k < aabbColliderSize; k++)
		{
			bool hit = false;
			hit = sphereColliders[i]->SphereToAabbCollision(aabbColliders[k]);
			if (hit)
			{
				sphereColliders[i]->insertCollisionID(aabbColliders[k]->getID());
				aabbColliders[k]->insertCollisionID(sphereColliders[i]->getID());
			}

		}

	}
}

bool CollisionHandler::sphereToSphereCollision(SphereCollider * sphere1, SphereCollider * sphere2)
{
	this->counter++;
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

void CollisionHandler::incrementHitboxID()
{
	CollisionHandler::hitboxID++;
}

void CollisionHandler::updateSpherePos()
{
	int sphereColliderSize = this->sphereColliders.size();

	for (unsigned int i = 0; i < sphereColliderSize; i++) // updatera positionen
	{
		int idTransform = sphereColliders[i]->getIDTransform();
		if (idTransform >= 0)
			sphereColliders[i]->setPos(transforms[idTransform].getPos());
	}
}

void CollisionHandler::updateAabbPos()
{
	int aabbColliderSize = this->aabbColliders.size();

	for (unsigned int i = 0; i < aabbColliderSize; i++) // updatera positionen
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

	for (unsigned int i = 0; i < sphereColliderSize; i++) // kolla spheres
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
