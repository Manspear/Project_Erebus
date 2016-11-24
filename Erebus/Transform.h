#pragma once
#include "BaseIncludes.h"


class Transform
{
public:
	Transform();
	~Transform();

	void move(glm::vec3 dir, const float &dt);
	glm::vec3 getPos();
private:
	glm::vec3 position;
	glm::vec3 lookDir;
	int worldIndex;
	float scale;
};

