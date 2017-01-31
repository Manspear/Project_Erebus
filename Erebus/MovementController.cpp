#include "MovementController.h"

MovementController::MovementController() 
	: transform(nullptr), collisionLayer(nullptr), heightmap(nullptr)
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

void MovementController::update()
{
	assert( transform && heightmap && collisionLayer && layerID >= 0 );
	CollisionHandler collisionHandler;

	glm::vec3 lookDirection = glm::normalize(transform->getLookAt());
	glm::vec3 moveFinal = lookDirection * movement.z;
	moveFinal += glm::cross({ 0, 1, 0 }, lookDirection) * movement.x; // get right axis and move

	glm::vec3 pos = transform->getPos();
	glm::vec3 newPos = pos + moveFinal;

	float height = heightmap->getPos( newPos.x, newPos.z );
	newPos.y = height;

	// TODO: wall collision
	std::vector<HitBox*>* colliders = collisionLayer->getAllColliders( 1 ); // HARDCODAT HÄR TA BORT MIG HEEEEEEEEEEEEEEEEEEEEEEEEERP
	
	/*this->hitbox->setPos(newPos); // move hitbox

	bool herro = this->checkCollision(colliders); // Check collision against all the walls

	if (herro) // if our new position results in a collision
	{

		newPos = pos;
	}*/

	//NEW PLAN
	// Flytta din egen hitbox
	// Sortera alla hitboxarna till sin riktiga klass
	// ha en collisionHandler och kör checkAnycollision
	// Om vi tar i något så flyttar vi tillbaka
	// Behöver nytt sätt att kolla collision, vi vill bara ha en bool
	// amazing

	glm::vec3 dif = newPos - pos;
	glm::vec3 newXPos = pos + glm::vec3( dif.x, 0.0f, 0.0f );
	glm::vec3 newZPos = pos + glm::vec3( 0.0f, 0.0f, dif.z );
	glm::vec3 finalPos = pos;
	finalPos.y = height;

	this->hitbox->setPos(newXPos); // move hitbox

	bool herro = this->checkCollision(colliders); // Check collision against all the walls

	if (!herro) // if our new position results in a collision
	{
		finalPos.x = newXPos.x;
	}

	this->hitbox->setPos(newZPos); // move hitbox

	herro = this->checkCollision(colliders); // Check collision against all the walls

	if (!herro) // if our new position results in a collision
	{
		finalPos.z = newZPos.z;
	}

	//Kolla om vi har någon kollision
	//Har vi någon kollision så kolla om det är med någon vägg
	// är det med någon vägg så gå inte dit
	//Laters adda slide också

	// Collision on x axis

	// Collision on y axis

	// Collision on z axis

	
	transform->setPos(finalPos);
	this->movement = glm::vec3();
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
	std::vector<SphereCollider*> sphereColliders;
	std::vector<AABBCollider*> aabbColliders;
	std::vector<OBBCollider*> obbColliders;
	for (size_t i = 0; i < walls->size(); i++) // sort hitboxes in correct vectors
	{
		HitBox* temp = walls->at(i);
		if (temp->isAabbCollider())
			aabbColliders.push_back(static_cast<AABBCollider*>(temp));
		if (temp->isSphereCollider())
			sphereColliders.push_back(static_cast<SphereCollider*>(temp));
		if (temp->isObbCollider())
			obbColliders.push_back(static_cast<OBBCollider*>(temp));
	}

	if (this->myCollisionHandler->checkAnyCollisionBoolNoSave(this->hitbox, &sphereColliders)) // if we collide with any spheres
		return true;
	if (this->myCollisionHandler->checkAnyCollisionBoolNoSave(this->hitbox, &aabbColliders)) // if we collide with any AABBColliders
		return true;
	if (this->myCollisionHandler->checkAnyCollisionBoolNoSave(this->hitbox, &obbColliders)) // if we collide with any OBBColliders
		return true;

	return false;
}
