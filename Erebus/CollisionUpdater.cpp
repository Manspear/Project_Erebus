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
}
