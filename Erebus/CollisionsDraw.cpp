#include "CollisionsDraw.h"



CollisionsDraw::CollisionsDraw()
{
	this->debugger = nullptr;
	this->initializeColors();
	this->drawThisFrameBool = false;
	this->collisionHandler = nullptr;
}

CollisionsDraw::CollisionsDraw(Debug * debugger, Collisions::CollisionHandler* collisionHandler)
{
	this->debugger = debugger;
	this->initializeColors();
	this->drawThisFrameBool = false;
	this->collisionHandler = collisionHandler;
}


void CollisionsDraw::setDebugger(Debug * debugger)
{
	this->debugger = debugger;
}

void CollisionsDraw::setDefaultColor(const glm::vec3 & color)
{
	this->defaultColor = color;
}

void CollisionsDraw::setDeactivatedColor(const glm::vec3 & color)
{
	this->deactivatedColor = color;
}

void CollisionsDraw::drawThisFrame()
{
	this->drawThisFrameBool = true;
}

void CollisionsDraw::draw(Collisions::CollisionHandler * collisionHandler)
{
	using namespace Collisions;

	CollisionLayers* collisionLayers = collisionHandler->getCollisionLayers();

	std::vector<SphereCollider*>* tempSphereColliders;
	std::vector<AABBCollider*>* tempAabbColliders;
	std::vector<OBBCollider*>* tempObbColliders;
	std::vector<RayCollider*>* tempRayColliders;
	SphereCollider* tempSphere = nullptr;
	const glm::vec3 deactivatedColor(0, 0, 0);
	for (unsigned int i = 0; i < collisionLayers->getLayerMatrixSize(); i++) //rows of layer matrix
	{
		tempSphereColliders = collisionLayers->getSphereColliders(i);
		tempAabbColliders = collisionLayers->getAABBColliders(i);
		tempObbColliders = collisionLayers->getOBBColliders(i);
		tempRayColliders = collisionLayers->getRayColliders(i);

		for (size_t j = 0; j < tempSphereColliders->size(); j++) // each element in row
		{
			SphereCollider* temp = tempSphereColliders->operator[](j);
			if (temp->isActive())
				recursiveDraw(temp, this->colors[i]);
			else
				recursiveDraw(temp, deactivatedColor);
		}

		for (size_t j = 0; j < tempAabbColliders->size(); j++)
		{
			AABBCollider* temp = tempAabbColliders->operator[](j);
			if (temp->isActive())
				recursiveDraw(temp, this->colors[i]);
			else

				recursiveDraw(temp, deactivatedColor);
		}
		for (size_t j = 0; j < tempObbColliders->size(); j++)
		{
			OBBCollider* temp = tempObbColliders->operator[](j);
			if (temp->isActive())
				recursiveDraw(temp, this->colors[i]);
			else
				recursiveDraw(temp, deactivatedColor);
		}

		for (size_t j = 0; j < tempRayColliders->size(); j++)
		{
			RayCollider* temp = tempRayColliders->operator[](j);
			if (temp->isActive())
				debugger->drawRay(temp->getPosition(), temp->getDirection(), 1000000.0f, this->colors[i]);
			else
				debugger->drawRay(temp->getPosition(), temp->getDirection(), 1000000.0f, deactivatedColor);
		}
	}
	this->drawThisFrameBool = false;

}

void CollisionsDraw::draw()
{
	using namespace Collisions;
	if (this->collisionHandler != nullptr)
	{
		if (this->drawThisFrameBool)
		{
			CollisionLayers* collisionLayers = this->collisionHandler->getCollisionLayers();

			std::vector<SphereCollider*>* tempSphereColliders;
			std::vector<AABBCollider*>* tempAabbColliders;
			std::vector<OBBCollider*>* tempObbColliders;
			std::vector<RayCollider*>* tempRayColliders;
			SphereCollider* tempSphere = nullptr;
			const glm::vec3 deactivatedColor(0, 0, 0);
			for (unsigned int i = 0; i < collisionLayers->getLayerMatrixSize(); i++) //rows of layer matrix
			{
				tempSphereColliders = collisionLayers->getSphereColliders(i);
				tempAabbColliders = collisionLayers->getAABBColliders(i);
				tempObbColliders = collisionLayers->getOBBColliders(i);
				tempRayColliders = collisionLayers->getRayColliders(i);

				for (size_t j = 0; j < tempSphereColliders->size(); j++) // each element in row
				{
					SphereCollider* temp = tempSphereColliders->operator[](j);
					if (temp->isActive())
						recursiveDraw(temp, this->colors[i]);
					else
						recursiveDraw(temp, deactivatedColor);
				}

				for (size_t j = 0; j < tempAabbColliders->size(); j++)
				{
					AABBCollider* temp = tempAabbColliders->operator[](j);
					if (temp->isActive())
						recursiveDraw(temp, this->colors[i]);
					else

						recursiveDraw(temp, deactivatedColor);
				}
				for (size_t j = 0; j < tempObbColliders->size(); j++)
				{
					OBBCollider* temp = tempObbColliders->operator[](j);
					if (temp->isActive())
						recursiveDraw(temp, this->colors[i]);
					else
						recursiveDraw(temp, deactivatedColor);
				}

				for (size_t j = 0; j < tempRayColliders->size(); j++)
				{
					RayCollider* temp = tempRayColliders->operator[](j);
					if (temp->isActive())
						debugger->drawRay(temp->getPosition(), temp->getDirection(), 1000000.0f, this->colors[i]);
					else
						debugger->drawRay(temp->getPosition(), temp->getDirection(), 1000000.0f, deactivatedColor);
				}
			}
			this->drawThisFrameBool = false;
		}

	}
}

void CollisionsDraw::draw(Collisions::AABBCollider * aabb)
{
	this->recursiveDraw(aabb, this->defaultColor);
}

void CollisionsDraw::draw(Collisions::SphereCollider * sphere)
{
	this->recursiveDraw(sphere, this->defaultColor);
}

void CollisionsDraw::draw(Collisions::OBBCollider * obb)
{
	this->recursiveDraw(obb, this->defaultColor);
}

void CollisionsDraw::draw(Collisions::RayCollider * ray)
{
	this->recursiveDraw(ray, this->defaultColor);
}

void CollisionsDraw::draw(Collisions::QuadTree* quadtree)
{
	this->recursiveQuadtreeDraw(quadtree->getBaseNode());
}

void CollisionsDraw::recursiveDraw(Collisions::HitBox * hitbox, glm::vec3 color)
{
	using namespace Collisions;

	std::vector<HitBox*>* children = hitbox->getChildren();
	if (children != nullptr) // if we have any children call recursive draw on them also
	{
		for (size_t i = 0; i < children->size(); i++)
		{
			this->recursiveDraw(children->operator[](i), color);
		}
	}

	if (hitbox->isAabbCollider()) // draw the hitbox
	{
		AABBCollider* temp = static_cast<AABBCollider*>(hitbox);
		if (temp->isActive())
			debugger->drawAABB(temp->getMinPos(), temp->getMaxPos(), color);
		else
			debugger->drawAABB(temp->getMinPos(), temp->getMaxPos(), deactivatedColor);
	}
	else if (hitbox->isSphereCollider())
	{
		SphereCollider* temp = static_cast<SphereCollider*>(hitbox);
		if (temp->isActive())
			debugger->drawSphere(temp->getPos(), temp->getRadius(), color);
		else
			debugger->drawSphere(temp->getPos(), temp->getRadius(), deactivatedColor);
	}
	else if (hitbox->isObbCollider())
	{
		OBBCollider* temp = static_cast<OBBCollider*>(hitbox);
		if (temp->isActive())
			debugger->drawOBB(temp->getPos(), temp->getXAxis(), temp->getYAxis(), temp->getZAxis(), temp->getHalfLengths(), color);
		else
			debugger->drawOBB(temp->getPos(), temp->getXAxis(), temp->getYAxis(), temp->getZAxis(), temp->getHalfLengths(), deactivatedColor);
	}

}

void CollisionsDraw::initializeColors()
{
	this->defaultColor = glm::vec3(1, 0, 0);
	this->deactivatedColor = glm::vec3(0, 0, 0);
	int secondRootOfSize = 4;
	int counter = 0;
	float R, G, B;
	const int hardcoddedColorSize = 6;
	glm::vec3 hardCodedColors[hardcoddedColorSize];
	hardCodedColors[0] = glm::vec3(1, 0, 0);
	hardCodedColors[1] = glm::vec3(0, 1, 0);
	hardCodedColors[2] = glm::vec3(0, 0, 1);
	hardCodedColors[3] = glm::vec3(1, 1, 0);
	hardCodedColors[4] = glm::vec3(1, 0, 1);
	hardCodedColors[5] = glm::vec3(0, 1, 1);
	for (size_t i = 0; i < secondRootOfSize; i++)
	{
		R = (float)i / secondRootOfSize;
		for (size_t j = 0; j < secondRootOfSize; j++)
		{
			G = (float)j / secondRootOfSize;
			for (size_t k = 0; k < secondRootOfSize; k++)
			{
				B = (float)k / secondRootOfSize;
				this->colors[counter++] = glm::vec3(R, G, B);
			}
		}
	}
	for (size_t i = 0; i < hardcoddedColorSize; i++)
	{
		this->colors[i] = hardCodedColors[i];
	}
}

void CollisionsDraw::recursiveQuadtreeDraw(quadtreeNode * node)
{
	if (node->children[0] != nullptr) // static quadtree, if it have one children it is sure to have all 4
	{
		for (int i = 0; i < Collisions::QuadTree::QUADTREE_NODE_AMOUNT; i++)
		{
			recursiveQuadtreeDraw(node->children[i]);
		}
	}
	debugger->drawAABB(node->collider->getMinPos(), node->collider->getMaxPos(), glm::vec3(1, 0, 0));
}

CollisionsDraw::~CollisionsDraw()
{
}
