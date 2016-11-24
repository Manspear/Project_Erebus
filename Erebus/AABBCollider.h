#pragma once
#include "glm\glm.hpp"
class AABBCollider
{
public:
	AABBCollider();
	AABBCollider(glm::vec3 minPos, glm::vec3 maxPos);
	~AABBCollider();
	bool AabbToAabb(const AABBCollider* aabb);
	const glm::vec3* getMaxPos();
	const glm::vec3* getMinPos();


private:
	glm::vec3 minPos;
	glm::vec3 maxPos;
};

