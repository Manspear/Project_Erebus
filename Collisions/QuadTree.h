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
		static const int QUADTREE_CHILDREN_AMOUNT = 4;
		COLLISIONS_EXPORTS QuadTree();
		COLLISIONS_EXPORTS ~QuadTree();

		COLLISIONS_EXPORTS bool addStaticModels(std::vector<Gear::ModelInstance>* models);
		COLLISIONS_EXPORTS void addDynamicModels(std::vector<Gear::ModelInstance>* models);
		COLLISIONS_EXPORTS void addAnimatedModels(std::vector<Gear::ModelInstance>* animatedModels);
		COLLISIONS_EXPORTS void generateQuadtree(unsigned int depth, glm::vec3 centerPosition, float width);
		COLLISIONS_EXPORTS void clearModelHitboxCombiners();
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
				delete collider;
			}
		};
	public:
		COLLISIONS_EXPORTS class QuadTreeNode
		{
		public:
			AABBCollider* collider;
			QuadTreeNode* children[NODE_AMOUNT];
			std::vector<ModelHitboxCombiner*>* dynamicModels;
			std::vector<ModelHitboxCombiner*>* animatedModels;
			QuadTreeNode(AABBCollider* collider)
			{
				this->dynamicModels = nullptr;
				this->animatedModels = nullptr;
				this->collider = collider;
				for (int i = 0; i < NODE_AMOUNT; i++)
				{
					children[i] = nullptr;
				}
			}
			~QuadTreeNode()
			{
				if(this->dynamicModels != nullptr)
					delete this->dynamicModels;
				if(this->animatedModels != nullptr)
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

			void addDynamicModelCombiner(ModelHitboxCombiner* modelHitboxCombiner)
			{
				if(this->dynamicModels == nullptr)
					this->dynamicModels = new std::vector<ModelHitboxCombiner*>();
				this->dynamicModels->push_back(modelHitboxCombiner);
			}

			void addAnimatedModelCombiner(ModelHitboxCombiner* modelHitboxCombiner)
			{
				if(this->animatedModels == nullptr)
					this->animatedModels = new std::vector<ModelHitboxCombiner*>();
				this->animatedModels->push_back(modelHitboxCombiner);
			}

			void resetDynamicModels()
			{
				if(this->dynamicModels != nullptr)
					this->dynamicModels->clear(); // The quadtree deletes pointers
			}
			void resetAnimatedModels()
			{
				if(this->animatedModels != nullptr)
					this->animatedModels->clear();
			}

			int getDynamicModelAmount()
			{
				if (this->dynamicModels == nullptr)
					return 0;
				else
					return this->dynamicModels->size();
			}

			int getAnimatedModelAmount()
			{
				if (this->animatedModels == nullptr)
					return 0;
				else
					return this->animatedModels->size();
			}
		};
		//getters
		COLLISIONS_EXPORTS QuadTreeNode* getBaseNode();
		//Returns the amount of nodes that we have frustum collisions with
		COLLISIONS_EXPORTS int getNodeCollisionAmount();
		//Returns how many leaf nodes are in the quadtree
		COLLISIONS_EXPORTS int getLeafNodeAmount();
	private:
		QuadTreeNode* baseNode = nullptr;
		glm::vec3 position;
		float width;
		unsigned int depth;
		const int COLLIDER_HEIGHT = 300;
		int leafNodeAmount, frustumNodeHitAmount, leafNodeCounter;
		CollisionChecker collisionChecker;
		Frustum* frustum;
		QuadTreeNode** hitNodeSave;
		QuadTreeNode** leafNodes;
		std::vector<Gear::ModelInstance>* dynamicModelInstances;
		std::vector<Gear::ModelInstance>* animatedModels;
		std::vector<ModelHitboxCombiner*>* allCombiners;
		std::vector<ModelHitboxCombiner*>* uniqueDynamicModelHitboxCombiners;
		std::vector<ModelInstance>* modelInstancesInFrustum;

		//Helper functions
		void createChildren(QuadTreeNode* parent, glm::vec3 center, float width, unsigned int depth);
		void addDynamicModelsToQuadtree(QuadTreeNode* parent, ModelHitboxCombiner* model);
		void addAnimatedHitboxToQuadtree(QuadTreeNode* parent, ModelHitboxCombiner* model);
		void recursiveFrustumCollision(QuadTreeNode* parent);
		void addModelToModelInstances(ModelHitboxCombiner* model, std::vector<ModelInstance>* modelInstances);
		inline void resethitNodeSave();
		inline void resetDynamicAndAnimatedModelsInNodes();
		bool isUniqueModelHitboxCombiner(ModelHitboxCombiner* model);
		void setAllModelsToCulled();
	};


}
