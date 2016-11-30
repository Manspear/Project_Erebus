#include "Magic.h"


Magic::Magic() {
	this->transform = new Transform();
	this->scale = 1.f;
	this->speed = 5.f;
}
Magic::~Magic() { }

void Magic::spawn(glm::vec3 pos, glm::vec3 dir, float magicScale, float magicSpeed)
{
	this->transform->setPos(pos);
	this->transform->setRotation(glm::vec3(rand(),rand(),rand()));
	this->transform->setLookDir(dir);
	this->transform->setScale(magicScale);
	this->speed = magicSpeed;
}

bool Magic::update(float dt)
{
	this->transform->move({speed,0,0}, dt);
	//this->transform->setPos({ rand() % 10, rand() % 10, rand() % 10 });
	return true;
}
