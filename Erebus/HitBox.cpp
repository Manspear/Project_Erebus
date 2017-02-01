#include "HitBox.h"



HitBox::HitBox()
{
	this->ID = -1;
	this->IDTransform = -1;
	this->IDCollisions.reserve(RESERVE_COLLISIONS);
	this->active = true;
	this->typeFlag = -1;
	this->children = nullptr;
	this->parent = nullptr;
	this->colliding = false;
}

HitBox::HitBox(unsigned int ID, int IDTransform)
{
	this->ID = ID;
	this->IDTransform = IDTransform;
	this->IDCollisions.reserve(RESERVE_COLLISIONS);
	this->active = true;
	this->typeFlag = -1;
	this->children = nullptr;
	this->parent = nullptr;
	this->colliding = false;
}

HitBox::HitBox(int IDTransform)
{
	this->ID = -1;
	this->IDTransform = IDTransform;
	this->IDCollisions.reserve(RESERVE_COLLISIONS);
	this->active = true;
	this->typeFlag = -1;
	this->children = nullptr;
	this->parent = nullptr;
	this->colliding = false;
}


HitBox::~HitBox()
{
	if (this->children != nullptr) // Recursive delete, wont work with lua because lua deletes all the children automatically
	{
		for (size_t i = 0; i < this->children->size(); i++)
		{
			delete this->children->at(i);
		}
		delete this->children;
	}

	//if (this->children != nullptr)
	//	delete this->children;
}

void HitBox::insertCollisionID(unsigned int collisionID)
{
	this->colliding = true;
	this->IDCollisions.push_back(collisionID);
}

void HitBox::clearCollisionIDs()
{
	this->colliding = false;
	this->IDCollisions.clear();

	if (this->children != nullptr) // if we have children
	{
		for (size_t i = 0; i < this->children->size(); i++)
		{
			this->children->operator[](i)->clearCollisionIDs();
		}
	}
}

void HitBox::setPos(glm::vec3 pos)
{
	this->pos = pos + this->localPos;
	if (this->children != nullptr) // if we have any children update their position
	{
		for (size_t i = 0; i < this->children->size(); i++)
		{
			//this->children->at(i)->pos = this->pos + this->children->at(i)->localPos;
			this->children->operator[](i)->update();
		}
	}
}

void HitBox::setIDTransform(unsigned int ID)
{
	this->IDTransform = ID;
}

void HitBox::setID(unsigned int ID)
{
	this->ID = ID;
}

bool HitBox::checkCollision()
{
	return this->colliding;
}

bool HitBox::checkSpecificCollision(unsigned int target)
{
	bool collision = false;
	for (int i = 0; i < IDCollisions.size(); i++)
	{
		if (IDCollisions.at(i) == target)
			collision = true;
	}
	return collision;
}

void HitBox::setActive(bool active)
{
	this->active = active;
}

bool HitBox::isActive()
{
	return this->active;
}

void HitBox::setTypeFlag(int flag)
{
	this->typeFlag = flag;
}

void HitBox::setLocalPos(glm::vec3 pos)
{
	this->localPos = pos;
	if (this->parent != nullptr)
		this->pos = this->parent->pos + this->localPos;
}

void HitBox::setCollision(bool colliding)
{
	this->colliding = colliding;
}

void HitBox::setAllParentCollision(bool colliding)
{
	if (this->parent != nullptr) // if we have a parent set the colliding bool
	{
		this->parent->colliding = colliding;
		this->parent->setAllParentCollision(colliding);
	}
		
}

bool HitBox::isSphereCollider()
{
	bool isSphere = false;
	if (this->typeFlag == 0)
		isSphere = true;
	return isSphere;
}

bool HitBox::isAabbCollider()
{
	bool isAabb = false;
	if (this->typeFlag == 1)
		isAabb = true;
	return isAabb;
}

bool HitBox::isObbCollider()
{
	bool isObb = false;
	if (this->typeFlag == 2)
		isObb = true;
	return isObb;
}

bool HitBox::isRayCollider()
{
	bool isRay = false;
	if (this->typeFlag == 3)
		isRay = true;
	return isRay;
}

void HitBox::addChild(HitBox * child)
{
	if (children == nullptr)
		children = new std::vector<HitBox*>();
	child->setPos(this->pos + child->localPos);
	child->parent = this;
	children->push_back(child);
}

std::vector<HitBox*>* HitBox::getChildren()
{
	return this->children;
}

void HitBox::update()
{
	if (this->parent != nullptr)
	{
		this->setPos(this->parent->pos + this->localPos);
	}
	if (this->children != nullptr)
	{
		for (size_t i = 0; i < this->children->size(); i++)
		{
			this->children->operator[](i)->update();
		}
	}
}
