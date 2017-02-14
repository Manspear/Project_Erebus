#pragma once
#include "AABBCollider.h"
#include "CollisionChecker.h"
#include "Frustum.h"
#include "RenderQueue.h"
#include "Transform.h"

class QuadTree
{
public:
	QuadTree();
	~QuadTree();

	bool addModel();
	void generateQuadtree(unsigned int depth, glm::vec3 centerPosition, float width);
	

private:
	enum
	{
		TOP_LEFT_NODE,
		TOP_RIGHT_NODE,
		BOTTOM_LEFT_NODE,
		BOTTOM_RIGHT_NODE,
		NODE_AMOUNT

	};
	struct Node
	{
		// COllider, transform, model, children
		AABBCollider* collider = nullptr;
		Node* children[NODE_AMOUNT];
		Node(AABBCollider* collider)
		{
			collider = collider;
		}

	};
	Node* baseNode = nullptr;
	glm::vec3 position;
	float width;
	unsigned int depth;
};

