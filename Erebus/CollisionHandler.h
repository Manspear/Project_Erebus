#pragma once
#include "SphereCollider.h"
#include "AABBCollider.h"
#include "AABBSquareCollider.h"
#include <vector>
#include "Transform.h"

extern Transform* allTransforms;

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
	void addHitbox(AABBSquareCollider* aabb);

	void checkCollisions();
	void checkSphereToSphereCollisions();
	void checkAabbToAaabbCollisions();
	void checkSphereToAabbCollisions();
	void checkAabbSquareToAabbSquareCollisions();

	void updateSpherePos();
	void updateAabbPos();
	void updateAabbSquarePos();

	void deleteAllOldCollisions();
	bool deleteHitbox(unsigned int ID);
private:
	std::vector<SphereCollider*> sphereColliders;
	std::vector<AABBCollider*> aabbColliders;
	std::vector<AABBSquareCollider*> aabbSquareColliders;
	bool sphereToSphereCollision(SphereCollider* sphere1, SphereCollider* sphere2);
	bool aabbToAabbCollision(AABBCollider* aabb1, AABBCollider* aabb2);
	bool aabbSquareToAabbSquareCollision(AABBSquareCollider* aabb1, AABBSquareCollider* aabb2);
	static unsigned int hitboxID;
	static void incrementHitboxID();

};

