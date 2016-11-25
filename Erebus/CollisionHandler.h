#pragma once
#include "SphereCollider.h"
#include "AABBCollider.h"
#include <vector>
class CollisionHandler
{
public:
	CollisionHandler();
	~CollisionHandler();
	void addHitbox(SphereCollider* sphere);
	void addHitbox(AABBCollider* aabb);
	void checkCollisions();

private:
	std::vector<SphereCollider*> sphereColliders;
	std::vector<AABBCollider*> aabbColliders;
};

