#include "Magic.h"


Magic::Magic() {
	this->transform = new Transform();
	this->scale = 1.f;
	this->speed = 5.f;
	this->model = new Model();
}
Magic::~Magic() { }

void Magic::spawn(glm::vec3 pos, glm::vec3 dir, float magicScale, float magicSpeed)
{
	this->transform->setPos(pos);
	this->transform->setLookDir(dir);
	this->transform->setScale(magicScale);
	this->speed = magicSpeed;
}

bool Magic::update(float dt)
{
	this->transform->move({1,0,0},dt);
	this->transform->setPos({ rand() % 10, rand() % 10, rand() % 10 });
	return true;
}
