#pragma once
#include "HitBox.h"
// DO NOT USE :D
class AABBSquareCollider : public HitBox
{
public:
	AABBSquareCollider();
	AABBSquareCollider(unsigned int IDTransform);
	AABBSquareCollider(unsigned int ID, unsigned int IDTransform, glm::vec3 pos, float halfSize);
	~AABBSquareCollider();

	virtual unsigned int getID() const override; // copy elision makes returning values fast? RVO - NRVO
	virtual unsigned int getIDTransform() const override;
	virtual std::vector<unsigned int>* getIDCollisionsRef() override;
	virtual void insertCollisionID(unsigned int collisionID) override;
	virtual void clearCollisionIDs() override;

	const glm::vec3* getPos();
	float getHalfsize() const ;

	void setPos(glm::vec3 pos);

private:
	glm::vec3 pos;
	float halfSize;
};

