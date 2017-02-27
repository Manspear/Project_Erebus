#pragma once
#include "AABBCollider.h"
#include "SphereCollider.h"
#include "OBBCollider.h"
#include "RayCollider.h"
#include <vector>

namespace Collisions
{
	class CollisionLayers
	{
	public:
		COLLISIONS_EXPORTS CollisionLayers(int size);
		COLLISIONS_EXPORTS ~CollisionLayers();
		COLLISIONS_EXPORTS void addHitbox(AABBCollider* aabbCollider);
		COLLISIONS_EXPORTS void addHitbox(SphereCollider* sphereCollider);
		COLLISIONS_EXPORTS void addHitbox(AABBCollider* aabbCollider, unsigned int layer);
		COLLISIONS_EXPORTS void addHitbox(SphereCollider* sphereCollider, unsigned int layer);
		COLLISIONS_EXPORTS void addHitbox(OBBCollider* obbCollider);
		COLLISIONS_EXPORTS void addHitbox(OBBCollider* obbCollider, unsigned int layer);
		COLLISIONS_EXPORTS void addRay(RayCollider* ray);
		COLLISIONS_EXPORTS void addRay(RayCollider* ray, unsigned int layer);

		COLLISIONS_EXPORTS std::vector<HitBox*>* getAllColliders(unsigned int layer);
		COLLISIONS_EXPORTS std::vector<SphereCollider*>* getSphereColliders(unsigned int layer);
		COLLISIONS_EXPORTS std::vector<AABBCollider*>* getAABBColliders(unsigned int layer);
		COLLISIONS_EXPORTS std::vector<OBBCollider*>* getOBBColliders(unsigned int layer);
		COLLISIONS_EXPORTS std::vector<RayCollider*>* getRayColliders(unsigned int layer);

		COLLISIONS_EXPORTS void checkLayer(int layer1, int layer2);
		COLLISIONS_EXPORTS void resetLayerCollisionCheckedMatrix();
		COLLISIONS_EXPORTS bool deleteHitbox(unsigned int ID);

		//return a vector with all the layers that this layer will collide with
		COLLISIONS_EXPORTS std::vector<int> getLayerCollisions(int layer) const;

		// returns a vector with all the layers that this layer have not yet collided with but should
		COLLISIONS_EXPORTS std::vector<int> getUncheckedLayerCollisions(int layer) const;
		COLLISIONS_EXPORTS bool getIsLayerChecked(int layer1, int layer2) const;
		COLLISIONS_EXPORTS unsigned int getLayerMatrixSize();

		COLLISIONS_EXPORTS void setLayerCollisionMatrix(bool** layerMatrix, unsigned int layerMatrixSize);
		//change if two layers can collide in the layerMatrix
		COLLISIONS_EXPORTS void setLayerCollisionMatrix(int layer1, int layer2, bool canCollide);

	private:
		bool** layerMatrix; // which layers may collide with each other
		bool** collisionCheckedMatrix; // which layers have collided this frame
		std::vector<std::vector<HitBox*>> allColliders;
		std::vector<std::vector<AABBCollider*>> aabbColliders; // aabbColliders[0] holds a vector with all aabbColliders in layer 0
		std::vector<std::vector<SphereCollider*>> sphereColliders;
		std::vector<std::vector<OBBCollider*>> obbColliders;
		std::vector<std::vector<RayCollider*>> rayColliders;
		unsigned int layerMatrixSize;
		void deleteLayerCollisionMatrices();
		void createCollisionCheckedMatrix(int size);
	};

}

