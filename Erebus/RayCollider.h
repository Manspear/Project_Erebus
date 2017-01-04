#pragma once
#include "glm\glm.hpp"
class RayCollider
{
public:
	RayCollider();
	RayCollider(glm::vec3 position, glm::vec3 direction);
	~RayCollider();
	void setPosition(glm::vec3 position);
	void setDirection(glm::vec3 direction);
	void hit(glm::vec3 intersectionPoint, float hitDistance);

	//getters
	const glm::vec3& getDirection() const;
	const glm::vec3& getPosition() const;
	const glm::vec3& getIntersectionPoint() const;
	float hitdistance() const;
private:
	glm::vec3 direction, position, intersectionPoint;
	float hitDistance;
};

