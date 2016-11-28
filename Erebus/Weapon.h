#pragma once
#include "Magic.h"

class Weapon {
public:
	Magic* magics;
	int nrOfMagics;
	glm::vec3 offset;
	float shootDelay;
	float timeSinceLastShot;
	std::vector<RenderQueueElement*>* fml;
private:
public:
	Weapon();
	~Weapon();
	bool shoot(glm::vec3 pos, glm::vec3 dir);
	void update(float dt);
	//void draw();
};