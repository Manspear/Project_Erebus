#pragma once
#include "SphereCollider.h"
#include "AABBCollider.h"
#include <vector>
#include "Transform.h"
#include "CollisionLayers.h"
#include "Debug.h"
#include "OBBCollider.h"
#include "CollisionChecker.h"
#include "Gear.h"

//extern Transform* allTransforms;

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

	template <typename T, typename U>
	void checkAnyCollision(std::vector<T*>* colliders1, std::vector<U*>* colliders2); // 2 arrays collision against eachother

	template <typename T>
	void checkAnyCollision(std::vector<T*>* colliders); // one array against itself

	template <typename T, typename U>
	void checkAnyCollision(T collider, std::vector<U*>* colliders); // Single hitbox vs array of hitboxes

	template<typename T>
	void recursiveCollision(std::vector<T*>* colliders1, std::vector<T*>* colliders2);

	//Update
	//Update all hitboxes with corresponding positions in transform array
	void updateAllHitboxPos();
	void updateSpherePos();
	void updateAabbPos();

	//delete
	void deleteAllOldCollisions();
	bool deleteHitbox(unsigned int ID);

	//setters
	void setTransforms( Transform* transforms );
	void setDebugger(Debug* debugger);
	void setEnabled(bool enabled);

	//getters
	std::string getCollisionText();
	CollisionLayers* getCollisionLayers();

	//CollisionLayerPassThrough functions
	void setLayerCollisionMatrix(bool** layerMatrix, unsigned int layerMatrixSize);

	//change if two layers can collide in the layerMatrix
	void setLayerCollisionMatrix(int layer1, int layer2, bool canCollide);

	void deactiveteAllHitboxes();
	void activeteAllHitboxes();

	void printCollisions();

	void drawHitboxes();
	void recursiveDraw(HitBox* hitbox,glm::vec3 color);
	

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
	glm::vec3 childColor = glm::vec3(1,1,1);
	glm::vec3 deactivatedColor = glm::vec3(0, 0, 0);

	static unsigned int hitboxID;
	static void incrementHitboxID();
	void initializeColors();
	bool enabled = true;
};
