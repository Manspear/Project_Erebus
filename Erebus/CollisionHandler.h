#pragma once
#include "SphereCollider.h"
#include "AABBCollider.h"
#include <vector>
#include "Transform.h"
#include "CollisionLayers.h"
#include "Debug.h"
#include "OBBColllider.h"
#include "CollisionChecker.h"

//extern Transform* allTransforms;

/*
	Ta bort hitboxes med ID
	delete allt här?

*/
class CollisionHandler
{
	
public:
	CollisionHandler();
	CollisionHandler(int layers);
	~CollisionHandler();
	void addHitbox(SphereCollider* sphere);
	void addHitbox(AABBCollider* aabb);
	void addHitbox(SphereCollider* sphere, int layer);
	void addHitbox(AABBCollider* aabb, int layer);

	void checkCollisions();
	void checkSphereToSphereCollisions(std::vector<SphereCollider*>* colliders); // check against itself
	void checkSphereToSphereCollisions(std::vector<SphereCollider*>* colliders1, std::vector<SphereCollider*>* colliders2);
	void checkAabbToAabbCollisions(std::vector<AABBCollider*>* colliders); // check against itself
	void checkAabbToAabbCollisions(std::vector<AABBCollider*>* colliders1, std::vector<AABBCollider*>* colliders2); 
	void checkSphereToAabbCollisions(std::vector<SphereCollider*>* colliders1, std::vector<AABBCollider*>* colliders2);

	void updateAllHitboxPos();
	void updateSpherePos();
	void updateAabbPos();

	void deleteAllOldCollisions();
	bool deleteHitbox(unsigned int ID);

	void setTransforms( Transform* transforms );
	void setDebugger(Debug* debugger);

	CollisionLayers* getCollisionLayers();

	//CollisionLayerPassThrough functions
	void setLayerCollisionMatrix(bool** layerMatrix, unsigned int layerMatrixSize);

	//change if two layers can collide in the layerMatrix
	void setLayerCollisionMatrix(int layer1, int layer2, bool canCollide);

	void printCollisions();

	void drawHitboxes();
	

private:
	Transform* transforms;
	std::vector<SphereCollider*> sphereColliders;
	std::vector<AABBCollider*> aabbColliders;
	std::vector<HitBox*> allColliders;
	CollisionLayers* collisionLayers;
	CollisionChecker collisionChecker;

	Debug* debugger;
	glm::vec3 colors[64]; // 64 colors to use on hitbox layers

	static unsigned int hitboxID;
	static void incrementHitboxID();
	void initializeColors();
};

