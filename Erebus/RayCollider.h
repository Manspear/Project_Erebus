#pragma once
#include "glm\glm.hpp"
#include <vector>
class RayCollider
{
public:
	RayCollider();
	RayCollider(glm::vec3 position, glm::vec3 direction);
	RayCollider(int IDTransform, glm::vec3 direction);
	~RayCollider();

	void setPosition(glm::vec3 position);
	void setDirection(glm::vec3 direction);
	void hit(glm::vec3 intersectionPoint, float hitDistance);

	void insertCollisionID(unsigned int collisionID);
	void clearCollisionIDs();
	void clearHitData();

	//getters
	const glm::vec3& getDirection() const;
	const glm::vec3& getPosition() const;
	const glm::vec3& getIntersectionPoint() const;
	int getIDTransform() const;
	int getID() const;
	float hitdistance() const;
	bool checkCollision();
	bool isActive();

	//setters
	void setIDTransform(unsigned int ID);
	void setID(unsigned int ID);
	void setActive(bool active);
private:
	glm::vec3 direction, position, intersectionPoint;
	float hitDistance;
	int ID, IDTransform;
	std::vector<unsigned int> IDCollisions;
	const unsigned short RESERVE_COLLISIONS = 10;
	bool active;
};

