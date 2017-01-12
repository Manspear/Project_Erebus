#pragma once
#include "SphereCollider.h"
#include "AABBCollider.h"
#include <vector>
#include "Transform.h"
#include "CollisionLayers.h"
#include "Debug.h"
#include "OBBCollider.h"
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
	void addHitbox(OBBCollider* obb);
	void addHitbox(SphereCollider* sphere, int layer);
	void addHitbox(AABBCollider* aabb, int layer);
	void addHitbox(OBBCollider* obb, int layer);
	void addRay(RayCollider* ray);
	void addRay(RayCollider* ray, int layer);

	// Collision checks
	void checkCollisions();
	void checkSphereToSphereCollisions(std::vector<SphereCollider*>* colliders); // check against itself
	void checkSphereToSphereCollisions(std::vector<SphereCollider*>* colliders1, std::vector<SphereCollider*>* colliders2);
	void checkSphereToAabbCollisions(std::vector<SphereCollider*>* colliders1, std::vector<AABBCollider*>* colliders2);
	void checkAabbToAabbCollisions(std::vector<AABBCollider*>* colliders); // check against itself
	void checkAabbToAabbCollisions(std::vector<AABBCollider*>* colliders1, std::vector<AABBCollider*>* colliders2); 
	void checkObbToObbCollisions(std::vector<OBBCollider*>* colliders); // check against itself
	void checkObbToObbCollisions(std::vector<OBBCollider*>* colliders1, std::vector<OBBCollider*>* colliders2);
	void checkObbToAabbCollisions(std::vector<OBBCollider*>* colliders1, std::vector<AABBCollider*>* colliders2);
	void checkObbToSphereCollisions(std::vector<OBBCollider*>* colliders1, std::vector<SphereCollider*>* colliders2);
	template <typename T, typename U>
	void checkAnyCollision(std::vector<T*>* colliders1, std::vector<U*>* colliders2);
	template <typename T>
	void checkAnyCollision(std::vector<T*>* colliders);
	//Rays
	void checkRayToAabbCollisions(std::vector<RayCollider*>* colliders1, std::vector<AABBCollider*>* colliders2);
	void checkRayToSphereCollisions(std::vector<RayCollider*>* colliders1, std::vector<SphereCollider*>* colliders2);
	void checkRayToObbCollisions(std::vector<RayCollider*>* colliders1, std::vector<OBBCollider*>* colliders2);

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
	std::vector<OBBCollider*> obbColliders;
	std::vector<HitBox*> allColliders;
	std::vector<RayCollider*> rayColliders;
	CollisionLayers* collisionLayers;
	CollisionChecker collisionChecker;

	Debug* debugger;
	glm::vec3 colors[64]; // 64 colors to use on hitbox layers

	static unsigned int hitboxID;
	static void incrementHitboxID();
	void initializeColors();
};
