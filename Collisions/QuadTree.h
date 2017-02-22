#pragma once
#include "AABBCollider.h"
#include "CollisionChecker.h"
#include "Frustum.h"
#include "Gear.h"
namespace Collisions
{
	class QuadTree
	{
	public:
		static const int QUADTREE_NODE_AMOUNT = 4;
		COLLISIONS_EXPORTS QuadTree();
		COLLISIONS_EXPORTS ~QuadTree();

		COLLISIONS_EXPORTS bool addModel(AABBCollider * childCollider, bool dynamic = false);
		COLLISIONS_EXPORTS bool addStaticModels(std::vector<Gear::ModelInstance>* models);
		COLLISIONS_EXPORTS bool addDynamicModels(std::vector<Gear::ModelInstance>* models);
		COLLISIONS_EXPORTS void generateQuadtree(unsigned int depth, glm::vec3 centerPosition, float width);
		COLLISIONS_EXPORTS void frustumCollision();
		COLLISIONS_EXPORTS void clearDynamicModels();

		//setters
		COLLISIONS_EXPORTS void setFrustum(Frustum* frustum);


	private:
		enum
		{
			TOP_LEFT_NODE,
			TOP_RIGHT_NODE,
			BOTTOM_LEFT_NODE,
			BOTTOM_RIGHT_NODE,
			NODE_AMOUNT

		};
		struct ModelHitboxCombiner
		{
			AABBCollider* collider;
			ModelAsset* asset;
			TransformStruct* transform;
			ModelHitboxCombiner(AABBCollider* collider, ModelAsset* asset, TransformStruct* transform)
			{
				this->collider = collider;
				this->asset = asset;
				this->transform = transform;
			}
			~ModelHitboxCombiner()
			{
				delete this->collider; // this is the only component the combiner have responsibility to delete
			}
		};
	public:
		COLLISIONS_EXPORTS class Node
		{
			// COllider, transform, model, children
		public:
			AABBCollider* collider;
			Node* children[NODE_AMOUNT];
			std::vector<AABBCollider*>* staticChildColliders;
			std::vector<AABBCollider*>* dynamicChildColliders;
			std::vector<ModelHitboxCombiner*>* dynamicModels;
			Node(AABBCollider* collider)
			{
				this->staticChildColliders = new std::vector<AABBCollider*>();
				this->dynamicChildColliders = new std::vector<AABBCollider*>();
				this->dynamicModels = new std::vector<ModelHitboxCombiner*>();
				this->collider = collider;
				for (int i = 0; i < NODE_AMOUNT; i++)
				{
					children[i] = nullptr;
				}
			}
			~Node()
			{
				if (this->collider != nullptr)
					delete this->collider;

				delete this->staticChildColliders;
				delete this->dynamicChildColliders;
				delete this->dynamicModels;

				if (this->children[0] != nullptr)
				{
					for (int i = 0; i < NODE_AMOUNT; i++)
					{
						delete this->children[i];
					}
				}
			}

			void resetDynamicColliders()
			{
				this->dynamicChildColliders->clear(); // The quadtree deletes dynamic colider pointers
				this->dynamicModels->clear();
			}

		};

		//getters
		COLLISIONS_EXPORTS Node* getBaseNode();
		//Returns the amount of nodes that we have frustum collisions with
		COLLISIONS_EXPORTS int getNodeCollisionAmount();
		//Returns how many leaf nodes are in the quadtree
		COLLISIONS_EXPORTS int getLeafNodeAmount();
	private:

		Node* baseNode = nullptr;
		glm::vec3 position;
		float width;
		unsigned int depth;
		const int COLLIDER_HEIGHT = 300;
		int leafNodeAmount, frustumNodeHitAmount, leafNodeCounter;
		CollisionChecker collisionChecker;
		Frustum* frustum;
		Node** hitNodeSave;
		Node** leafNodes;
		std::vector<AABBCollider*>* tempDynamicHitboxes;
		std::vector<Gear::ModelInstance>* tempDynamicModelInstance;
		std::vector<ModelHitboxCombiner*>* allDynamicModels;


		//Helper functions
		void createChildren(Node* parent, glm::vec3 center, float width, unsigned int depth);
		void addHitboxToQuadtree(Node* parent, AABBCollider* childCollider);
		void addDynamicHitboxToQuadtree(Node* parent, AABBCollider* childCollider);
		void addDynamicHitboxToQuadtree(Node* parent, ModelHitboxCombiner* model);
		void recursiveFrustumCollision(Node* parent);
		void addModelToModelInstances(ModelHitboxCombiner* model, std::vector<ModelInstance>* modelInstances);
		inline void resethitNodeSave();
	};


}
