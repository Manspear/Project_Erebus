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
	~CollisionHandler();
	void addHitbox(SphereCollider* sphere);
	void addHitbox(AABBCollider* aabb);

	void checkCollisions();
	void checkSphereToSphereCollisions();
	void checkAabbToAaabbCollisions();
	void checkSphereToAabbCollisions();

	void updateSpherePos();
	void updateAabbPos();

	void deleteAllOldCollisions();
	bool deleteHitbox(unsigned int ID);

	void setTransforms( Transform* transforms );
	

private:
	Transform* transforms;
	std::vector<SphereCollider*> sphereColliders;
	std::vector<AABBCollider*> aabbColliders;

	bool sphereToSphereCollision(SphereCollider* sphere1, SphereCollider* sphere2);
	bool aabbToAabbCollision(AABBCollider* aabb1, AABBCollider* aabb2);
	static unsigned int hitboxID;
	static void incrementHitboxID();

	CollisionLayers* collisionLayers;
};

