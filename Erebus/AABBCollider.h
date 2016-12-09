#pragma once
#include "HitBox.h"
class AABBCollider : public HitBox
{
public:
	AABBCollider();
	AABBCollider(unsigned int ID, int IDTransform, glm::vec3 minPos, glm::vec3 maxPos);
	AABBCollider(int IDTransform, glm::vec3 minPos, glm::vec3 maxPos);
	AABBCollider(unsigned int IDTransform);
	~AABBCollider();
	bool AabbToAabb(const AABBCollider* aabb);

	const glm::vec3& getMaxPos();
	const glm::vec3& getMinPos();

	//overrides
	virtual unsigned int getID() const override; // copy elision makes returning values fast? RVO - NRVO
	virtual unsigned int getIDTransform() const override;
	virtual std::vector<unsigned int>* getIDCollisionsRef() override;
	virtual void insertCollisionID(unsigned int collisionID) override;
	virtual void clearCollisionIDs() override;

	void setPos(glm::vec3 pos);
	void setMinPos(glm::vec3 minPos);
	void setMaxPos(glm::vec3 maxPos);


private:
	glm::vec3 minPos, minPosTotal;
	glm::vec3 maxPos, maxPosTotal;
	glm::vec3 centerPos;
};

