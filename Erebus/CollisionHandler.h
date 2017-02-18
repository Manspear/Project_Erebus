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
	void addHitbox(HitBox* hitbox, int layer);
	void addRay(RayCollider* ray);
	void addRay(RayCollider* ray, int layer);

	// Collision checks
	void checkCollisions();

	template <typename T, typename U>
	void checkAnyCollision(std::vector<T*>* colliders1, std::vector<U*>* colliders2); // 2 arrays collision against eachother

	template <typename T>
	void checkAnyCollision(std::vector<T*>* colliders); // one array against itself

	template <typename T, typename U>
	void checkAnyCollision(T collider, std::vector<U*>* colliders); // Single hitbox vs array of hitboxes // Hitbox vs children of other hitbox

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
	const std::vector<int>& getIDFromLayer(int layer);

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
	std::vector<std::vector<int>>* hitboxIDSaver;
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
	const int DEFAULT_LAYER_AMOUNT = 5;
	const int DEFAULT_LAYER = 0;

	void recursiveSetID(HitBox* hitbox, int layer);



public: // This is used by movementController
	template <typename T, typename U>
	bool checkAnyCollisionBoolNoSave(T collider, std::vector<U*>* colliders, std::vector<glm::vec3>& hitNormals) // this check dont save any collision but simpy return a bool
	{
		// Antingen har barnen inga fler barn, då kollar vi kollision. Annars kollar vi kollision mot dens barn
		bool hit = false;
		U* tempCollider = nullptr;
		for (size_t i = 0; i < colliders->size(); i++)
		{
			tempCollider = colliders->operator[](i);
			if (tempCollider->children == nullptr) // if hitbox dont have children
			{
				bool tempHit = false;
				tempHit = this->collisionChecker.collisionCheckNormal(collider, tempCollider, hitNormals,true); // only save normals if u are the leaf child
				if (tempHit) // if we hit something hit is true, and keep checking
				{
					hit = true;
				}
					
			}
			else // the hitbox have children
			{
				bool tempHit = false;
				tempHit = this->collisionChecker.collisionCheckNormal(collider, tempCollider, hitNormals,false); // dont save normals if u have children
				if (tempHit) // if you collide with parent check collision with children
					if (checkAnyCollisionBoolNoSave(collider, tempCollider->children, hitNormals))
						hit = true;
			}
		}
		return hit;
	}
};
