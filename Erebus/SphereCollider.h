#pragma once
#include "AABBCollider.h"
#include "HitBox.h"
class SphereCollider : public HitBox
{
public:
	SphereCollider();
	SphereCollider(unsigned int ID, int IDTransform, glm::vec3 pos, float radius);
	SphereCollider(unsigned int ID, unsigned int IDTransform,float x, float y, float z, float radius);
	SphereCollider(int IDTransform, glm::vec3 pos, float radius);
	SphereCollider(unsigned int IDTransform, float x, float y, float z, float radius);
	SphereCollider(unsigned int IDTransform);
	~SphereCollider();
	bool sphereToSphereCollision(const SphereCollider * sphere);
	bool SphereToAabbCollision(AABBCollider * aabb);

	//overrides
	unsigned int getID() const override; // copy elision makes this fast? RVO - NRVO
	unsigned int getIDTransform() const override;
	std::vector<unsigned int>* getIDCollisionsRef() override;
	void insertCollisionID(unsigned int collisionID) override;
	void clearCollisionIDs() override;

	const glm::vec3& getPos();
	const float& getRadius();
	float getRadiusSquared() const;

	void setPos(glm::vec3 pos);
	void setRadius(float radius);

private:
	glm::vec3 pos;
	float radius;

	
	float SquaredDistancePointAabb(AABBCollider* aabb);
	float closestDistanceAabbToCenter(const float& point, const float aabbMin, const float aabbMax);

};
