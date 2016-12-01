#pragma once
#include "HitBox.h"
class AABBSquareCollider : public HitBox
{
public:
	AABBSquareCollider();
	AABBSquareCollider(unsigned int ID, unsigned int IDTransform, glm::vec3 pos, float halfSize);
	~AABBSquareCollider();

	virtual unsigned int getID() const override; // copy elision makes returning values fast? RVO - NRVO
	virtual unsigned int getIDTransform() const override;
	virtual std::vector<unsigned int>* getIDCollisionsRef() override;
	virtual void insertCollisionID(unsigned int collisionID) override;
	virtual void clearCollisionIDs() override;

private:
	glm::vec3 pos;
	float halfSize;
};

