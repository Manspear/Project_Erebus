#pragma once
//#include "Model.h"
#include "Inputs.h"
#include "BaseIncludes.h"
#include "Weapon.h"
#include "RenderQueue.h"

#define TURBO_SPEED 13.0f
#define BASE_SPEED 8.0f

class Player {
public:
	glm::vec3 position;
	glm::vec3 rotation;
	glm::vec3 lookAt;
	glm::vec3 velocity;
	float scale;
	//Model* model;
	float speed;
	Weapon weperino;
	RenderQueue* renderqueue;

private:
	void calcWorldMat();
public:
	void update(Inputs* inpouts, float dt);
	Player();
	~Player();
};