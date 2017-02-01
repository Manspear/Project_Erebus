#pragma once

#include "CollisionHandler.h"
#include <iostream>

class MovementController
{
public:
	MovementController();
	~MovementController();

	void move( glm::vec3 distance );
	void update();

	//Setters
	void setHitbox( HitBox* hitbox );
	void setTransform( Transform* transform );
	void setCollisionLayer( CollisionLayers* layer, unsigned int id );
	void setHeightmap(HeightMap* heightmap);

private:
	HitBox* hitbox;
	Transform* transform;
	glm::vec3 movement;
	CollisionLayers* collisionLayer;
	CollisionHandler* myCollisionHandler;
	unsigned int layerID;
	Importer::HeightMap* heightmap;
	std::vector<HitBox*> playerCollidingWalls;
	glm::vec3 positionLastFrame;

	//Helper functions
	//Check if the player has collided with any of the ID:s that the walls have
	//If there is a collision or several we save this in playerCollidingWalls vector
	inline bool idCheck(std::vector<int>* player, std::vector<HitBox*>* walls);

	//Check collision, player vs all the walls and return bool
	bool checkCollision(std::vector<HitBox*>* walls);
};