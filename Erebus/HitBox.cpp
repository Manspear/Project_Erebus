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

	if (this->IDCollisions.size() > 0)
	{
		//BUG: Why is the list full of 0's?
		if( IDCollisions.size() > 1 || IDCollisions[0] != ID )
			collision = true;
	}
	return collision;
}
