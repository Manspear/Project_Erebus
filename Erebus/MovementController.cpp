#include "MovementController.h"

MovementController::MovementController() 
	//: transform(nullptr), collisionLayer(nullptr), heightmap(nullptr)
	: transformHandler( nullptr ), collisionLayer( nullptr ), heightmap( nullptr )
{
	this->myCollisionHandler = new CollisionHandler();
}

MovementController::~MovementController()
{
	delete this->myCollisionHandler;
}

void MovementController::move( glm::vec3 distance )
{
	movement += distance;
}

void MovementController::moveOverride(glm::vec3 distance)
{
	movementOverride = distance;
}

void MovementController::update()
{
	//assert( transform && heightmap && collisionLayer && layerID >= 0 );
	assert( transformHandler && heightmap && collisionLayer && layerID >= 0 );

	TransformStruct* transform = transformHandler->getTransform( transformID );

	glm::vec3 lookDirection = glm::normalize(glm::vec3(transform->lookAt.x,0, transform->lookAt.z));
	glm::vec3 moveFinal = lookDirection * movement.z;
	moveFinal += glm::cross({ 0, 1, 0 }, lookDirection) * movement.x; // get right axis and move

	glm::vec3 pos = transform->pos;
	glm::vec3 newPos = pos + moveFinal;

	//float height = heightmap->getPos( newPos.x, newPos.z );
	float height = heightmap->getPos( pos.x, pos.z );
	newPos.y = height + PLAYER_Y_OFFSET;

	if (this->movementOverride != glm::vec3(0, 0, 0))
	{
		newPos.x = this->movementOverride.x;
		newPos.z = this->movementOverride.z;
		this->movementOverride = glm::vec3(0, 0, 0);
	}

	// TODO: wall collision
	std::vector<HitBox*>* colliders = collisionLayer->getAllColliders( this->layerID );

	glm::vec3 dif = newPos - pos;
	glm::vec3 newXPos = pos + glm::vec3( dif.x, 0.0f, 0.0f );
	glm::vec3 newZPos = pos + glm::vec3( 0.0f, 0.0f, dif.z );
	glm::vec3 finalPos = pos;
	finalPos.y = height;

	/*this->hitbox->setPos(newXPos); // move hitbox on X
	bool playerColliding = this->checkCollision(colliders); // Check collision against all the walls
	if (!playerColliding) // if our new position is safe
	{
		finalPos.x = newXPos.x;
	}
	this->hitbox->setPos(newZPos); // move hitbox on Z
	playerColliding = this->checkCollision(colliders); // Check collision against all the walls
	if (!playerColliding) // if our new position is safe
	{
		finalPos.z = newZPos.z;
	}*/

	hitbox->setPos( newPos );
	bool playerColliding = checkCollision(colliders);
	if(playerColliding)
	{
		glm::vec3 normalFinal;
		for (size_t i = 0; i < this->hitNormals.size(); i++) // add all the normals together
		{
			normalFinal += hitNormals[i];
		}
		if (normalFinal != glm::vec3(0, 0, 0)) // Do not divide by zero
			normalFinal = glm::normalize(normalFinal);

		glm::vec3 proj = glm::dot( dif, normalFinal) * normalFinal;
		glm::vec3 finalDif = dif - proj;

		finalPos = pos + finalDif;
		hitbox->setPos(finalPos);
		bool newPosCollision = checkCollision(colliders);
		if (newPosCollision)
			finalPos = pos;
	}
	else
		finalPos = newPos;

	transform->pos = finalPos;
	this->movement = glm::vec3();
	this->hitNormals.clear();
}

void MovementController::setHitbox( HitBox* hb )
{
	hitbox = hb;
}

/*void MovementController::setTransform( Transform* t )
{
	transform = t;
}*/

void MovementController::setTransforms( TransformHandler* handler, int id )
{
	transformHandler = handler;
	transformID = id;
}

void MovementController::setCollisionLayer( CollisionLayers* layer, unsigned int id )
{
	collisionLayer = layer;
	layerID = id;
}

void MovementController::setHeightmap(HeightMap * heightmap)
{
	this->heightmap = heightmap;
}

inline bool MovementController::idCheck(std::vector<int>* playerCollisions, std::vector<HitBox*>* walls)
{
	bool colliding = false;
	this->playerCollidingWalls.clear();
	for (size_t i = 0; i < playerCollisions->size(); i++) // For every collision the player have
	{
		for (size_t j = 0; j < walls->size(); j++)
		{
			if (playerCollisions->at(i) == walls->at(j)->getID()) // If player is colliding with a wall
			{
				this->playerCollidingWalls.push_back(walls->at(j)); // save the wall
				colliding = true;
			}
		}

	}
	return colliding;
}

bool MovementController::checkCollision(std::vector<HitBox*>* walls) // Check our hitbox vs all the walls
{
	bool collision = false;
	std::vector<SphereCollider*> sphereColliders;
	std::vector<AABBCollider*> aabbColliders;
	std::vector<OBBCollider*> obbColliders;
	for (size_t i = 0; i < walls->size(); i++) // sort hitboxes in correct vectors
	{
		HitBox* temp = walls->at(i);
		if (temp->isActive())
		{
			if (temp->isAabbCollider())
				aabbColliders.push_back(static_cast<AABBCollider*>(temp));
			if (temp->isSphereCollider())
				sphereColliders.push_back(static_cast<SphereCollider*>(temp));
			if (temp->isObbCollider())
				obbColliders.push_back(static_cast<OBBCollider*>(temp));
		}
	}

	if (this->myCollisionHandler->checkAnyCollisionBoolNoSave(this->hitbox, &sphereColliders, hitNormals)) // if we collide with any spheres
		collision = true;
	if (this->myCollisionHandler->checkAnyCollisionBoolNoSave(this->hitbox, &aabbColliders, hitNormals)) // if we collide with any AABBColliders
		collision = true;
	if (this->myCollisionHandler->checkAnyCollisionBoolNoSave(this->hitbox, &obbColliders, hitNormals)) // if we collide with any OBBColliders
		collision = true;

	return collision;
}
