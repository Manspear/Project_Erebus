#include "MovementController.h"

MovementController::MovementController()
{
}

MovementController::~MovementController()
{
}

void MovementController::move( glm::vec3 distance )
{
	movement += distance;
}

void MovementController::update()
{
	assert( transform && heightmap );

	glm::vec3 pos = transform->getPos();

	pos += movement;

	// TODO: heightmap collision
	float height = heightmap->getPos( pos.x, pos.z );
	pos.y = height;

	// TODO: wall collision

	transform->setPos( pos );
}

void MovementController::setHitbox( HitBox* hb )
{
	hitbox = hb;
}

void MovementController::setTransform( Transform* t )
{
	transform = t;
}

void MovementController::setCollisionLayer( CollisionLayers* layer )
{
	collisionLayer = layer;
}

void MovementController::setHeightmap( HeightMap* hm )
{
	heightmap = hm;
}