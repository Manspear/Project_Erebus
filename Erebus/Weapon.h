#pragma once
#include "Magic.h"

class Weapon {
private:
	Magic* magics;
	int nrOfMagics;
	glm::vec3 offset;
	float shootDelay;
	float timeSinceLastShot;
public:
	Weapon();
	~Weapon();
	bool shoot();
};