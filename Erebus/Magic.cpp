#include "Magic.h"


Magic::Magic() {
	this->position = {0,0,0};
	this->direction = {0,0,1};
	this->scale = 1;
	this->speed = 5;
}
Magic::~Magic() { }

void Magic::spawn(glm::vec3 pos, glm::vec3 dir, float magicScale, float magicSpeed)
{
	this->position = pos;
	this->direction = dir;
	this->scale = magicScale;
	this->speed = magicSpeed;
}
