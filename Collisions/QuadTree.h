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
		COLLISIONS_EXPORTS QuadTree();
		COLLISIONS_EXPORTS ~QuadTree();

		COLLISIONS_EXPORTS bool addModel(AABBCollider * childCollider, bool dynamic = false);
		COLLISIONS_EXPORTS bool addStaticModels(std::vector<Gear::ModelInstance>* models);
		COLLISIONS_EXPORTS bool addDynamicModels(std::vector<Gear::ModelInstance>* models);
		COLLISIONS_EXPORTS void generateQuadtree(unsigned int depth, glm::vec3 centerPosition, float width);
		COLLISIONS_EXPORTS void frustumCollision();
		static const int QUADTREE_NODE_AMOUNT = 4;

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
	public:
		COLLISIONS_EXPORTS class Node
		{
			// COllider, transform, model, children
		public:
			AABBCollider* collider;
			Node* children[NODE_AMOUNT];
			std::vector<AABBCollider*>* allChildColliders;
			std::vector<AABBCollider*>* staticChildColliders;
			std::vector<AABBCollider*>* dynamicChildColliders;
			Node(AABBCollider* collider)
			{
				this->allChildColliders = new std::vector<AABBCollider*>();
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
				if (this->allChildColliders != nullptr)
					delete allChildColliders;

				if (this->children[0] != nullptr)
				{
					for (int i = 0; i < NODE_AMOUNT; i++)
					{
						delete this->children[i];
					}
				}
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


		//Helper functions
		void createChildren(Node* parent, glm::vec3 center, float width, unsigned int depth);
		void addHitboxToQuadtree(Node* parent, AABBCollider* childCollider);
		void recursiveFrustumCollision(Node* parent);
		inline void resethitNodeSave();
	};


}
