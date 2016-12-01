#include "CollisionHandler.h"



CollisionHandler::CollisionHandler()
{
	int reserveAmount = 200;
	this->sphereColliders.reserve(reserveAmount);
	this->aabbColliders.reserve(reserveAmount);
}


CollisionHandler::~CollisionHandler()
{
}

void CollisionHandler::addHitbox(SphereCollider * sphere)
{
	this->sphereColliders.push_back(sphere);
}

void CollisionHandler::addHitbox(AABBCollider * aabb)
{
	this->aabbColliders.push_back(aabb);
}

void CollisionHandler::addHitbox(AABBSquareCollider * aabb)
{
	this->aabbSquareColliders.push_back(aabb);
}

void CollisionHandler::checkCollisions()
{
	//Updatera position
	//Cleara deras gamla collisions görs i varje check funktion
	//kolla alla spheres mot alla spheres
	//kolla alla aabb mot alla andra aabb
	//KOlla alla spheres mot alla aabb

	this->updateSpherePos();
	this->updateAabbPos();

	this->checkSphereToSphereCollisions();
	this->checkAabbToAaabbCollisions();
	this->checkSphereToAabbCollisions();


}

void CollisionHandler::checkSphereToSphereCollisions()
{
	int sphereColliderSize = this->sphereColliders.size();

	for (unsigned int i = 0; i < sphereColliderSize; i++) // ta bort gamla collisions
	{
		this->sphereColliders[i]->clearCollisionIDs();
	}

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

void CollisionHandler::checkAabbToAaabbCollisions()
{
	int aabbColliderSize = this->aabbColliders.size();

	for (unsigned int i = 0; i < aabbColliderSize; i++) // ta bort gamla collisions
	{
		aabbColliders[i]->clearCollisionIDs();
	}

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
	const glm::vec3* minPos1 = aabb1->getMinPos();
	const glm::vec3* maxPos1 = aabb1->getMaxPos();

	const glm::vec3* minPos2 = aabb2->getMinPos();
	const glm::vec3* maxPos2 = aabb2->getMaxPos();


	return (maxPos1->x >= minPos2->x &&
		minPos1->x <= maxPos2->x &&
		maxPos1->y >= minPos2->y &&
		minPos1->y <= maxPos2->y &&
		maxPos1->z >= minPos2->z &&
		minPos1->z <= maxPos2->z);
}

void CollisionHandler::updateSpherePos()
{
	int sphereColliderSize = this->sphereColliders.size();

	for (unsigned int i = 0; i < sphereColliderSize; i++) // updatera positionen
	{
		sphereColliders[i]->setPos(allTransforms[sphereColliders[i]->getIDTransform()].getPos());
	}
}

void CollisionHandler::updateAabbPos()
{
	int aabbColliderSize = this->aabbColliders.size();

	for (unsigned int i = 0; i < aabbColliderSize; i++) // updatera positionen
	{
		aabbColliders[i]->setPos(allTransforms[aabbColliders[i]->getIDTransform()].getPos());
	}
}