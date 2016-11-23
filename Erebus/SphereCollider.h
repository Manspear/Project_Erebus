#pragma once
#include "BaseIncludes.h"
class SphereCollider
{
public:
	SphereCollider();
	SphereCollider(glm::vec3 pos, float radius);
	SphereCollider(float x, float y, float z, float radius);
	~SphereCollider();
	bool sphereToSphereCollision(const SphereCollider * sphere);

private:
	glm::vec3 pos;
	float radius;

};

