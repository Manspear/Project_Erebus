#pragma once
#include "BaseIncludes.h"


class Transform
{
public:
	Transform();
	~Transform();

	void move(glm::vec3 dir, const float &dt);
	glm::vec3 getPos();
	glm::vec3 getLookAt();
	glm::vec3 getRotation();
	void setRotation(glm::vec3 rot);
	void setLookAt(glm::vec3 lookAt);
	void follow(glm::vec3 goTowards, float speed, const float &dt);
private:
	glm::vec3 position;
	glm::vec3 lookDir;
	glm::vec3 rotation;
	int worldIndex;
	float scale;
};

