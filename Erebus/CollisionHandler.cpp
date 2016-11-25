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
	//kolla alla aabb mot alla andra aabb
	// kolla alla spheres mot alla spheres
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

	for (unsigned int i = 0; i < sphereColliderSize; i++)
	{
		for (unsigned int k = i; k < sphereColliderSize; k++)
		{
			bool hit = false;
			hit = sphereColliders[i]->sphereToSphereCollision(sphereColliders[k]);
			if (hit) // Om hit spara
			{
				sphereColliders[i]->insertCollisionID(sphereColliders[k]->getID());
				sphereColliders[k]->insertCollisionID(sphereColliders[i]->getID());
			}
		}

	}

}
