#pragma once
#include "CollisionHandler.h"
#include "Transform.h"
#include "TransformHandler.h"

class CollisionUpdater
{
public:
	CollisionUpdater();
	CollisionUpdater(Collisions::CollisionHandler* collisionHandler, TransformHandler* transformHandler);
	~CollisionUpdater();

	//setters
	void setCollisionHandler(Collisions::CollisionHandler* collisionHandler);

	void update();

private:
	Collisions::CollisionHandler* collisionHandler;
	TransformHandler* transformHandler;
};

