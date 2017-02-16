#include "CollisionUpdater.h"



CollisionUpdater::CollisionUpdater()
{
	this->collisionHandler = nullptr;
	this->transforms = nullptr;
}

CollisionUpdater::CollisionUpdater(Collisions::CollisionHandler * collisionHandler, Transform * transforms)
{
	this->collisionHandler = collisionHandler;
	this->transforms = transforms;
}


CollisionUpdater::~CollisionUpdater()
{
	// CollisionUpdater not expected to clean up transforms nor collisionHandler
}

void CollisionUpdater::setCollisionHandler(Collisions::CollisionHandler * collisionHandler)
{
	this->collisionHandler = collisionHandler;
}

void CollisionUpdater::setTransforms(Transform * transforms)
{
	this->transforms = transforms;
}

void CollisionUpdater::update()
{
	using namespace Collisions;
	std::vector<HitBox*>* allColliders = this->collisionHandler->getAllHitboxes();
	std::vector<RayCollider*>* rayColliders = this->collisionHandler->getRayColliders();
	size_t allColliderSize = allColliders->size();
	size_t rayColliderSize = rayColliders->size();

	for (size_t i = 0; i < allColliderSize; i++)
	{
		int idTransform = allColliders->operator[](i)->getIDTransform();
		if (idTransform >= 0)
			allColliders->operator[](i)->setPos(transforms[idTransform].getPos());
	}

	for (size_t i = 0; i < rayColliderSize; i++) // update rays also
	{
		int idTransform = rayColliders->operator[](i)->getIDTransform();
		if (idTransform >= 0)
			rayColliders->operator[](i)->setPosition(transforms[idTransform].getPos());
	}
}