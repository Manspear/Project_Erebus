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
	assert( transform && heightmap && collisionLayer && layerID >= 0 );

	glm::vec3 pos = transform->getPos();

	glm::vec3 newPos = pos + movement;

	float height = heightmap->getPos( newPos.x, newPos.z );
	newPos.y = height;

	// TODO: wall collision
	std::vector<HitBox*>* colliders = collisionLayer->getAllColliders( layerID );

	glm::vec3 dif = newPos - pos;
	glm::vec3 newXPos = pos + glm::vec3( newPos.x, 0.0f, 0.0f );
	glm::vec3 newYPos = pos + glm::vec3( 0.0f, newPos.y, 0.0f );
	glm::vec3 newZPos = pos + glm::vec3( 0.0f, 0.0f, newPos.z );

	// Collision on x axis

	// Collision on y axis

	// Collision on z axis

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

void MovementController::setCollisionLayer( CollisionLayers* layer, unsigned int id )
{
	collisionLayer = layer;
	layerID = id;
}

void MovementController::setHeightmap( HeightMap* hm )
{
	heightmap = hm;
}