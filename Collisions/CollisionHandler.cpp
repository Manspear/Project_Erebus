#include "CollisionHandler.h"

namespace Collisions
{
	unsigned int CollisionHandler::hitboxID = 0;

	CollisionHandler::CollisionHandler()
		//: transforms(nullptr)
	{
		this->sphereColliders.reserve(RESERVE_AMOUNT);
		this->aabbColliders.reserve(RESERVE_AMOUNT);

		this->collisionLayers = new CollisionLayers(DEFAULT_LAYER_AMOUNT);

		this->leafHitboxIDSaver = new std::vector<std::vector<int>>();
		this->leafHitboxIDSaver->resize(DEFAULT_LAYER_AMOUNT);

		this->layerAmount = DEFAULT_LAYER_AMOUNT;
	}

	CollisionHandler::CollisionHandler(int layers)
		//: transforms(nullptr)
	{
		this->sphereColliders.reserve(RESERVE_AMOUNT);
		this->aabbColliders.reserve(RESERVE_AMOUNT);


		this->leafHitboxIDSaver = new std::vector<std::vector<int>>();
		this->leafHitboxIDSaver->resize(layers);

		this->layerAmount = layers;

		this->collisionLayers = new CollisionLayers(layers);
	}



	CollisionHandler::~CollisionHandler()
	{
		delete this->collisionLayers;
		delete this->leafHitboxIDSaver;
	}

	void CollisionHandler::addHitbox(SphereCollider * sphere)
	{
		this->allColliders.push_back(sphere);
		this->sphereColliders.push_back(sphere);
		this->recursiveSetID(sphere, DEFAULT_LAYER);

		this->collisionLayers->addHitbox(sphere);

	}

	void CollisionHandler::addHitbox(AABBCollider * aabb)
	{
		this->allColliders.push_back(aabb);
		this->aabbColliders.push_back(aabb);
		this->recursiveSetID(aabb, DEFAULT_LAYER);

		this->collisionLayers->addHitbox(aabb);
	}

	void CollisionHandler::addHitbox(SphereCollider * sphere, int layer)
	{
		this->allColliders.push_back(sphere);
		this->sphereColliders.push_back(sphere);
		this->recursiveSetID(sphere, layer);

		this->collisionLayers->addHitbox(sphere, layer);
	}

	void CollisionHandler::addHitbox(AABBCollider * aabb, int layer)
	{
		this->allColliders.push_back(aabb);
		this->aabbColliders.push_back(aabb);
		this->recursiveSetID(aabb, layer);


		this->collisionLayers->addHitbox(aabb, layer);
	}

	void CollisionHandler::addHitbox(OBBCollider * obb)
	{
		this->allColliders.push_back(obb);
		this->obbColliders.push_back(obb);
		this->recursiveSetID(obb, DEFAULT_LAYER);

		this->collisionLayers->addHitbox(obb);
	}

	void CollisionHandler::addHitbox(OBBCollider * obb, int layer)
	{
		this->allColliders.push_back(obb);
		this->obbColliders.push_back(obb);
		this->recursiveSetID(obb, layer);

		this->collisionLayers->addHitbox(obb, layer);
	}

	void CollisionHandler::addHitbox(HitBox * hitbox, int layer)
	{
		if (hitbox->isSphereCollider())
			this->addHitbox(static_cast<SphereCollider*>(hitbox));
		if (hitbox->isObbCollider())
			this->addHitbox(static_cast<OBBCollider*>(hitbox));
		if (hitbox->isAabbCollider())
			this->addHitbox(static_cast<AABBCollider*>(hitbox));
		if (hitbox->isRayCollider())
			this->addRay(static_cast<RayCollider*>(hitbox));
	}

	void CollisionHandler::addRay(RayCollider * ray)
	{
		this->rayColliders.push_back(ray);

		this->recursiveSetID(ray, DEFAULT_LAYER);

		this->collisionLayers->addRay(ray);
	}

	void CollisionHandler::addRay(RayCollider * ray, int layer)
	{
		this->rayColliders.push_back(ray);

		this->recursiveSetID(ray, layer);

		this->collisionLayers->addRay(ray, layer);
	}

	void CollisionHandler::checkCollisions()
	{
		if (this->enabled) // If collisionHandler is enabled
		{
			//Cleara deras gamla collisions görs i varje check funktion
			this->deleteAllOldCollisions();

			//Updatera position
			//this->updateAllHitboxPos();

			this->collisionChecker.resetCounters();

			// ----------------------------------------------------
			std::vector<int> layerCollisionVector;
			std::vector<SphereCollider*>* firstTempSphereColliders = nullptr;
			std::vector<AABBCollider*>* firstTempAABBColliders = nullptr;
			std::vector<SphereCollider*>* secondTempSphereColliders = nullptr;
			std::vector<AABBCollider*>* secondTempAABBColliders = nullptr;
			std::vector<OBBCollider*>* firstTempOBBColliders = nullptr;
			std::vector<OBBCollider*>* secondTempOBBColliders = nullptr;
			std::vector<RayCollider*>* firstTempRayColliders = nullptr;
			std::vector<RayCollider*>* secondTempRayColliders = nullptr;
			int firstLayer = 0;
			int secondLayer = 0;
			this->sphereColliders;
			this->aabbColliders;

			for (unsigned int i = 0; i < this->collisionLayers->getLayerMatrixSize(); i++) // loop through rows(layers) of layer matrix
			{
				firstLayer = i;
				layerCollisionVector = this->collisionLayers->getUncheckedLayerCollisions(i); // get layers you should collide with but dont have

				firstTempSphereColliders = this->collisionLayers->getSphereColliders(i); // get hitboxes from layer
				firstTempAABBColliders = this->collisionLayers->getAABBColliders(i);
				firstTempOBBColliders = this->collisionLayers->getOBBColliders(i);
				firstTempRayColliders = this->collisionLayers->getRayColliders(i);

				for (unsigned int j = 0; j < layerCollisionVector.size(); j++) // for every layer you should collide with
				{
					secondLayer = layerCollisionVector[j]; // get the layer to collide with

					if (firstLayer != secondLayer) // check collision between two different layers
					{
						secondTempSphereColliders = this->collisionLayers->getSphereColliders(secondLayer); // get hitboxes from layer to collide with
						secondTempAABBColliders = this->collisionLayers->getAABBColliders(secondLayer);
						secondTempOBBColliders = this->collisionLayers->getOBBColliders(secondLayer);
						secondTempRayColliders = this->collisionLayers->getRayColliders(secondLayer);
						checkAnyCollision(firstTempSphereColliders, secondTempSphereColliders); // (sphere layer1) vs (sphere layer2)
						checkAnyCollision(firstTempAABBColliders, secondTempAABBColliders); // (AABB layer1) vs (AABB layer2)
						checkAnyCollision(firstTempSphereColliders, secondTempAABBColliders); // (SPHERE layer1) vs (AABB layer2)
						checkAnyCollision(secondTempSphereColliders, firstTempAABBColliders); // (AABB layer1) vs (SPHERE layer2)

						checkAnyCollision(firstTempOBBColliders, secondTempOBBColliders); // (obb layer1) vs (obb layer2)
						checkAnyCollision(firstTempOBBColliders, secondTempAABBColliders); // (obb layer1) vs (aabb layer2)
						checkAnyCollision(firstTempOBBColliders, secondTempSphereColliders); // (obb layer1) vs (sphere layer2)
						checkAnyCollision(secondTempOBBColliders, firstTempAABBColliders); // (obb layer2) vs (aabb layer1)
						checkAnyCollision(secondTempOBBColliders, firstTempSphereColliders); // (obb layer2) vs (sphere layer1)

						checkAnyCollision(firstTempRayColliders, secondTempAABBColliders); // (ray layer1) vs (aabb layer2)
						checkAnyCollision(firstTempRayColliders, secondTempSphereColliders); // (ray layer1) vs (sphere layer2)
						checkAnyCollision(firstTempRayColliders, secondTempOBBColliders); // (ray layer1) vs (obb layer2)
						checkAnyCollision(secondTempRayColliders, firstTempAABBColliders); // (ray layer2) vs (aabb layer1)
						checkAnyCollision(secondTempRayColliders, firstTempSphereColliders);// (ray layer2) vs (sphere layer1)
						checkAnyCollision(secondTempRayColliders, firstTempOBBColliders); // (ray layer2) vs (obb layer2)

					}

					else // check collision against your own layer
					{
						checkAnyCollision(firstTempSphereColliders);
						checkAnyCollision(firstTempAABBColliders);
						checkAnyCollision(firstTempOBBColliders);
						checkAnyCollision(firstTempSphereColliders, firstTempAABBColliders);
						checkAnyCollision(firstTempOBBColliders, firstTempAABBColliders);
						checkAnyCollision(firstTempOBBColliders, firstTempSphereColliders);

						checkAnyCollision(firstTempRayColliders, firstTempAABBColliders);
						checkAnyCollision(firstTempRayColliders, firstTempSphereColliders);
						checkAnyCollision(firstTempRayColliders, firstTempOBBColliders);
					}

					this->collisionLayers->checkLayer(i, layerCollisionVector[j]);
				}

			}

			this->collisionLayers->resetLayerCollisionCheckedMatrix();
		}

	}

	bool CollisionHandler::checkCollisionsBetweenHitboxAndLayer(HitBox * hitbox, int layer)
	{
		bool colliding = false;
		std::vector<SphereCollider*>* sphereColliders = this->collisionLayers->getSphereColliders(layer);
		std::vector<AABBCollider*>* aabbColliders = this->collisionLayers->getAABBColliders(layer);
		std::vector<OBBCollider*>* obbColliders = this->collisionLayers->getOBBColliders(layer);
		std::vector<RayCollider*>* rayColliders = this->collisionLayers->getRayColliders(layer);

		std::vector<glm::vec3> normals;
		this->allColliders;

		colliding = this->checkAnyCollisionBoolNoSave(hitbox, sphereColliders,normals);

		if(!colliding)
			colliding = this->checkAnyCollisionBoolNoSave(hitbox, aabbColliders, normals);
		if(!colliding)
			colliding = this->checkAnyCollisionBoolNoSave(hitbox, obbColliders, normals);
		if(!colliding)
			colliding = this->checkAnyCollisionBoolNoSave(hitbox, rayColliders, normals);


		return colliding;
	}


	void CollisionHandler::incrementHitboxID()
	{
		CollisionHandler::hitboxID++;
	}


	void CollisionHandler::recursiveSetID(HitBox * hitbox, int layer)
	{
		hitbox->setID(CollisionHandler::hitboxID);
		CollisionHandler::incrementHitboxID();
		if (hitbox->children != nullptr)
		{
			for (size_t i = 0; i < hitbox->children->size(); i++)
			{
				this->recursiveSetID(hitbox->children->operator[](i), layer);
			}
		}
		else // we have no children, we are leaf collider. Save ID
		{
			this->leafHitboxIDSaver->operator[](layer).push_back(hitbox->getID()); // first vector is layer, second vector contains all ID
		}
	}

	void CollisionHandler::deleteAllOldCollisions()
	{
		size_t sphereColliderSize = this->sphereColliders.size();
		size_t aabbColliderSize = this->aabbColliders.size();
		size_t obbColliderSize = this->obbColliders.size();
		size_t rayColliderSize = this->rayColliders.size();

		for (size_t i = 0; i < sphereColliderSize; i++) // sphere
		{
			this->sphereColliders[i]->clearCollisionIDs();
		}

		for (size_t i = 0; i < aabbColliderSize; i++) // aabb
		{
			aabbColliders[i]->clearCollisionIDs();
		}

		for (size_t i = 0; i < obbColliderSize; i++)
		{
			obbColliders[i]->clearCollisionIDs();
		}

		for (size_t i = 0; i < rayColliderSize; i++)
		{
			rayColliders[i]->clear();
		}
	}

	bool CollisionHandler::deleteHitbox(unsigned int ID)
	{
		size_t sphereColliderSize = this->sphereColliders.size();
		size_t aabbColliderSize = this->aabbColliders.size();
		size_t obbColliderSize = this->obbColliders.size();
		size_t rayColliderSize = this->rayColliders.size();
		size_t allColliderSize = this->allColliders.size();
		bool deleted = false;

		for (size_t i = 0; i < sphereColliderSize; i++) // check spheres
		{
			if (sphereColliders[i]->getID() == ID)
			{
				this->collisionLayers->deleteHitbox(ID);
				sphereColliders[i]->clearCollisionIDs();
				sphereColliders.erase(sphereColliders.begin() + i);
				deleted = true;
				i = sphereColliderSize;
			}
		}
		if (!deleted)
		{
			for (size_t i = 0; i < aabbColliderSize; i++)
			{
				if (aabbColliders[i]->getID() == ID)
				{
					this->collisionLayers->deleteHitbox(ID);
					aabbColliders[i]->clearCollisionIDs();
					aabbColliders.erase(aabbColliders.begin() + i);
					deleted = true;
					i = aabbColliderSize;
				}
			}
		}
		if (!deleted)
		{
			for (size_t i = 0; i < obbColliderSize; i++)
			{
				if (obbColliders[i]->getID() == ID)
				{
					this->collisionLayers->deleteHitbox(ID);
					obbColliders[i]->clearCollisionIDs();
					obbColliders.erase(obbColliders.begin() + i);
					deleted = true;
					i = obbColliderSize;
				}

			}
		}

		if (!deleted)
		{
			for (size_t i = 0; i < rayColliderSize; i++)
			{
				if (rayColliders[i]->getID() == ID)
				{
					this->collisionLayers->deleteHitbox(ID);
					rayColliders[i]->clearCollisionIDs();
					rayColliders.erase(rayColliders.begin() + i);
					deleted = true;
					i = rayColliderSize;
				}

			}
		}

		if (deleted) // if we found the hitbox and removed it, it means it is in the "allColliders" vector also, we delete it
		{
			for (size_t i = 0; i < allColliderSize; i++)
			{
				if (allColliders[i]->getID() == ID)
				{
					allColliders[i]->clearCollisionIDs();
					allColliders.erase(allColliders.begin() + i);
					i = allColliderSize;
				}
			}
		}

		return deleted;
	}

	void CollisionHandler::setEnabled(bool enabled)
	{
		this->enabled = enabled;
	}

	std::string CollisionHandler::getCollisionText()
	{
		std::stringstream text;
		int total = collisionChecker.getCollisionCounter();
		text << "Sphere to sphere checks: " << collisionChecker.getSphereCollisionCounter()
			<< "\nAABB to AABB Checks: " << collisionChecker.getAabbCollisionCounter()
			<< "\nSphere to AABB Checks: " << collisionChecker.getSphereToAabbCollisionCounter()
			<< "\nOBB to OBB Checks: " << collisionChecker.getObbCollisionCounter()
			<< "\nOBB to Sphere Checks: " << collisionChecker.getObbToSphereCollisionCounter()
			<< "\nOBB to AABB Checks: " << collisionChecker.getObbToAabbCollisionCounter()
			<< "\nRay to AABB Checks: " << collisionChecker.getRayToAabbCollisionCounter()
			<< "\nRay to OBB Checks: " << collisionChecker.getRayToObbCollisionCounter()
			<< "\nRay to Sphere Checks: " << collisionChecker.getRayToSphereCollisionCunter()
			<< "\nTotal Checks: " << total << "\n\n";

		return text.str();
	}

	CollisionLayers* CollisionHandler::getCollisionLayers() const
	{
		return collisionLayers;
	}

	std::vector<HitBox*>* CollisionHandler::getAllHitboxes()
	{
		return &allColliders;
	}

	std::vector<RayCollider*>* CollisionHandler::getRayColliders()
	{
		return &this->rayColliders;
	}

	const std::vector<int>& CollisionHandler::getAllIDsFromLayer(int layer)
	{
		return this->leafHitboxIDSaver->operator[](layer); // Every index in vector contains that layers hitbox ids - index 0 has all ids on layer 0
	}

	void CollisionHandler::setLayerCollisionMatrix(bool ** layerMatrix, unsigned int layerMatrixSize)
	{
		this->collisionLayers->setLayerCollisionMatrix(layerMatrix, layerMatrixSize);
	}

	void CollisionHandler::setLayerCollisionMatrix(int layer1, int layer2, bool canCollide)
	{
		this->collisionLayers->setLayerCollisionMatrix(layer1, layer2, canCollide);
	}

	void CollisionHandler::deactiveteAllHitboxes()
	{
		for (size_t i = 0; i < this->allColliders.size(); i++)
		{
			this->allColliders[i]->setActive(false);
		}
		for (size_t i = 0; i < this->rayColliders.size(); i++)
		{
			this->rayColliders[i]->setActive(false);
		}
	}

	void CollisionHandler::activeteAllHitboxes()
	{
		for (size_t i = 0; i < this->allColliders.size(); i++)
		{
			this->allColliders[i]->setActive(true);
		}
		for (size_t i = 0; i < this->rayColliders.size(); i++)
		{
			this->rayColliders[i]->setActive(true);
		}
	}

	void CollisionHandler::printCollisions()
	{
		int total = collisionChecker.getCollisionCounter();
		std::cout << "Sphere to sphere checks: " << collisionChecker.getSphereCollisionCounter()
			<< "\nAABB to AABB Checks: " << collisionChecker.getAabbCollisionCounter()
			<< "\nSphere to AABB Checks: " << collisionChecker.getSphereToAabbCollisionCounter()
			<< "\nOBB to OBB Checks: " << collisionChecker.getObbCollisionCounter()
			<< "\nOBB to Sphere Checks: " << collisionChecker.getObbToSphereCollisionCounter()
			<< "\nOBB to AABB Checks: " << collisionChecker.getObbToAabbCollisionCounter()
			<< "\nRay to AABB Checks: " << collisionChecker.getRayToAabbCollisionCounter()
			<< "\nRay to OBB Checks: " << collisionChecker.getRayToObbCollisionCounter()
			<< "\nRay to Sphere Checks: " << collisionChecker.getRayToSphereCollisionCunter()
			<< "\nTotal Checks: " << total << "\n\n";
	}

	void CollisionHandler::reset()
	{
		delete collisionLayers;
		sphereColliders.clear();
		aabbColliders.clear();
		obbColliders.clear();
		allColliders.clear();
		rayColliders.clear();
		delete leafHitboxIDSaver;

		collisionLayers = new CollisionLayers(layerAmount);
		leafHitboxIDSaver = new std::vector<std::vector<int>>();
		leafHitboxIDSaver->resize(layerAmount);

		this->setHardcodedSettings();
	}
	bool CollisionHandler::isHitboxCollidingWithLayer(HitBox* hitbox, int layer) 
	{
		std::vector<int>* hitboxCollisionIDs = hitbox->getIDCollisionsRef();
		std::vector<int> layerIDs = this->getAllIDsFromLayer(layer);

		bool collidingWithLayer = false;
		for (size_t i = 0; i < hitboxCollisionIDs->size() && !collidingWithLayer; i++) // for every id the hitbox is colliding with
		{
			for (size_t j = 0; j < layerIDs.size() && !collidingWithLayer; j++) // for every id on specific layer
			{
				if (hitboxCollisionIDs->operator[](i) == layerIDs[j]) // if hitbox have a collision with a ID on that layer
				{
					collidingWithLayer = true;
				}
			}
		}

		return collidingWithLayer;
	}
	void CollisionHandler::setHardcodedSettings()
	{
		const int ENEMY_LAYER = 0;
		const int PLAYER_LAYER = 1;
		const int SPELLS_LAYER = 2;
		const int STATIC_LAYER = 3;
		const int TRIGGER_LAYER = 4;
		for (int i = 0; i < this->layerAmount; i++) // no layer collide with itself
		{
			this->setLayerCollisionMatrix(i, i, false);
		}
		this->setLayerCollisionMatrix(STATIC_LAYER, TRIGGER_LAYER, false);
		this->setLayerCollisionMatrix(ENEMY_LAYER, TRIGGER_LAYER, false);
		//this->setLayerCollisionMatrix(SPELLS_LAYER, TRIGGER_LAYER, false);
	}
}