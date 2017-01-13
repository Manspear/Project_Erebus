#pragma once
#include "HitBox.h"
class AABBCollider : public HitBox
{
public:
	AABBCollider();
	AABBCollider(int IDTransform);
	AABBCollider(int IDTransform, glm::vec3 minPos, glm::vec3 maxPos);
	AABBCollider(glm::vec3 minPos, glm::vec3 maxPos, glm::vec3 centerPos);
	~AABBCollider();
	bool AabbToAabb(const AABBCollider* aabb);

	//getters
	const glm::vec3& getMaxPos() const;
	const glm::vec3& getMinPos() const;
	const glm::vec3& getCenterPos() const;

	//overrides
	virtual unsigned int getID() const override; // copy elision makes returning values fast? RVO - NRVO
	virtual int getIDTransform() const override;
	virtual std::vector<unsigned int>* getIDCollisionsRef() override;
	virtual void insertCollisionID(unsigned int collisionID) override;
	virtual void clearCollisionIDs() override;

	void setPos(glm::vec3 pos) override;
	void setMinPos(glm::vec3 minPos);
	void setMaxPos(glm::vec3 maxPos);


private:
	glm::vec3 minPos, minPosTotal;
	glm::vec3 maxPos, maxPosTotal;
	glm::vec3 centerPos;
};

