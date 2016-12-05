#include "HitBox.h"



HitBox::HitBox()
{
	this->ID = -1;
	this->IDTransform = -1;
	this->IDCollisions.reserve(10);
}

HitBox::HitBox(unsigned int ID, unsigned int IDTransform)
{
	this->ID = ID;
	this->IDTransform = IDTransform;
	this->IDCollisions.reserve(10);
}


HitBox::~HitBox()
{
}

void HitBox::setIDTransform(unsigned int ID)
{
	this->IDTransform = ID;
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
