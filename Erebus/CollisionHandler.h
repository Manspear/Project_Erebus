#pragma once
#include "SphereCollider.h"
#include "AABBCollider.h"
#include <vector>
#include "Transform.h"
#include "CollisionLayers.h"
#include "Debug.h"

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
	void checkSphereToSphereCollisions(std::vector<SphereCollider*>* colliders1, std::vector<SphereCollider*>* colliders2); // check against the other vector
	void checkAabbToAabbCollisions(std::vector<AABBCollider*>* colliders); // check against itself
	void checkAabbToAabbCollisions(std::vector<AABBCollider*>* colliders1, std::vector<AABBCollider*>* colliders2); // check against the other vector
	void checkSphereToAabbCollisions(std::vector<SphereCollider*>* colliders1, std::vector<AABBCollider*>* colliders2);

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
	CollisionLayers* collisionLayers;

	//Counters
	int sphereCollisionCounter = 0;
	int aabbCollisionCounter = 0;
	int sphereToAabbCollisionCounter = 0;

	Debug* debugger;
	glm::vec3 colors[64]; // 64 colors to use on hitbox layers

	bool sphereToSphereCollision(SphereCollider* sphere1, SphereCollider* sphere2); // http://www.miguelcasillas.com/?p=9
	bool aabbToAabbCollision(AABBCollider* aabb1, AABBCollider* aabb2); // https://developer.mozilla.org/en-US/docs/Games/Techniques/3D_collision_detection
	bool sphereToAabbCollision(SphereCollider* sphere, AABBCollider* aabb); // https://studiofreya.com/3d-math-and-physics/sphere-vs-aabb-collision-detection-test/

	//helper functions
	float closestDistanceAabbToPoint(const float& point, const float aabbMin, const float aabbMax);
	float SquaredDistancePointToAabb(AABBCollider* aabb, SphereCollider* sphere);

	static unsigned int hitboxID;
	static void incrementHitboxID();
	void initializeColors();
};

