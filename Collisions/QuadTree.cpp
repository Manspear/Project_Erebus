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
		this->leafNodeAmount = 0;
		this->frustumNodeHitAmount = 0;
		this->leafNodeCounter = 0;
		this->tempDynamicHitboxes = new std::vector<AABBCollider*>();
		this->tempDynamicModelInstance = nullptr;
	}


	QuadTree::~QuadTree()
	{
		if (this->baseNode != nullptr)
			delete this->baseNode;
		if (this->hitNodeSave != nullptr)
			delete[] this->hitNodeSave;
		if(this->leafNodes != nullptr)
			delete[] this->leafNodes;
		if (this->tempDynamicHitboxes != nullptr)
		{
			for (size_t i = 0; i < this->tempDynamicHitboxes->size(); i++)
			{
				delete this->tempDynamicHitboxes->operator[](i);
			}
			delete this->tempDynamicHitboxes;
		}

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

	bool QuadTree::addStaticModels(std::vector<Gear::ModelInstance>* models)
	{
		models->size();
		return true;
	}

	bool QuadTree::addDynamicModels(std::vector<Gear::ModelInstance>* models)
	{
		this->tempDynamicModelInstance = models;
		int instanceIndex = -1, modelTransformIndex = -1;
		for (size_t i = 0; i < models->size(); i++) // for every type of model
		{
			ModelAsset* tempModel = models->at(i).getAsset(); // get model asset
			instanceIndex = i;
			for (size_t j = 0; j < models->at(i).getActiveTransforms(); j++) // for every model that uses that asset
			{
				AABBCollider* modelCollider = new AABBCollider(tempModel->getMinPosition(), tempModel->getMaxPosition(), models->at(i).getTransform(j)->pos);
				if (this->collisionChecker.collisionCheck(this->baseNode->collider, modelCollider)) // if the model is colliding with the quadtree
				{
					modelTransformIndex = j;
					this->addHitboxToQuadtree(this->baseNode, modelCollider);
					tempDynamicHitboxes->push_back(modelCollider);
				}
					
				else
					delete modelCollider;
			}
			
		}

		return true;
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

		int nodes = NODE_AMOUNT;
		this->leafNodeAmount = pow(nodes, this->depth);
		this->hitNodeSave = new Node*[leafNodeAmount];
		this->leafNodes = new Node*[leafNodeAmount];

		createChildren(this->baseNode, this->position, halWidth, this->depth);
	}

	void QuadTree::frustumCollision()
	{
		int derpyy = 0, derpyy2 = 0;
		if (this->frustum != nullptr)
		{
			this->resethitNodeSave();
			this->frustumNodeHitAmount = 0;
			this->recursiveFrustumCollision(this->baseNode);
			//std::cout << this->frustumNodeHitAmount << std::endl;
			
			for (size_t i = 0; i < this->frustumNodeHitAmount; i++)
			{
				if (this->hitNodeSave[i]->staticChildColliders->size())
				{
					derpyy++;
				}

				if (this->hitNodeSave[i]->dynamicChildColliders->size())
				{
					derpyy2++;
				}
					
			}
		}
		std::cout << "You are getting: " << derpyy + derpyy2 << " amount of nodes from quadtree\n";
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
		return this->leafNodeAmount;
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
		else // we are leaf node
		{
			this->leafNodes[this->leafNodeCounter] = parent;
			this->leafNodeCounter++;
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
			parent->staticChildColliders->push_back(childCollider);
		}
		
	}
	void QuadTree::addDynamicHitboxToQuadtree(Node * parent, AABBCollider * childCollider)
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
			parent->dynamicChildColliders->push_back(childCollider);
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