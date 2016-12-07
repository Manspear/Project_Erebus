#pragma once
#include "AABBCollider.h"
#include "SphereCollider.h"
#include <vector>
class CollisionLayers
{
public:
	CollisionLayers(int size);
	~CollisionLayers();
	void addHitbox(AABBCollider* aabbCollider);
	void addHitbox(SphereCollider* sphereCollider);

	void addHitbox(AABBCollider* aabbCollider, unsigned int layer);
	void addHitbox(SphereCollider* sphereCollider, unsigned int layer);

private:
	bool** layerMatrix; // which layers may collide with each other
	bool** collisionCheckedMatrix; // which layers have collided this frame - used for optimization
	std::vector<std::vector<AABBCollider*>> aabbColliders; // aabbColliders[0] holds a vector with all aabbColliders in layer 0
	std::vector<std::vector<SphereCollider*>> sphereColliders;
	unsigned int layerMatrixSize;

	void resetCollisionCheckedMatrix();
};

