#pragma once

#include "CollisionHandler.h"

class MovementController
{
public:
	MovementController();
	~MovementController();

	void move( glm::vec3 distance );
	void update();

	void setHitbox( HitBox* hitbox );
	void setTransform( Transform* transform );
	void setCollisionLayer( CollisionLayers* layer, unsigned int id );
	void setHeightmap( HeightMap* heightmap );

private:
	HitBox* hitbox;
	Transform* transform;
	glm::vec3 movement;
	CollisionLayers* collisionLayer;
	unsigned int layerID;
	Importer::HeightMap* heightmap;
};