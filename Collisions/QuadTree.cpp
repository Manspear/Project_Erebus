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
		this->allDynamicModels = new std::vector<ModelHitboxCombiner*>();
		this->modelInstancesInFrustum = new std::vector<ModelInstance>();
		this->uniqueDynamicModelHitboxCombiners = new std::vector<ModelHitboxCombiner*>();
	}


	QuadTree::~QuadTree()
	{
		if (this->baseNode != nullptr)
			delete this->baseNode;
		if (this->hitNodeSave != nullptr)
			delete[] this->hitNodeSave;
		if(this->leafNodes != nullptr)
			delete[] this->leafNodes;
		if (this->allDynamicModels != nullptr)
		{
			for (size_t i = 0; i < allDynamicModels->size(); i++)
			{
				delete this->allDynamicModels->operator[](i);
			}
			delete this->allDynamicModels;
		}
		if (this->tempDynamicHitboxes != nullptr)
		{
			for (size_t i = 0; i < this->tempDynamicHitboxes->size(); i++)
			{
				delete this->tempDynamicHitboxes->operator[](i);
			}
			delete this->tempDynamicHitboxes;
		}

		if (this->modelInstancesInFrustum != nullptr)
			delete this->modelInstancesInFrustum;
		if (this->uniqueDynamicModelHitboxCombiners != nullptr)
			delete this->uniqueDynamicModelHitboxCombiners;

	}

	bool QuadTree::addStaticModels(std::vector<Gear::ModelInstance>* models)
	{
		models->size();
		return false;
	}

	bool QuadTree::addDynamicModels(std::vector<Gear::ModelInstance>* models)
	{
		this->resetDynamicModelsInNodes();
		this->tempDynamicModelInstance = models; // save modelInstances
		this->resetAllTemporaryData();

		for (size_t i = 0; i < models->size(); i++) // for every type of model
		{
//			models->at(i).setActiveTransforms(0);
			ModelAsset* tempModelAsset = models->at(i).getAsset(); // get model asset

			for (size_t j = 0; j < models->at(i).getActiveTransforms(); j++) // for every model that uses that asset
			{
				TransformStruct* tempModelTransform = models->at(i).getTransform(j);
				AABBCollider* modelCollider = new AABBCollider(tempModelAsset->getMinPosition(), tempModelAsset->getMaxPosition(), tempModelTransform->pos);
				
				if (this->collisionChecker.collisionCheck(this->baseNode->collider, modelCollider)) // if the model is colliding with the quadtree
				{
					//this->addHitboxToQuadtree(this->baseNode, modelCollider);
					ModelHitboxCombiner* tempCombiner = new ModelHitboxCombiner(modelCollider, tempModelAsset, tempModelTransform);
					this->allDynamicModels->push_back(tempCombiner);
					this->addDynamicHitboxToQuadtree(this->baseNode,tempCombiner);
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

	std::vector<ModelInstance>* QuadTree::frustumCollision()
	{
		int derpyy = 0, derpyy2 = 0, derpy3 = 0;
		if (this->frustum != nullptr)
		{
			this->resethitNodeSave();
			this->frustumNodeHitAmount = 0;
			this->modelInstancesInFrustum->clear();
			this->uniqueDynamicModelHitboxCombiners->clear();

			this->recursiveFrustumCollision(this->baseNode);
			
			for (size_t i = 0; i < this->frustumNodeHitAmount; i++) // for all the nodes that hit the frustum
			{
				Node* currentNode = this->hitNodeSave[i];

				for (size_t j = 0; j < currentNode->dynamicModels->size(); j++)
				{
					this->addModelToModelInstances(currentNode->dynamicModels->at(j), this->modelInstancesInFrustum); // save models that are within the nodes we hit
				}
			}

		}

		if (this->modelInstancesInFrustum->size() > 0)
		{
			int spdfpsdpfspdfp = 45;
		}

		//std::cout << "You are getting: " << derpyy + derpyy2 << " amount of nodes from quadtree\n";
		//std::cout << "Nodes with dynamic models: " << derpy3 << std::endl;

		return this->modelInstancesInFrustum;
	}

	void QuadTree::clearDynamicModels()
	{
		if (this->allDynamicModels != nullptr)
		{
			for (size_t i = 0; i < this->allDynamicModels->size(); i++)
			{
				delete this->allDynamicModels->operator[](i);
			}
			this->allDynamicModels->clear();
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

	void QuadTree::addDynamicHitboxToQuadtree(Node * parent, ModelHitboxCombiner * model)
	{
		AABBCollider* childCollider = model->collider;
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
				this->addDynamicHitboxToQuadtree(topLeftChild, model);
			if (topRightCollision)
				this->addDynamicHitboxToQuadtree(topRightChild, model);
			if (bottomLeftCollision)
				this->addDynamicHitboxToQuadtree(bottomLeftChild, model);
			if (bottomRightCollision)
				this->addDynamicHitboxToQuadtree(bottomRightChild, model);
		}

		else // if we dont have children, we are a leafnode and we insert hitbox into ourself
		{
			parent->dynamicModels->push_back(model);
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

	void QuadTree::addModelToModelInstances(ModelHitboxCombiner* model, std::vector<ModelInstance>* modelInstances)
	{
		// Check if unique
		// Check if any modelInstance have the same asset as you
		// If the same asset exist, insert your transform there
		// if it does not exists, create new modelInstance with that asset and add transform
		bool unique = this->uniqueModelHitboxCombiner(model);
		bool done = false;
		glm::mat4 matrix;
		if (unique)
		{
			for (size_t i = 0; i < modelInstances->size() && !done; i++)
			{
				ModelInstance& tempModelInstance = modelInstances->operator[](i);
				if (tempModelInstance.getAsset() == model->asset) // are they pointing at the same asset?
				{
					tempModelInstance.incrActiveTransforms();
					//tempModelInstance.addStaticInstance(*model->transform, matrix);
					
					done = true;
				}
			}
			if (!done) // if we didnt find a modelInstance with correct modelAsset, create a new one
			{
				ModelInstance tempModelInstance;
				tempModelInstance.setAsset(model->asset);
				//tempModelInstance.addStaticInstance(*model->transform, matrix);
				modelInstances->push_back(tempModelInstance);
			}
		}

	}

	void QuadTree::resetAllTemporaryData()
	{
		this->clearDynamicModels(); // resetting from last frame
		
		for (size_t i = 0; i < this->tempDynamicHitboxes->size(); i++)
		{
			delete this->tempDynamicHitboxes->operator[](i);
		}
		this->tempDynamicHitboxes->clear();
	}

	inline void QuadTree::resethitNodeSave()
	{
		for (size_t i = 0; i < this->frustumNodeHitAmount; i++)
		{
			this->hitNodeSave[i] = nullptr;
		}
	}

	inline void QuadTree::resetDynamicModelsInNodes()
	{
		for (size_t i = 0; i < this->leafNodeAmount; i++)
		{	
			this->leafNodes[i]->resetDynamic();
		}
	}
	bool QuadTree::uniqueModelHitboxCombiner(ModelHitboxCombiner * model)
	{
		bool unique = true;
		for (size_t i = 0; i < this->uniqueDynamicModelHitboxCombiners->size(); i++)
		{
			if (model == uniqueDynamicModelHitboxCombiners->operator[](i))
				unique = false;
		}
		if (unique)
			this->uniqueDynamicModelHitboxCombiners->push_back(model);

		return unique;
	}
}