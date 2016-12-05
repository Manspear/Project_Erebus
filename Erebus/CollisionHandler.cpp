#include "CollisionHandler.h"


unsigned int CollisionHandler::hitboxID = 0;

CollisionHandler::CollisionHandler()
	: transforms( nullptr )
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
	sphere->setID(CollisionHandler::hitboxID);
	CollisionHandler::incrementHitboxID();

}

void CollisionHandler::addHitbox(AABBCollider * aabb)
{
	this->aabbColliders.push_back(aabb);
	aabb->setID(CollisionHandler::hitboxID);
	CollisionHandler::incrementHitboxID();

}

void CollisionHandler::addHitbox(AABBSquareCollider * aabb)
{
	this->aabbSquareColliders.push_back(aabb);
	aabb->setID(CollisionHandler::hitboxID);
	CollisionHandler::incrementHitboxID();

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
	this->updateAabbSquarePos();

	this->checkSphereToSphereCollisions();
	this->checkAabbToAaabbCollisions();
	this->checkAabbSquareToAabbSquareCollisions();

	this->checkSphereToAabbCollisions();
	


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

void CollisionHandler::checkAabbSquareToAabbSquareCollisions()
{
	int aabbSquareColliderSize = this->aabbSquareColliders.size();

	if (aabbSquareColliderSize > 0) // undvik infinity loop
	{
		for (unsigned int i = 0; i < aabbSquareColliderSize - 1; i++) // aabbSquare mot aabbSquare
		{
			for (unsigned int k = i + 1; k < aabbSquareColliderSize; k++)
			{
				bool hit = false;
				hit = aabbSquareToAabbSquareCollision(aabbSquareColliders[i], aabbSquareColliders[k]);

				if (hit)
				{
					aabbSquareColliders[i]->insertCollisionID(aabbSquareColliders[k]->getID());
					aabbSquareColliders[k]->insertCollisionID(aabbSquareColliders[i]->getID());
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

bool CollisionHandler::aabbSquareToAabbSquareCollision(AABBSquareCollider * aabb1, AABBSquareCollider * aabb2)
{
	const glm::vec3* pos1 = aabb1->getPos();
	const glm::vec3* pos2 = aabb2->getPos();
	const float halfsize1 = aabb1->getHalfsize();
	const float halfsize2 = aabb2->getHalfsize();

	bool xOverlap = true;
	bool yOverlap = true;
	bool zOverlap = true;

	const float halfsizes = halfsize1 + halfsize2;

	if (glm::abs(pos1->x - pos2->x) > halfsizes)
		xOverlap =  false;
	if (glm::abs(pos1->y - pos2->y) > halfsizes)
		yOverlap = false;
	if (glm::abs(pos1->z - pos2->z) > halfsizes)
		zOverlap =  false;


	return xOverlap && yOverlap && zOverlap; // om alla 3 checks failar så har vi en collision
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
		unsigned int idTransform = sphereColliders[i]->getIDTransform();
		if (idTransform >= 0)
			sphereColliders[i]->setPos(transforms[idTransform].getPos());
	}
}

void CollisionHandler::updateAabbPos()
{
	int aabbColliderSize = this->aabbColliders.size();

	for (unsigned int i = 0; i < aabbColliderSize; i++) // updatera positionen
	{
		unsigned int idTransform = aabbColliders[i]->getIDTransform();
		if (idTransform >= 0)
			aabbColliders[i]->setPos(transforms[idTransform].getPos());
	}
}

void CollisionHandler::updateAabbSquarePos()
{
	int aabbColliderSize = this->aabbSquareColliders.size();

	for (unsigned int i = 0; i < aabbColliderSize; i++) // updatera positionen
	{
		unsigned int idTransform = aabbSquareColliders[i]->getIDTransform();
		if(idTransform >= 0)
			aabbSquareColliders[i]->setPos(transforms[idTransform].getPos());
	}
}

void CollisionHandler::deleteAllOldCollisions()
{
	int sphereColliderSize = this->sphereColliders.size();
	int aabbColliderSize = this->aabbColliders.size();
	int aabbSquareColliderSize = this->aabbSquareColliders.size();

	for (unsigned int i = 0; i < sphereColliderSize; i++) // sphere
	{
		this->sphereColliders[i]->clearCollisionIDs();
	}

	for (unsigned int i = 0; i < aabbColliderSize; i++) // aabb
	{
		aabbColliders[i]->clearCollisionIDs();
	}

	for (unsigned i = 0; i < aabbSquareColliderSize; i++)
	{
		aabbSquareColliders[i]->clearCollisionIDs();
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