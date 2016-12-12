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

	std::vector<SphereCollider*>* getSphereColliders(int layer);
	std::vector<AABBCollider*>* getAABBColliders(int layer);

	void checkLayer(int layer1,int layer2);
	void resetLayerCollisionCheckedMatrix();
	bool deleteHitbox(unsigned int ID);

	//return a vector with all the layers that this layer will collide with
	std::vector<int> getLayerCollisions(int layer) const; 

	// returns a vector with all the layers that this layer have not yet collided with but should
	std::vector<int> getUncheckedLayerCollisions(int layer) const; 
	bool getIsLayerChecked(int layer1, int layer2) const;
	unsigned int getLayerMatrixSize();

	void setLayerCollisionMatrix(bool** layerMatrix, unsigned int layerMatrixSize);
	//change if two layers can collide in the layerMatrix
	void setLayerCollisionMatrix(int layer1, int layer2, bool canCollide);

private:
	bool** layerMatrix; // which layers may collide with each other
	bool** collisionCheckedMatrix; // which layers have collided this frame - used for optimization
	std::vector<std::vector<AABBCollider*>> aabbColliders; // aabbColliders[0] holds a vector with all aabbColliders in layer 0
	std::vector<std::vector<SphereCollider*>> sphereColliders;
	unsigned int layerMatrixSize;
	void deleteLayerCollisionMatrices();
	void createCollisionCheckedMatrix(int size);
};

