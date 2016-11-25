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
}


HitBox::~HitBox()
{
}