#include "HitBox.h"



HitBox::HitBox()
{
	this->ID = -1;
	this->IDTransform = -1;
	this->IDCollisions.reserve(RESERVE_COLLISIONS);
}

HitBox::HitBox(unsigned int ID, int IDTransform)
{
	this->ID = ID;
	this->IDTransform = IDTransform;
	this->IDCollisions.reserve(RESERVE_COLLISIONS);
}

HitBox::HitBox(int IDTransform)
{
	this->ID = -1;
	this->IDTransform = IDTransform;
	this->IDCollisions.reserve(RESERVE_COLLISIONS);
}


HitBox::~HitBox()
{
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
