#pragma once
#include "BaseIncludes.h"
#include "Model.h"
#include "Gear.h"
#include "Transform.h"

class Magic {
public:
	Transform* transform;
	//glm::vec3 position;
	//glm::vec3 direction;
	float scale;
	float speed;
	Model* model;
private:
public:
	Magic();
	~Magic();
	void spawn(glm::vec3 pos, glm::vec3 dir, float magicScale, float magicSpeed);
	bool update(float dt);
};