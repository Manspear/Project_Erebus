#pragma once
#include "SphereCollider.h"
#include "AABBCollider.h"
#include <vector>
#include "Transform.h"
#include "CollisionLayers.h"

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
	void checkSphereToSphereCollisions();
	void checkSphereToSphereCollisions(std::vector<SphereCollider*>* colliders); // check against itself
	void checkSphereToSphereCollisions(std::vector<SphereCollider*>* colliders1, std::vector<SphereCollider*>* colliders2); // check against the other vector
	void checkAabbToAaabbCollisions();
	void checkAabbToAaabbCollisions(std::vector<AABBCollider*>* colliders);
	void checkAabbToAaabbCollisions(std::vector<AABBCollider*>* colliders1, std::vector<AABBCollider*>* colliders2);
	void checkSphereToAabbCollisions();

	void updateSpherePos();
	void updateAabbPos();

	void deleteAllOldCollisions();
	bool deleteHitbox(unsigned int ID);

	void setTransforms( Transform* transforms );

	CollisionLayers* getCollisionLayers();

	//CollisionLayerPassThrough functions

	void setLayerCollisionMatrix(bool** layerMatrix, unsigned int layerMatrixSize);
	//change if two layers can collide in the layerMatrix
	void setLayerCollisionMatrix(int layer1, int layer2, bool canCollide);
	

private:
	Transform* transforms;
	std::vector<SphereCollider*> sphereColliders;
	std::vector<AABBCollider*> aabbColliders;

	bool sphereToSphereCollision(SphereCollider* sphere1, SphereCollider* sphere2);
	bool aabbToAabbCollision(AABBCollider* aabb1, AABBCollider* aabb2);
	static unsigned int hitboxID;
	static void incrementHitboxID();

	CollisionLayers* collisionLayers;

	int counter = 0;
};

