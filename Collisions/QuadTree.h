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

		COLLISIONS_EXPORTS bool addStaticModels(std::vector<Gear::ModelInstance>* models);
		COLLISIONS_EXPORTS void addDynamicModels(std::vector<Gear::ModelInstance>* models);
		COLLISIONS_EXPORTS void addAnimatedModels(std::vector<Gear::ModelInstance>* animatedModels);
		COLLISIONS_EXPORTS void generateQuadtree(unsigned int depth, glm::vec3 centerPosition, float width);
		COLLISIONS_EXPORTS void clearDynamicModels();
		COLLISIONS_EXPORTS std::vector<ModelInstance>* frustumCollision();
		COLLISIONS_EXPORTS void clearQuadtree();

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
			int index;
			ModelHitboxCombiner(AABBCollider* collider, ModelAsset* asset, int index)
			{
				this->collider = collider;
				this->asset = asset;
				this->index = index;
			}
			~ModelHitboxCombiner()
			{

			}
		};
	public:
		COLLISIONS_EXPORTS class Node
		{
			// COllider, transform, model, children
		public:
			AABBCollider* collider;
			Node* children[NODE_AMOUNT];
			std::vector<ModelHitboxCombiner*>* dynamicModels;
			std::vector<ModelHitboxCombiner*>* animatedModels;
			Node(AABBCollider* collider)
			{
				this->dynamicModels = new std::vector<ModelHitboxCombiner*>();
				this->animatedModels = new std::vector<ModelHitboxCombiner*>();
				this->collider = collider;
				for (int i = 0; i < NODE_AMOUNT; i++)
				{
					children[i] = nullptr;
				}
			}
			~Node()
			{
				delete this->dynamicModels;
				delete this->animatedModels;

				if (this->children[0] != nullptr)
				{
					for (int i = 0; i < NODE_AMOUNT; i++)
					{
						delete this->children[i];
					}
				}
				delete this->collider;
			}

			void resetDynamicModels()
			{
				this->dynamicModels->clear(); // The quadtree deletes dynamic colider pointers
			}
			void resetAnimatedModels()
			{
				this->animatedModels->clear();
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
		std::vector<Gear::ModelInstance>* dynamicModelInstances;
		std::vector<Gear::ModelInstance>* animatedModels;
		std::vector<ModelHitboxCombiner*>* allCombiners;
		std::vector<ModelHitboxCombiner*>* uniqueDynamicModelHitboxCombiners;
	public:
		std::vector<ModelInstance>* modelInstancesInFrustum;
	private:


		//Helper functions
		void createChildren(Node* parent, glm::vec3 center, float width, unsigned int depth);
		void addDynamicModelsToQuadtree(Node* parent, ModelHitboxCombiner* model);
		void addAnimatedHitboxToQuadtree(Node* parent, ModelHitboxCombiner* model);
		void recursiveFrustumCollision(Node* parent);
		void addModelToModelInstances(ModelHitboxCombiner* model, std::vector<ModelInstance>* modelInstances);
		void resetAllTemporaryData();
		inline void resethitNodeSave();
		inline void resetDynamicAndAnimatedModelsInNodes();
		bool uniqueModelHitboxCombiner(ModelHitboxCombiner* model);
		void setAllModelsToCulled();
	};


}
