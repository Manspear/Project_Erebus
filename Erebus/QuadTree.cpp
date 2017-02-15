#include "QuadTree.h"



QuadTree::QuadTree()
{
	this->width = 0;
	this->position = glm::vec3(0, 0, 0);
	this->depth = 0;
	this->baseNode = nullptr;
}


QuadTree::~QuadTree()
{
	if (this->baseNode != nullptr)
		delete this->baseNode;
}

bool QuadTree::addModel()
{
	return false;
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
}

void QuadTree::draw(Debug * debugger)
{
	this->reqursiveDraw(this->baseNode, debugger);
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

void QuadTree::reqursiveDraw(Node * node, Debug * debugger)
{
	if (node->children[0] != nullptr) // static quadtree, if it have one children it is sure to have all 4
	{
		for (int i = 0; i < NODE_AMOUNT; i++)
		{
			reqursiveDraw(node->children[i], debugger);
		}
	}
	debugger->drawAABB(node->collider->getMinPos(), node->collider->getMaxPos(), glm::vec3(1, 0, 0));
}
