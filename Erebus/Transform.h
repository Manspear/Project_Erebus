#pragma once
#include "BaseIncludes.h"
#include "HeightMap.h"


class Transform
{
public:
	Transform();
	~Transform();

	void move(glm::vec3 dir, const float &dt);
	void setPos(glm::vec3 pos);
	void setLookDir(glm::vec3 dir);
	void setScale(glm::vec3 scale);
	void setScale(float s);
	glm::vec3 getPos();
	glm::vec3 getLookAt();
	glm::vec3 getRotation();
	glm::vec3 getScale();
	void setRotation(glm::vec3 rot);
	void setLookAt(glm::vec3 lookAt);
	void follow(glm::vec3 goTowards, float speed, const float &dt);

private:
	glm::vec3 position;
	glm::vec3 lookDir;
	glm::vec3 rotation;
	int worldIndex;
	glm::vec3 scale;
};

