#pragma once
#include "AABBCollider.h"
#include "CollisionChecker.h"
#include "Frustum.h"

namespace Collisions
{
	class QuadTree
	{
	public:
		COLLISIONS_EXPORTS QuadTree();
		COLLISIONS_EXPORTS ~QuadTree();

		COLLISIONS_EXPORTS bool addModel();
		COLLISIONS_EXPORTS void generateQuadtree(unsigned int depth, glm::vec3 centerPosition, float width);

		//void draw(Debug* debugger);


	private:
		enum
		{
			TOP_LEFT_NODE,
			TOP_RIGHT_NODE,
			BOTTOM_LEFT_NODE,
			BOTTOM_RIGHT_NODE,
			NODE_AMOUNT

		};
		class Node
		{
			// COllider, transform, model, children
		public:
			AABBCollider* collider;
			Node* children[NODE_AMOUNT];
			Node(AABBCollider* collider)
			{
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

				if (this->children[0] != nullptr)
				{
					for (int i = 0; i < NODE_AMOUNT; i++)
					{
						delete this->children[i];
					}
				}
			}

		};

		Node* baseNode = nullptr;
		glm::vec3 position;
		float width;
		unsigned int depth;
		const int COLLIDER_HEIGHT = 500;


		//Helper functions
		void createChildren(Node* parent, glm::vec3 center, float width, unsigned int depth);
		//void reqursiveDraw(Node* node, Debug* debugger);
	};


}
