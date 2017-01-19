#include "HitBox.h"



HitBox::HitBox()
{
	this->ID = -1;
	this->IDTransform = -1;
	this->IDCollisions.reserve(RESERVE_COLLISIONS);
	this->active = true;
	this->typeFlag = -1;
	this->children = nullptr;
}

HitBox::HitBox(unsigned int ID, int IDTransform)
{
	this->ID = ID;
	this->IDTransform = IDTransform;
	this->IDCollisions.reserve(RESERVE_COLLISIONS);
	this->active = true;
	this->typeFlag = -1;
	this->children = nullptr;
}

HitBox::HitBox(int IDTransform)
{
	this->ID = -1;
	this->IDTransform = IDTransform;
	this->IDCollisions.reserve(RESERVE_COLLISIONS);
	this->active = true;
	this->typeFlag = -1;
	this->children = nullptr;
}


HitBox::~HitBox()
{
	if(children != nullptr)
		delete this->children;
}

void HitBox::setPos(glm::vec3 pos)
{
	this->pos = pos;
	if (this->children != nullptr) // if we have any children update their position
	{
		for (size_t i = 0; i < this->children->size(); i++)
		{
			this->children->at(i)->pos = this->pos + this->children->at(i)->localPos;
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
	bool collision = false;
	if( this->IDCollisions.size() > 0 )
		collision = true;

	return collision;
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

void HitBox::addChild(HitBox * child)
{
	if (children == nullptr)
		children = new std::vector<HitBox*>();
	child->pos = this->pos + child->localPos;
	children->push_back(child);
}

std::vector<HitBox*>* HitBox::getChildren()
{
	return this->children;
}
