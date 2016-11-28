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

void CollisionHandler::checkCollisions()
{
	//Cleara deras gamla collisions
	//kolla alla spheres mot alla spheres
	//kolla alla aabb mot alla andra aabb
	//KOlla alla spheres mot alla aabb
	int sphereColliderSize = this->sphereColliders.size();
	int aabbColliderSize = this->aabbColliders.size();

	for (unsigned int i = 0; i < sphereColliderSize; i++)
	{
		this->sphereColliders[i]->clearCollisionIDs();
	}

	for (unsigned int i = 0; i < aabbColliderSize; i++)
	{
		this->aabbColliders[i]->clearCollisionIDs();
	}

	if (sphereColliderSize > 0) // Kolla så sphere finns för att undvika infinity loop (size-1) = infinity loop
	{
		for (unsigned int i = 0; i < sphereColliderSize - 1; i++) // sphere mot sphere
		{
			for (unsigned int k = i + 1; k < sphereColliderSize; k++)
			{
				bool hit = false;
				hit = sphereColliders[i]->sphereToSphereCollision(sphereColliders[k]);
				if (hit)
				{
					sphereColliders[i]->insertCollisionID(sphereColliders[k]->getID());
					sphereColliders[k]->insertCollisionID(sphereColliders[i]->getID());
				}
			}
		}
	}


	if (aabbColliderSize > 0) // undvik infinity loop
	{
		for (unsigned int i = 0; i < aabbColliderSize - 1; i++) // aabb mot aabb
		{
			for (unsigned int k = i + 1; k <aabbColliderSize; k++)
			{
				bool hit = false;
				hit = aabbColliders[i]->AabbToAabb(aabbColliders[k]);

				if (hit)
				{
					aabbColliders[i]->insertCollisionID(aabbColliders[k]->getID());
					aabbColliders[k]->insertCollisionID(aabbColliders[i]->getID());
				}
			}
		}
	}


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
