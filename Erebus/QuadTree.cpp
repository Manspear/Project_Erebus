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
	this->baseNode = new Node();
}
