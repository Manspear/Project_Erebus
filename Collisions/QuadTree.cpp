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
		this->dynamicModelInstances = nullptr;
		this->animatedModels = nullptr;
		this->allCombiners = new std::vector<ModelHitboxCombiner*>();
		this->modelInstancesInFrustum = new std::vector<ModelInstance>();
		this->uniqueDynamicModelHitboxCombiners = new std::vector<ModelHitboxCombiner*>();
	}


	QuadTree::~QuadTree()
	{
		if (this->baseNode != nullptr)
			delete this->baseNode;
		if (this->hitNodeSave != nullptr)
			delete[] this->hitNodeSave;
		if (this->leafNodes != nullptr)
			delete[] this->leafNodes;
		if (this->allCombiners != nullptr)
		{
			for (size_t i = 0; i < allCombiners->size(); i++)
			{
				delete this->allCombiners->operator[](i);
			}
			delete this->allCombiners;
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

	void QuadTree::addDynamicModels(std::vector<Gear::ModelInstance>* models)
	{
		this->dynamicModelInstances = models; // save modelInstances

		for (size_t i = 0; i < models->size(); i++) // for every type of model
		{
			ModelAsset* tempModelAsset = models->at(i).getAsset(); // get model asset

			for (size_t j = 0; j < models->operator[](i).getTransforms()->size(); j++) // for every transform
			{
				if (!models->operator[](i).getVacant(j)) // if not vacant
				{
					TransformStruct* tempTransform = models->operator[](i).getTransform(j);


					if (tempTransform->active)
					{
						AABBCollider* modelCollider = new AABBCollider(tempModelAsset->getMinPosition() * tempTransform->scale, tempModelAsset->getMaxPosition() * tempTransform->scale, tempTransform->pos);

						if (this->collisionChecker.collisionCheck(this->baseNode->collider, modelCollider)) // if the model is colliding with the quadtree
						{
							ModelHitboxCombiner* tempCombiner = new ModelHitboxCombiner(modelCollider, tempModelAsset, j);
							this->allCombiners->push_back(tempCombiner); // save tempCombiner for deletion later
							this->addDynamicModelsToQuadtree(this->baseNode, tempCombiner);

						}

						else
							delete modelCollider;

					}
				}


			}
		}
	}

	void QuadTree::addAnimatedModels(std::vector<Gear::ModelInstance>* animatedModels)
	{
		this->animatedModels = animatedModels;

		for (size_t i = 0; i < animatedModels->size(); i++) // for every animated model
		{
			ModelAsset* tempModelAsset = animatedModels->at(i).getAsset(); // get model asset

			for (size_t j = 0; j < animatedModels->operator[](i).getTransforms()->size(); j++) // for every transform
			{
				if (!animatedModels->operator[](i).getVacant(j)) // if not vacant
				{
					TransformStruct* tempTransform = animatedModels->operator[](i).getTransform(j);

					if (tempTransform->active)
					{
						AABBCollider* modelCollider = new AABBCollider(tempModelAsset->getMinPosition() * tempTransform->scale, tempModelAsset->getMaxPosition() * tempTransform->scale, tempTransform->pos);

						if (this->collisionChecker.collisionCheck(this->baseNode->collider, modelCollider)) // if the model is colliding with the quadtree
						{
							ModelHitboxCombiner* tempCombiner = new ModelHitboxCombiner(modelCollider, tempModelAsset, j);
							this->allCombiners->push_back(tempCombiner); // save tempCombiner for deletion later
							this->addAnimatedHitboxToQuadtree(this->baseNode, tempCombiner);
						}
					}
				}


			}

		}
	}

	void QuadTree::generateQuadtree(unsigned int depth, glm::vec3 centerPosition, float width)
	{
		assert(depth > 0 && width > 0); // depth and width must be greater than 0


		this->width = width;
		this->position = centerPosition;
		this->depth = depth;
		float halfWidth = width / 2.0f;
		AABBCollider* baseCollider = new AABBCollider(glm::vec3(-halfWidth, -COLLIDER_HEIGHT, -halfWidth), glm::vec3(halfWidth, COLLIDER_HEIGHT, halfWidth), centerPosition);
		this->baseNode = new QuadTreeNode(baseCollider);

		float halWidth = width / 2.0f;

		int nodes = NODE_AMOUNT;
		this->leafNodeAmount = pow(nodes, this->depth);
		this->hitNodeSave = new QuadTreeNode*[leafNodeAmount];
		this->leafNodes = new QuadTreeNode*[leafNodeAmount];

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
			this->setAllModelsToCulled();

			this->recursiveFrustumCollision(this->baseNode);

			std::vector<int> indexSaves;
			for (size_t i = 0; i < this->frustumNodeHitAmount; i++) // for all the nodes that hit the frustum
			{
				QuadTreeNode* currentNode = this->hitNodeSave[i];

				for (size_t j = 0; j < currentNode->getDynamicModelAmount(); j++) // for all dynamic models in that node
				{
					for (size_t k = 0; k < this->dynamicModelInstances->size(); k++) // for every model instance
					{
						if (this->dynamicModelInstances->operator[](k).getAsset() == currentNode->dynamicModels->operator[](j)->asset) // we found asset in modelInstance list
						{

							this->dynamicModelInstances->operator[](k).setCulled(currentNode->dynamicModels->operator[](j)->index, false);
							indexSaves.push_back(j);
						}
					}
				}

				for (size_t j = 0; j < currentNode->getAnimatedModelAmount(); j++) // for all animted models in that node
				{
					for (size_t k = 0; k < this->animatedModels->size(); k++) // for every animated model
					{
						if (this->animatedModels->operator[](k).getAsset() == currentNode->animatedModels->operator[](j)->asset) // we found asset in animated models
						{
							this->animatedModels->operator[](k).setCulled(currentNode->animatedModels->operator[](j)->index, false);
						}

					}

				}
			}
		}

		return this->modelInstancesInFrustum;
	}

	void QuadTree::clearQuadtree()
	{
		this->resetDynamicAndAnimatedModelsInNodes();
		this->clearModelHitboxCombiners();
	}

	void QuadTree::clearModelHitboxCombiners()
	{
		if (this->allCombiners != nullptr)
		{
			for (size_t i = 0; i < this->allCombiners->size(); i++)
			{
				delete this->allCombiners->operator[](i);
			}
			this->allCombiners->clear();
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

	QuadTree::QuadTreeNode * QuadTree::getBaseNode()
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

	void QuadTree::createChildren(QuadTreeNode * parent, glm::vec3 center, float width, unsigned int depth)
	{
		if (depth > 0)
		{
			float halfWidth = width / 2.0f;
			glm::vec3 topLeftPosition = center + glm::vec3(-halfWidth, 0, halfWidth); //its like a 2d quadtree where Z is Y
			glm::vec3 topRightPosition = center + glm::vec3(halfWidth, 0, halfWidth);
			glm::vec3 bottomLeftPosition = center + glm::vec3(-halfWidth, 0, -halfWidth);
			glm::vec3 bottomRightPosition = center + glm::vec3(halfWidth, 0, -halfWidth);


			parent->children[TOP_LEFT_NODE] = new QuadTreeNode(new AABBCollider(glm::vec3(-halfWidth, -COLLIDER_HEIGHT, -halfWidth), glm::vec3(halfWidth, COLLIDER_HEIGHT, halfWidth), topLeftPosition));
			parent->children[TOP_RIGHT_NODE] = new QuadTreeNode(new AABBCollider(glm::vec3(-halfWidth, -COLLIDER_HEIGHT, -halfWidth), glm::vec3(halfWidth, COLLIDER_HEIGHT, halfWidth), topRightPosition));
			parent->children[BOTTOM_LEFT_NODE] = new QuadTreeNode(new AABBCollider(glm::vec3(-halfWidth, -COLLIDER_HEIGHT, -halfWidth), glm::vec3(halfWidth, COLLIDER_HEIGHT, halfWidth), bottomLeftPosition));
			parent->children[BOTTOM_RIGHT_NODE] = new QuadTreeNode(new AABBCollider(glm::vec3(-halfWidth, -COLLIDER_HEIGHT, -halfWidth), glm::vec3(halfWidth, COLLIDER_HEIGHT, halfWidth), bottomRightPosition));

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

	void QuadTree::addDynamicModelsToQuadtree(QuadTreeNode * parent, ModelHitboxCombiner * model)
	{
		AABBCollider* childCollider = model->collider;
		if (parent->children[0] != nullptr) // if we have children
		{
			QuadTreeNode* topLeftChild = parent->children[TOP_LEFT_NODE];
			QuadTreeNode* topRightChild = parent->children[TOP_RIGHT_NODE];
			QuadTreeNode* bottomLeftChild = parent->children[BOTTOM_LEFT_NODE];
			QuadTreeNode* bottomRightChild = parent->children[BOTTOM_RIGHT_NODE];


			bool topLeftCollision = this->collisionChecker.collisionCheck(topLeftChild->collider, childCollider);
			bool topRightCollision = this->collisionChecker.collisionCheck(topRightChild->collider, childCollider);
			bool bottomLeftCollision = this->collisionChecker.collisionCheck(bottomLeftChild->collider, childCollider);
			bool bottomRightCollision = this->collisionChecker.collisionCheck(bottomRightChild->collider, childCollider);

			if (topLeftCollision)
				this->addDynamicModelsToQuadtree(topLeftChild, model);
			if (topRightCollision)
				this->addDynamicModelsToQuadtree(topRightChild, model);
			if (bottomLeftCollision)
				this->addDynamicModelsToQuadtree(bottomLeftChild, model);
			if (bottomRightCollision)
				this->addDynamicModelsToQuadtree(bottomRightChild, model);
		}

		else // if we dont have children, we are a leafnode and we insert hitbox into ourself
		{
			parent->addDynamicModelCombiner(model);
		}
	}

	void QuadTree::addAnimatedHitboxToQuadtree(QuadTreeNode * parent, ModelHitboxCombiner * model)
	{
		AABBCollider* childCollider = model->collider;
		if (parent->children[0] != nullptr) // if we have children
		{
			QuadTreeNode* topLeftChild = parent->children[TOP_LEFT_NODE];
			QuadTreeNode* topRightChild = parent->children[TOP_RIGHT_NODE];
			QuadTreeNode* bottomLeftChild = parent->children[BOTTOM_LEFT_NODE];
			QuadTreeNode* bottomRightChild = parent->children[BOTTOM_RIGHT_NODE];


			bool topLeftCollision = this->collisionChecker.collisionCheck(topLeftChild->collider, childCollider);
			bool topRightCollision = this->collisionChecker.collisionCheck(topRightChild->collider, childCollider);
			bool bottomLeftCollision = this->collisionChecker.collisionCheck(bottomLeftChild->collider, childCollider);
			bool bottomRightCollision = this->collisionChecker.collisionCheck(bottomRightChild->collider, childCollider);

			if (topLeftCollision)
				this->addAnimatedHitboxToQuadtree(topLeftChild, model);
			if (topRightCollision)
				this->addAnimatedHitboxToQuadtree(topRightChild, model);
			if (bottomLeftCollision)
				this->addAnimatedHitboxToQuadtree(bottomLeftChild, model);
			if (bottomRightCollision)
				this->addAnimatedHitboxToQuadtree(bottomRightChild, model);
		}

		else // if we dont have children, we are a leafnode and we insert hitbox into ourself
		{
			parent->addAnimatedModelCombiner(model);
		}
	}

	void QuadTree::recursiveFrustumCollision(QuadTreeNode * parent)
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
		bool unique = this->isUniqueModelHitboxCombiner(model);
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

	inline void QuadTree::resethitNodeSave()
	{
		for (size_t i = 0; i < this->frustumNodeHitAmount; i++)
		{
			this->hitNodeSave[i] = nullptr;
		}
	}

	inline void QuadTree::resetDynamicAndAnimatedModelsInNodes()
	{
		for (size_t i = 0; i < this->leafNodeAmount; i++)
		{
			this->leafNodes[i]->resetDynamicModels();
			this->leafNodes[i]->resetAnimatedModels();
		}
	}
	bool QuadTree::isUniqueModelHitboxCombiner(ModelHitboxCombiner * model)
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
	void QuadTree::setAllModelsToCulled()
	{
		if (this->dynamicModelInstances != nullptr) // every dynamic model
		{
			for (size_t i = 0; i < this->dynamicModelInstances->size(); i++)
			{
				for (size_t j = 0; j < this->dynamicModelInstances->operator[](i).getTransforms()->size(); j++)
				{
					this->dynamicModelInstances->operator[](i).setCulled(j, true);
				}
			}
		}

		if (this->animatedModels != nullptr) // every animated model
		{
			for (size_t i = 0; i < this->animatedModels->size(); i++)
			{
				for (size_t j = 0; j < this->animatedModels->operator[](i).getTransforms()->size(); j++)
				{
					this->animatedModels->operator[](i).setCulled(j, true);
				}
			}
		}
	}

}