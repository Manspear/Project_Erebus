#pragma once
#include "BaseIncludes.h"


class Transform
{
public:
	Transform();
	~Transform();

	void move(glm::vec3 dir, const float &dt);
	void setPos(glm::vec3 pos);
	void setLookDir(glm::vec3 dir);
	void setScale(float s);
	glm::vec3 getPos();
private:
	glm::vec3 position;
	glm::vec3 lookDir;
	int worldIndex;
	float scale;
};

