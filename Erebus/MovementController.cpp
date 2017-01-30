#include "MovementController.h"

MovementController::MovementController() : transform(nullptr), collisionLayer(nullptr)
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
	glm::vec3 pos = transform->getPos();

	pos += movement;

	// TODO: heightmap collision

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