#include "QuadTree.h"

namespace Collisions
{

	QuadTree::QuadTree()
	{
		this->width = 0;
		this->position = glm::vec3(0, 0, 0);
		this->depth = 0;
		this->baseNode = nullptr;
		this->frustum = nullptr;
		this->hitNodeSave = nullptr;
		this->leafNodes = 0;
		this->frustumNodeHitAmount = 0;
	}


	QuadTree::~QuadTree()
	{
		if (this->baseNode != nullptr)
			delete this->baseNode;
		if (this->hitNodeSave != nullptr)
			delete[] this->hitNodeSave;
	}

	bool QuadTree::addModel(AABBCollider * childCollider, bool dynamic)
	{
		bool quadtreeCollision = this->collisionChecker.collisionCheck(this->baseNode->collider, childCollider); // if collider collides with quadtree at all

		if (quadtreeCollision)
		{
			this->addHitboxToQuadtree(this->baseNode, childCollider);
		}
		return quadtreeCollision;
	}

	void QuadTree::generateQuadtree(unsigned int depth, glm::vec3 centerPosition, float width)
	{
		assert(depth > 0 && width > 0); // depth and width must be greater than 0


		this->width = width;
		this->position = centerPosition;
		this->depth = depth;
		float halfWidth = width / 2.0f;
		AABBCollider* baseCollider = new AABBCollider(glm::vec3(-halfWidth, -COLLIDER_HEIGHT, -halfWidth), glm::vec3(halfWidth, COLLIDER_HEIGHT, halfWidth), centerPosition);
		this->baseNode = new Node(baseCollider);

		float halWidth = width / 2.0f;
		createChildren(this->baseNode, this->position, halWidth, this->depth);

		int nodes = NODE_AMOUNT;
		this->leafNodes = pow(nodes, this->depth);
		this->hitNodeSave = new Node*[leafNodes];
	}

	void QuadTree::frustumCollision()
	{
		if (this->frustum != nullptr)
		{
			this->resethitNodeSave();
			this->frustumNodeHitAmount = 0;
			this->recursiveFrustumCollision(this->baseNode);
			//std::cout << this->frustumNodeHitAmount << std::endl;
		}
	}

	void QuadTree::setFrustum(Frustum * frustum)
	{
		this->frustum = frustum;
	}

	//void QuadTree::draw(Debug * debugger)
	//{
	//	this->reqursiveDraw(this->baseNode, debugger);
	//}

	QuadTree::Node * QuadTree::getBaseNode()
	{
		return this->baseNode;
	}

	int QuadTree::getNodeCollisionAmount()
	{
		return this->frustumNodeHitAmount;
	}

	int QuadTree::getLeafNodeAmount()
	{
		return this->leafNodes;
	}

	void QuadTree::createChildren(Node * parent, glm::vec3 center, float width, unsigned int depth)
	{
		if (depth > 0)
		{
			float halfWidth = width / 2.0f;
			glm::vec3 topLeftPosition = center + glm::vec3(-halfWidth, 0, halfWidth); //its like a 2d quadtree where Z is Y
			glm::vec3 topRightPosition = center + glm::vec3(halfWidth, 0, halfWidth);
			glm::vec3 bottomLeftPosition = center + glm::vec3(-halfWidth, 0, -halfWidth);
			glm::vec3 bottomRightPosition = center + glm::vec3(halfWidth, 0, -halfWidth);


			parent->children[TOP_LEFT_NODE] = new Node(new AABBCollider(glm::vec3(-halfWidth, -COLLIDER_HEIGHT, -halfWidth), glm::vec3(halfWidth, COLLIDER_HEIGHT, halfWidth), topLeftPosition));
			parent->children[TOP_RIGHT_NODE] = new Node(new AABBCollider(glm::vec3(-halfWidth, -COLLIDER_HEIGHT, -halfWidth), glm::vec3(halfWidth, COLLIDER_HEIGHT, halfWidth), topRightPosition));
			parent->children[BOTTOM_LEFT_NODE] = new Node(new AABBCollider(glm::vec3(-halfWidth, -COLLIDER_HEIGHT, -halfWidth), glm::vec3(halfWidth, COLLIDER_HEIGHT, halfWidth), bottomLeftPosition));
			parent->children[BOTTOM_RIGHT_NODE] = new Node(new AABBCollider(glm::vec3(-halfWidth, -COLLIDER_HEIGHT, -halfWidth), glm::vec3(halfWidth, COLLIDER_HEIGHT, halfWidth), bottomRightPosition));

			float childrenWidth = halfWidth;
			int childrenDepth = depth - 1;

			this->createChildren(parent->children[TOP_LEFT_NODE], topLeftPosition, childrenWidth, childrenDepth);
			this->createChildren(parent->children[TOP_RIGHT_NODE], topRightPosition, childrenWidth, childrenDepth);
			this->createChildren(parent->children[BOTTOM_LEFT_NODE], bottomLeftPosition, childrenWidth, childrenDepth);
			this->createChildren(parent->children[BOTTOM_RIGHT_NODE], bottomRightPosition, childrenWidth, childrenDepth);
		}
	}

	void QuadTree::addHitboxToQuadtree(Node * parent, AABBCollider * childCollider)
	{
		if (parent->children[0] != nullptr) // if we have children
		{
			Node* topLeftChild = parent->children[TOP_LEFT_NODE];
			Node* topRightChild = parent->children[TOP_RIGHT_NODE];
			Node* bottomLeftChild = parent->children[BOTTOM_LEFT_NODE];
			Node* bottomRightChild = parent->children[BOTTOM_RIGHT_NODE];

			bool topLeftCollision = this->collisionChecker.collisionCheck(topLeftChild->collider, childCollider);
			bool topRightCollision = this->collisionChecker.collisionCheck(topRightChild->collider, childCollider);
			bool bottomLeftCollision = this->collisionChecker.collisionCheck(bottomLeftChild->collider, childCollider);
			bool bottomRightCollision = this->collisionChecker.collisionCheck(bottomRightChild->collider, childCollider);

			if (topLeftCollision)
				this->addHitboxToQuadtree(topLeftChild, childCollider);
			if (topRightCollision)
				this->addHitboxToQuadtree(topRightChild, childCollider);
			if (bottomLeftCollision)
				this->addHitboxToQuadtree(bottomLeftChild, childCollider);
			if (bottomRightCollision)
				this->addHitboxToQuadtree(bottomRightChild, childCollider);
		}

		else // if we dont have children, we are a leafnode and we insert hitbox into ourself
		{
			parent->allChildColliders->push_back(childCollider);
		}
		
	}
	void QuadTree::recursiveFrustumCollision(Node * parent)
	{
		bool collision = this->frustum->aabbCollisionOptimized(parent->collider);
		if (collision) // colliding with node
		{
			if (parent->children[0] != nullptr) 
			{
				this->recursiveFrustumCollision(parent->children[TOP_LEFT_NODE]);
				this->recursiveFrustumCollision(parent->children[TOP_RIGHT_NODE]);
				this->recursiveFrustumCollision(parent->children[BOTTOM_LEFT_NODE]);
				this->recursiveFrustumCollision(parent->children[BOTTOM_RIGHT_NODE]);
			}

			else // we are leaf node this means we have a hit
			{
				this->hitNodeSave[this->frustumNodeHitAmount] = parent;
				this->frustumNodeHitAmount++;
			}
		}
	}

	inline void QuadTree::resethitNodeSave()
	{
		for (size_t i = 0; i < this->frustumNodeHitAmount; i++)
		{
			this->hitNodeSave[i] = nullptr;
		}
	}
}