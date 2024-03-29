#pragma once
#include "SphereCollider.h"
#include "AABBCollider.h"
#include <vector>
#include "CollisionLayers.h"
#include "OBBCollider.h"
#include "CollisionChecker.h"
#include <sstream>

namespace Collisions
{
	class CollisionHandler
	{

	public:
		COLLISIONS_EXPORTS CollisionHandler();
		COLLISIONS_EXPORTS CollisionHandler(int layers);
		COLLISIONS_EXPORTS ~CollisionHandler();
		COLLISIONS_EXPORTS void addHitbox(SphereCollider* sphere);
		COLLISIONS_EXPORTS void addHitbox(AABBCollider* aabb);
		COLLISIONS_EXPORTS void addHitbox(OBBCollider* obb);
		COLLISIONS_EXPORTS void addHitbox(SphereCollider* sphere, int layer);
		COLLISIONS_EXPORTS void addHitbox(AABBCollider* aabb, int layer);
		COLLISIONS_EXPORTS void addHitbox(OBBCollider* obb, int layer);
		COLLISIONS_EXPORTS void addHitbox(HitBox* hitbox, int layer);
		COLLISIONS_EXPORTS void addRay(RayCollider* ray);
		COLLISIONS_EXPORTS void addRay(RayCollider* ray, int layer);

		// Collision check
		COLLISIONS_EXPORTS void checkCollisions();
		COLLISIONS_EXPORTS bool checkCollisionsBetweenHitboxAndLayer(HitBox* hitbox, int layer);

		//delete
		COLLISIONS_EXPORTS void deleteAllOldCollisions();
		COLLISIONS_EXPORTS bool deleteHitbox(unsigned int ID);

		//setters
		COLLISIONS_EXPORTS void setEnabled(bool enabled);
		COLLISIONS_EXPORTS void setHardcodedSettings();
		COLLISIONS_EXPORTS void setLayerCollisionMatrix(bool** layerMatrix, unsigned int layerMatrixSize);//CollisionLayerPassThrough functions
		COLLISIONS_EXPORTS void setLayerCollisionMatrix(int layer1, int layer2, bool canCollide);//change if two layers can collide in the layerMatrix

		//getters
		COLLISIONS_EXPORTS std::string getCollisionText();
		COLLISIONS_EXPORTS CollisionLayers* getCollisionLayers() const;
		COLLISIONS_EXPORTS std::vector<HitBox*>* getAllHitboxes();
		COLLISIONS_EXPORTS std::vector<RayCollider*>* getRayColliders();
		COLLISIONS_EXPORTS const std::vector<int>& getAllIDsFromLayer(int layer);

		COLLISIONS_EXPORTS void deactiveteAllHitboxes();
		COLLISIONS_EXPORTS void activeteAllHitboxes();

		COLLISIONS_EXPORTS void printCollisions();

		COLLISIONS_EXPORTS void reset();

		COLLISIONS_EXPORTS bool isHitboxCollidingWithLayer(HitBox* hitbox, int layer);

	private:
		std::vector<SphereCollider*> sphereColliders;
		std::vector<AABBCollider*> aabbColliders;
		std::vector<OBBCollider*> obbColliders;
		std::vector<HitBox*> allColliders;
		std::vector<RayCollider*> rayColliders;
		CollisionLayers* collisionLayers;
		CollisionChecker collisionChecker;
		std::vector<std::vector<int>>* leafHitboxIDSaver;

		static unsigned int hitboxID;
		static void incrementHitboxID();
		bool enabled = true;
		const int DEFAULT_LAYER_AMOUNT = 5;
		const int DEFAULT_LAYER = 0;
		const int RESERVE_AMOUNT = 200;

		void recursiveSetID(HitBox* hitbox, int layer);
		int layerAmount;



	public: // This is used by movementController
		template <typename T, typename U>
		bool checkAnyCollisionBoolNoSave(T collider, std::vector<U*>* colliders, std::vector<glm::vec3>& hitNormals, bool usingNormals = true) // this check dont save any collision but simpy return a bool
		{
			// Antingen har barnen inga fler barn, d� kollar vi kollision. Annars kollar vi kollision mot dens barn
			bool hit = false;
			U* tempCollider = nullptr;
			for (size_t i = 0; i < colliders->size(); i++)
			{
				tempCollider = colliders->operator[](i);
				if (tempCollider->children == nullptr) // if hitbox dont have children
				{
					bool tempHit = false;
					if (usingNormals)
						tempHit = this->collisionChecker.collisionCheckNormal(collider, tempCollider, hitNormals, true); // only save normals if u are the leaf child
					else
						tempHit = this->collisionChecker.collisionCheck(collider, tempCollider);

					if (tempHit) // if we hit something hit is true, and keep checking
					{
						hit = true;
					}

				}
				else // the hitbox have children
				{
					bool tempHit = false;
					tempHit = this->collisionChecker.collisionCheckNormal(collider, tempCollider, hitNormals, false); // dont save normals if u have children
					if (tempHit) // if you collide with parent check collision with children
						if (checkAnyCollisionBoolNoSave(collider, tempCollider->children, hitNormals, usingNormals))
							hit = true;
				}
			}
			return hit;
		}
		//////////////////////////////////////////////////// HERE STARTS TEMPLATE FUNCTIONS FOR COLLISIONS ////////////////////////////////////////////////////////////////
		template<typename T, typename U>
		void checkAnyCollision(std::vector<T*>* colliders1, std::vector<U*>* colliders2) // array vs array
		{
			size_t firstSize = colliders1->size();
			size_t secondSize = colliders2->size();
			T* firstTempCollider = nullptr;
			U* secondTempCollider = nullptr;
			bool hit = false;

			for (unsigned int i = 0; i < firstSize; i++)
			{
				firstTempCollider = colliders1->operator[](i);
				if (firstTempCollider->isActive()) // only check collision if hitbox is active
				{
					for (unsigned int k = 0; k < secondSize; k++)
					{
						secondTempCollider = colliders2->operator[](k);
						if (colliders2->operator[](k)->isActive()) // only check collision if hitbox is active
						{
							hit = false;
							hit = this->collisionChecker.collisionCheck(firstTempCollider, secondTempCollider);
							//If hit check collision with all the children
							// if any childrens collide, collision bool = true for parents
							// but dont save any ids of collision in parents

							if (hit)
							{
								if (firstTempCollider->children == nullptr && secondTempCollider->children == nullptr) // none have children
								{
									firstTempCollider->insertCollisionID(secondTempCollider->getID()); // save collision data
									secondTempCollider->insertCollisionID(firstTempCollider->getID());

									firstTempCollider->setAllParentCollision(true); // set all parent collision to true because atleast one of their children have a true collision
									secondTempCollider->setAllParentCollision(true); // true collision is colliding with something that does not have children
								}
								else if (firstTempCollider->children != nullptr && secondTempCollider->children != nullptr) // both have children
								{
									checkAnyCollision(firstTempCollider->children, secondTempCollider->children);
								}
								else // only one of them have children
								{
									if (firstTempCollider->children == nullptr) // first collider is the one without children
									{
										checkAnyCollision(firstTempCollider, secondTempCollider->children);
									}

									else // second collider is the one without children
									{
										checkAnyCollision(secondTempCollider, firstTempCollider->children);
									}
								}
							}
						}

					}
				}
			}
		}
		

		template<typename T>
		void checkAnyCollision(std::vector<T*>* colliders) // arrays vs itself
		{
			size_t colliderSize = colliders->size();
			T* firstTempCollider = nullptr;
			T* secondTempCollider = nullptr;
			bool hit = false;

			if (colliderSize > 0)
			{
				for (unsigned int i = 0; i < colliderSize - 1; i++)
				{
					firstTempCollider = colliders->operator[](i);
					if (firstTempCollider->isActive()) // only check collision if hitbox is active
					{
						for (unsigned int j = i + 1; j < colliderSize; j++)
						{
							secondTempCollider = colliders->operator[](j);
							if (secondTempCollider->isActive()) // only check collision if hitbox is active
							{
								hit = false;
								hit = this->collisionChecker.collisionCheck(firstTempCollider, secondTempCollider);

								if (hit)
								{
									if (firstTempCollider->children == nullptr && secondTempCollider->children == nullptr) // none have children
									{
										firstTempCollider->insertCollisionID(secondTempCollider->getID()); // save collision data
										secondTempCollider->insertCollisionID(firstTempCollider->getID());
										firstTempCollider->setAllParentCollision(true);
										secondTempCollider->setAllParentCollision(true);
									}
									else if (firstTempCollider->children != nullptr && secondTempCollider->children != nullptr) // both have children
									{
										checkAnyCollision(firstTempCollider->children, secondTempCollider->children);
									}
									else // only one of them have children
									{
										if (firstTempCollider->children == nullptr) // first collider is the one without children
										{
											checkAnyCollision(firstTempCollider, secondTempCollider->children);
										}

										else // second collider is the one without children
										{
											checkAnyCollision(secondTempCollider, firstTempCollider->children);
										}
									}
								}
							}
						}
					}
				}
			}
		}

		template<typename T, typename U>
		void checkAnyCollision(T collider, std::vector<U*>* colliders) // collider vs array
		{
			// Either the colliders dont have any more children, then we check collision, otherwise we check collision against their children.
			bool hit = false;
			U* tempCollider = nullptr;
			for (size_t i = 0; i < colliders->size(); i++)
			{
				tempCollider = colliders->operator[](i);
				if (tempCollider->children == nullptr) // if hitbox dont have children
				{
					hit = false;
					hit = this->collisionChecker.collisionCheck(collider, tempCollider);

					if (hit) // save collision data and update parents
					{
						collider->insertCollisionID(tempCollider->getID());
						tempCollider->insertCollisionID(collider->getID());
						collider->setAllParentCollision(true);
						tempCollider->setAllParentCollision(true);
					}
				}
				else // the hitbox have children
				{
					hit = false;
					hit = this->collisionChecker.collisionCheck(collider, tempCollider);
					if (hit) // if you collide with parent check collision with children
						checkAnyCollision(collider, tempCollider->children);
				}

			}

		}
		//////////////////////////////////////////////////// HERE ENDS TEMPLATE FUNCTIONS FOR COLLISIONS ////////////////////////////////////////////////////////////////

	};


	

}

