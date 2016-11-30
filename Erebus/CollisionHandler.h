#pragma once
#include "SphereCollider.h"
#include "AABBCollider.h"
#include "AABBSquareCollider.h"
#include <vector>
#include "Transform.h"

extern Transform* allTransforms;
class CollisionHandler
{
public:
	CollisionHandler();
	~CollisionHandler();
	void addHitbox(SphereCollider* sphere);
	void addHitbox(AABBCollider* aabb);
	void addHitbox(AABBSquareCollider* aabb);
	void checkCollisions();
	void checkSphereCollisions();

private:
	std::vector<SphereCollider*> sphereColliders;
	std::vector<AABBCollider*> aabbColliders;
	std::vector<AABBSquareCollider*> aabbSquareColliders;
	bool sphereToSphereCollision(SphereCollider* sphere1, SphereCollider* sphere2);
	bool aabbToAabbCollision(AABBCollider* aabb1, AABBCollider* aabb2);
};

