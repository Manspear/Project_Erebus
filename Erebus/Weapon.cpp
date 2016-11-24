#include "Weapon.h"

Weapon::Weapon() {
	this->magics = new Magic[100];
	this->nrOfMagics = 0;
	this->offset = { 0,2,0 };
	this->shootDelay = 1;
	this->timeSinceLastShot = 0;
}
Weapon::~Weapon(){
	delete magics;
}

bool Weapon::shoot(glm::vec3 pos, glm::vec3 dir)
{
	bool result = false;
	if (timeSinceLastShot > shootDelay) {
		this->magics[nrOfMagics++].spawn(pos, dir, 2, 10);
		result = true;
	}
	return result;
}

void Weapon::update(float dt)
{
	for (size_t i = 0; i < nrOfMagics; i++)
	{
		this->magics[nrOfMagics].update(dt);
	}
}
