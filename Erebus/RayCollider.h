#pragma once
#include "glm\glm.hpp"
#include <vector>
#include "HitBox.h"
class RayCollider : public HitBox
{
public:
	RayCollider();
	RayCollider(glm::vec3 position, glm::vec3 direction);
	RayCollider(int IDTransform, glm::vec3 direction);
	~RayCollider();
	void clear();

	//getters
	const glm::vec3& getDirection() const;
	const glm::vec3& getPosition() const;
	const glm::vec3& getIntersectionPoint() const;
	virtual int getIDTransform() const override;
	int getID() const override;
	float hitdistance() const;
	virtual std::vector<int>* getIDCollisionsRef() override;

	//setters
	void setIDTransform(unsigned int ID);
	void setID(unsigned int ID);
	void setPosition(glm::vec3 position);
	void setDirection(glm::vec3 direction);
	void hit(glm::vec3 intersectionPoint, float hitDistance);

private:
	glm::vec3 direction, position, intersectionPoint;
	float hitDistance;
	int ID, IDTransform;
	const unsigned short RESERVE_COLLISIONS = 10;
	bool active;
	void clearCollisionIDs();
	void clearHitData();
	const int FLAG = 3;
};

